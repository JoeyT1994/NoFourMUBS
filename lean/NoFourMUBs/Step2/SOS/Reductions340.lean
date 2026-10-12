import NoFourMUBs.Step2.SOS.Canonical208
import NoFourMUBs.Step2.SOS.Canonical209
import NoFourMUBs.Step2.SOS.Canonical235
import NoFourMUBs.Step2.SOS.Canonical236
import NoFourMUBs.Step2.SOS.Canonical238
import NoFourMUBs.Step2.SOS.Canonical263
import NoFourMUBs.Step2.SOS.Canonical264
import NoFourMUBs.Step2.SOS.Canonical285
import NoFourMUBs.Step2.SOS.Canonical286
import NoFourMUBs.Step2.SOS.Canonical303
import NoFourMUBs.Step2.SOS.Canonical313
import NoFourMUBs.Step2.SOS.Canonical315
import NoFourMUBs.Step2.SOS.Canonical383
import NoFourMUBs.Step2.SOS.Canonical385
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes20
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.OldProjections006
import NoFourMUBs.Step2.SOS.OldProjections007
import NoFourMUBs.Step2.SOS.OldProjections008
import NoFourMUBs.Step2.SOS.OldProjections010
import NoFourMUBs.Step2.SOS.OldProjections013
import NoFourMUBs.Step2.SOS.OldProjections014
import NoFourMUBs.Step2.SOS.OldProjections016
import NoFourMUBs.Step2.SOS.OldProjections027
import NoFourMUBs.Step2.SOS.OldProjections028
import NoFourMUBs.Step2.SOS.OldProjections030
import NoFourMUBs.Step2.SOS.OldProjections033
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions002
import NoFourMUBs.Step2.SOS.Reductions004
import NoFourMUBs.Step2.SOS.Reductions006
import NoFourMUBs.Step2.SOS.Reductions008
import NoFourMUBs.Step2.SOS.Reductions009
import NoFourMUBs.Step2.SOS.Reductions011
import NoFourMUBs.Step2.SOS.Reductions016
import NoFourMUBs.Step2.SOS.Reductions024
import NoFourMUBs.Step2.SOS.Reductions033
import NoFourMUBs.Step2.SOS.Reductions085
import NoFourMUBs.Step2.SOS.Reductions086
import NoFourMUBs.Step2.SOS.Reductions087
import NoFourMUBs.Step2.SOS.Reductions089
import NoFourMUBs.Step2.SOS.Reductions090
import NoFourMUBs.Step2.SOS.Reductions091
import NoFourMUBs.Step2.SOS.Reductions093
import NoFourMUBs.Step2.SOS.Reductions095
import NoFourMUBs.Step2.SOS.Reductions153
import NoFourMUBs.Step2.SOS.Reductions155
import NoFourMUBs.Step2.SOS.Reductions156
import NoFourMUBs.Step2.SOS.Reductions220
import NoFourMUBs.Step2.SOS.Reductions293
import NoFourMUBs.Step2.SOS.Reductions306
import NoFourMUBs.Step2.SOS.Reductions313
import NoFourMUBs.Step2.SOS.Reductions314
import NoFourMUBs.Step2.SOS.Reductions319
import NoFourMUBs.Step2.SOS.Reductions324
import NoFourMUBs.Step2.SOS.Reductions331
import NoFourMUBs.Step2.SOS.Reductions339
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical191
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical192
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes39
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection10880 : Integer.Sparse (Fin 1613) := [(0, 1), (81, -60), (94, 10), (405, 180), (433, 360), (434, 360), (512, 180), (565, 180), (698, 100), (700, 20), (768, 360), (808, 180), (869, 360), (1059, 20), (1174, 180), (1219, -60), (1221, -60), (1226, 20), (1227, 40), (1251, -25), (1270, 360), (1389, -120)]

def reductionPivot10880 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-1, -1, -1, 3], ![-1, -1, 2, 0], ![0, 1, 0, -1], ![1, 1, -2, 0], ![1, 1, 0, -2]]

theorem reductionSound10880 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * (normalNode7649).moment H =
      Integer.Sparse.eval reductionProjection10880 (momentVector H) := by
  have heq : reductionPivot10880 = (fun u v => (normalNode7649).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7649).moment H = injectiveMoment H reductionPivot10880 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7649).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot10880 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10880 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![2, 2, 2, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10880 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection2796, reductionProjection10224, reductionProjection2859, oldProjection2315, reductionProjection2998] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10880 (0 : Fin 5)) = canonicalInput13373.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10880 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2796 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10880 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2796 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13373 hH))).trans (reductionSound2796 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10880 (1 : Fin 5)) = canonicalInput15054.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10880 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10224 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10880 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10224 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15054 hH))).trans (reductionSound10224 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10880 (2 : Fin 5)) = (normalNode7661).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10880 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2859 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10880 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2859 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2859 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10880 (3 : Fin 5)) = canonicalInput15070.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10880 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2315 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10880 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2315 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15070 hH))).trans (oldProjectionSound2315 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10880 (4 : Fin 5)) = canonicalInput15071.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10880 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2998 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10880 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2998 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15071 hH))).trans (reductionSound2998 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode7649).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10880 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7649).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10880 (j : Fin 5)))
      1 360 1440 4 ![2, 2, 2, 1440, 1440] ![720, 720, 720, 1, 1] reductionProjection10880 ![reductionProjection2796, reductionProjection10224, reductionProjection2859, oldProjection2315, reductionProjection2998]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10881 : Integer.Sparse (Fin 1613) := [(0, -2), (79, -240), (81, -720), (90, 80), (94, 35), (398, 720), (426, 720), (512, 720), (565, 720), (698, 480), (700, 160), (775, 720), (1050, -240), (1052, -480), (1059, 160), (1174, 720), (1219, -240), (1221, -720), (1226, 160), (1227, 160), (1251, -15), (1270, 720), (1336, -1440), (1389, -480)]

def reductionPivot10881 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-1, -1, -1, 3], ![-1, -1, 2, 0], ![0, 2, 0, -2], ![1, 0, 0, -1], ![1, 1, -2, 0]]

theorem reductionSound10881 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode7650).moment H =
      Integer.Sparse.eval reductionProjection10881 (momentVector H) := by
  have heq : reductionPivot10881 = (fun u v => (normalNode7650).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7650).moment H = injectiveMoment H reductionPivot10881 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7650).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot10881 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10881 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 1440, 1, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10881 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection2756, reductionProjection10223, reductionProjection2998, reductionProjection2923, oldProjection2007] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10881 (0 : Fin 5)) = canonicalInput13376.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10881 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2756 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10881 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2756 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13376 hH))).trans (reductionSound2756 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10881 (1 : Fin 5)) = canonicalInput15055.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10881 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10223 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10881 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10223 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15055 hH))).trans (reductionSound10223 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10881 (2 : Fin 5)) = canonicalInput15072.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10881 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2998 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10881 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2998 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15072 hH))).trans (reductionSound2998 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10881 (3 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code1336).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10881 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2923 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10881 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2923 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2923 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10881 (4 : Fin 5)) = canonicalInput15077.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10881 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2007 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10881 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2007 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15077 hH))).trans (oldProjectionSound2007 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode7650).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10881 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7650).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10881 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 1440, 1, 1440] ![1, 1, 1, 1440, 1] reductionProjection10881 ![reductionProjection2756, reductionProjection10223, reductionProjection2998, reductionProjection2923, oldProjection2007]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10882 : Integer.Sparse (Fin 1613) := [(0, -1), (62, -240), (87, -480), (88, 240), (90, 480), (94, 20), (241, 160), (243, 320), (400, 720), (426, 720), (596, 1440), (630, 1440), (698, 1360), (700, 80), (781, 720), (1047, -240), (1219, -240), (1226, 1200), (1227, 480), (1251, -115)]

def reductionPivot10882 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-1, -1, -1, 3], ![-1, -1, 2, 0], ![0, 3, -2, -1], ![1, 0, 0, -1], ![1, 0, 0, -1]]

theorem reductionSound10882 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode7651).moment H =
      Integer.Sparse.eval reductionProjection10882 (momentVector H) := by
  have heq : reductionPivot10882 = (fun u v => (normalNode7651).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7651).moment H = injectiveMoment H reductionPivot10882 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7651).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot10882 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10882 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 144, 36, 288, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10882 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection2766, reductionProjection10218, oldProjection2064, reductionProjection305, reductionProjection305] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10882 (0 : Fin 5)) = canonicalInput13378.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10882 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2766 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10882 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2766 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13378 hH))).trans (reductionSound2766 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10882 (1 : Fin 5)) = canonicalInput15056.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10882 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10218 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10882 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10218 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15056 hH))).trans (reductionSound10218 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10882 (2 : Fin 5)) = canonicalInput15075.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10882 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection2064 (momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10882 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection2064 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15075 hH))).trans (oldProjectionSound2064 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10882 (3 : Fin 5)) = (normalNode7669).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10882 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection305 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10882 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection305 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound305 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10882 (4 : Fin 5)) = canonicalInput15078.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10882 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection305 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10882 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection305 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15078 hH))).trans (reductionSound305 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode7651).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10882 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7651).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10882 (j : Fin 5)))
      1 1440 1440 1 ![1440, 144, 36, 288, 288] ![1, 10, 40, 5, 5] reductionProjection10882 ![reductionProjection2766, reductionProjection10218, oldProjection2064, reductionProjection305, reductionProjection305]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10883 : Integer.Sparse (Fin 1613) := [(0, 1), (90, -320), (94, 5), (596, -720), (698, -400), (700, -80), (1004, -720), (1226, -320), (1251, 40)]

def reductionPivot10883 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-1, -1, -1, 3], ![-1, -1, 2, 0], ![0, 3, -1, -2], ![1, -1, 1, -1]]

theorem reductionSound10883 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode7670).moment H =
      Integer.Sparse.eval reductionProjection10883 (momentVector H) := by
  have heq : reductionPivot10883 = (fun u v => (normalNode7670).entries (OAI.MUB6.Certificate.PairSemantics.permutation128 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7670).moment H = injectiveMoment H reductionPivot10883 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7670).entries OAI.MUB6.Certificate.PairSemantics.permutation128)).symm
  have hshape : reductionPivot10883 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10883 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 720, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10883 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1018, oldProjection949, oldProjection509, oldProjection616] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10883 (0 : Fin 4)) = canonicalInput24558.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10883 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1018 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10883 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1018 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24558 hH))).trans (oldProjectionSound1018 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10883 (1 : Fin 4)) = canonicalInput15290.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10883 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection949 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10883 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection949 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15290 hH))).trans (oldProjectionSound949 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10883 (2 : Fin 4)) = canonicalInput15091.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10883 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection509 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10883 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection509 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15091 hH))).trans (oldProjectionSound509 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10883 (3 : Fin 4)) = canonicalInput15082.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10883 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection616 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10883 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection616 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15082 hH))).trans (oldProjectionSound616 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7670).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10883 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7670).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10883 (j : Fin 4)))
      2 1440 1440 2 ![9, 720, 1, 1] ![160, 2, 1440, 1440] reductionProjection10883 ![oldProjection1018, oldProjection949, oldProjection509, oldProjection616]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10884 : Integer.Sparse (Fin 1613) := [(0, -3), (20, 5), (42, 80), (62, -240), (88, 80), (90, 480), (94, -60), (241, 80), (243, 480), (426, 720), (596, 720), (698, 1040), (700, 480), (934, 720), (1004, 1440), (1047, -240), (1059, 80), (1203, 720), (1219, -480), (1226, 800), (1227, 320), (1251, -70)]

def reductionPivot10884 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-1, -1, -1, 3], ![-1, -1, 2, 0], ![0, 3, -1, -2], ![1, 0, -1, 0], ![1, 0, 0, -1]]

theorem reductionSound10884 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode7652).moment H =
      Integer.Sparse.eval reductionProjection10884 (momentVector H) := by
  have heq : reductionPivot10884 = (fun u v => (normalNode7652).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7652).moment H = injectiveMoment H reductionPivot10884 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7652).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot10884 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10884 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 18, 1440, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10884 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection281, reductionProjection10216, oldProjection2007, reductionProjection291, reductionProjection10883] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10884 (0 : Fin 5)) = canonicalInput13380.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10884 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection281 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10884 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection281 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13380 hH))).trans (reductionSound281 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10884 (1 : Fin 5)) = canonicalInput15057.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10884 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10216 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10884 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10216 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15057 hH))).trans (reductionSound10216 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10884 (2 : Fin 5)) = canonicalInput15076.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10884 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection2007 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10884 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection2007 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15076 hH))).trans (oldProjectionSound2007 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10884 (3 : Fin 5)) = canonicalInput15080.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10884 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection291 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10884 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection291 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15080 hH))).trans (reductionSound291 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10884 (4 : Fin 5)) = canonicalInput15081.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10884 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10883 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10884 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10883 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15081 hH))).trans (reductionSound10883 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode7652).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10884 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7652).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10884 (j : Fin 5)))
      1 1440 1440 1 ![288, 18, 1440, 1440, 1440] ![5, 80, 1, 1, 1] reductionProjection10884 ![reductionProjection281, reductionProjection10216, oldProjection2007, reductionProjection291, reductionProjection10883]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10885 : Integer.Sparse (Fin 1613) := [(0, 1), (81, 240), (94, -15), (293, -720), (682, 240), (698, -80), (1251, -20), (1270, -720), (1321, 240), (1389, 480)]

def reductionPivot10885 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, 0, -1], ![-1, -1, -1, 3], ![-1, -1, 2, 0], ![0, 1, -2, 1], ![1, 1, 1, -3]]

theorem reductionSound10885 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode7662).moment H =
      Integer.Sparse.eval reductionProjection10885 (momentVector H) := by
  have heq : reductionPivot10885 = (fun u v => (normalNode7662).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7662).moment H = injectiveMoment H reductionPivot10885 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7662).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot10885 0 = Pi.single (0 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10885 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 3, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10885 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection943, oldProjection941, oldProjection720, oldProjection453] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10885 (0 : Fin 4)) = canonicalInput24687.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10885 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection943 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10885 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection943 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24687 hH))).trans (oldProjectionSound943 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10885 (1 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node941⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10885 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection941 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10885 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection941 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound941 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10885 (2 : Fin 4)) = canonicalInput15087.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10885 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection720 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10885 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection720 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15087 hH))).trans (oldProjectionSound720 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10885 (3 : Fin 4)) = canonicalInput15068.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10885 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection453 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10885 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection453 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15068 hH))).trans (oldProjectionSound453 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7662).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10885 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7662).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10885 (j : Fin 4)))
      2 1440 1440 2 ![720, 3, 1, 1] ![2, 480, 1440, 1440] reductionProjection10885 ![oldProjection943, oldProjection941, oldProjection720, oldProjection453]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10886 : Integer.Sparse (Fin 1613) := [(19, -18), (20, 3), (81, -24), (94, 8), (243, 8), (247, 8), (293, 72), (434, 72), (682, -24), (698, 80), (700, 48), (701, 8), (704, 32), (1059, 8), (1061, -24), (1146, 72), (1219, -48), (1226, 8), (1227, 16), (1251, -5), (1270, 144), (1321, -24), (1333, 72), (1389, -48)]

def reductionPivot10886 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, -1, -1, 3], ![-1, -1, 2, 0], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 1, 1, -3]]

theorem reductionSound10886 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode7653).moment H =
      Integer.Sparse.eval reductionProjection10886 (momentVector H) := by
  have heq : reductionPivot10886 = (fun u v => (normalNode7653).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7653).moment H = injectiveMoment H reductionPivot10886 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7653).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot10886 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10886 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 288, 1440, 288, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10886 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection10608, reductionProjection10871, reductionProjection10885, reductionProjection10605, oldProjection2315] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10886 (0 : Fin 5)) = (normalNode7266).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10886 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10608 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10886 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10608 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10608 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10886 (1 : Fin 5)) = (normalNode7644).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10886 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10871 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10886 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10871 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10871 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10886 (2 : Fin 5)) = (normalNode7662).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10886 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10885 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10886 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10885 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10885 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10886 (3 : Fin 5)) = (normalNode7665).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10886 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10605 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10886 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10605 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10605 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10886 (4 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw6123 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10886 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2315 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10886 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2315 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6123 hH))).trans (oldProjectionSound2315 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode7653).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10886 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7653).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10886 (j : Fin 5)))
      1 144 1440 10 ![1440, 288, 1440, 288, 1440] ![1, 5, 1, 5, 1] reductionProjection10886 ![reductionProjection10608, reductionProjection10871, reductionProjection10885, reductionProjection10605, oldProjection2315]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10887 : Integer.Sparse (Fin 1613) := [(0, 1), (76, -48), (81, -96), (94, 14), (293, 144), (432, 144), (433, 144), (434, 144), (682, -48), (698, 128), (700, 16), (768, 144), (869, 144), (1059, 32), (1219, -48), (1221, -48), (1226, 16), (1227, 48), (1251, -27), (1270, 144), (1321, -48), (1323, -48), (1334, -288), (1389, -192)]

def reductionPivot10887 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, -1, -1, 3], ![-1, -1, 2, 0], ![0, 1, -2, 1], ![1, 0, 0, -1], ![1, 1, 0, -2]]

theorem reductionSound10887 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode7654).moment H =
      Integer.Sparse.eval reductionProjection10887 (momentVector H) := by
  have heq : reductionPivot10887 = (fun u v => (normalNode7654).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7654).moment H = injectiveMoment H reductionPivot10887 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7654).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot10887 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10887 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 720, 1440, 1, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10887 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection2791, reductionProjection7071, oldProjection2315, reductionProjection2893, reductionProjection10885] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10887 (0 : Fin 5)) = canonicalInput16887.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10887 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2791 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10887 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2791 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound16887 hH))).trans (reductionSound2791 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10887 (1 : Fin 5)) = (normalNode7677).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10887 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7071 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10887 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7071 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound7071 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10887 (2 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw6123 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10887 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection2315 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10887 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection2315 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6123 hH))).trans (oldProjectionSound2315 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10887 (3 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code1334).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10887 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2893 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10887 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2893 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2893 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10887 (4 : Fin 5)) = (normalNode7662).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10887 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10885 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10887 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10885 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10885 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode7654).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10887 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7654).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10887 (j : Fin 5)))
      1 288 1440 5 ![288, 720, 1440, 1, 1440] ![5, 2, 1, 1440, 1] reductionProjection10887 ![reductionProjection2791, reductionProjection7071, oldProjection2315, reductionProjection2893, reductionProjection10885]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10888 : Integer.Sparse (Fin 1613) := [(0, 3), (87, -120), (90, 80), (94, 20), (434, 720), (698, 720), (700, 240), (768, 360), (869, 360), (1055, -120), (1059, 120), (1219, -360), (1226, 240), (1227, 320), (1251, -135), (1270, 360)]

def reductionPivot10888 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, -1, -1, 3], ![-1, -1, 2, 0], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 1, 0, -2]]

theorem reductionSound10888 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode7655).moment H =
      Integer.Sparse.eval reductionProjection10888 (momentVector H) := by
  have heq : reductionPivot10888 = (fun u v => (normalNode7655).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7655).moment H = injectiveMoment H reductionPivot10888 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7655).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot10888 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10888 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![144, 288, 1440, 1440, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10888 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2055, reductionProjection4924, oldProjection2315, oldProjection2315, reductionProjection10605] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10888 (0 : Fin 5)) = canonicalInput16888.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10888 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2055 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10888 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2055 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound16888 hH))).trans (oldProjectionSound2055 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10888 (1 : Fin 5)) = (normalNode7684).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10888 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4924 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10888 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4924 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4924 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10888 (2 : Fin 5)) = canonicalInput15070.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10888 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection2315 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10888 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection2315 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15070 hH))).trans (oldProjectionSound2315 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10888 (3 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw6123 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10888 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2315 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10888 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2315 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6123 hH))).trans (oldProjectionSound2315 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10888 (4 : Fin 5)) = (normalNode7665).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10888 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10605 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10888 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10605 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10605 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode7655).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10888 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7655).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10888 (j : Fin 5)))
      1 720 1440 2 ![144, 288, 1440, 1440, 288] ![10, 5, 1, 1, 5] reductionProjection10888 ![oldProjection2055, reductionProjection4924, oldProjection2315, oldProjection2315, reductionProjection10605]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10889 : Integer.Sparse (Fin 1613) := [(0, 29), (81, -240), (87, -240), (90, 160), (94, 100), (434, 2160), (565, 720), (698, 1520), (700, 80), (957, 720), (1055, -240), (1059, 80), (1219, -480), (1226, 640), (1227, 1120), (1251, -345), (1341, 720)]

def reductionPivot10889 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, -1, -1, 3], ![-1, -1, 2, 0], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 1, -1, -1]]

theorem reductionSound10889 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode7656).moment H =
      Integer.Sparse.eval reductionProjection10889 (momentVector H) := by
  have heq : reductionPivot10889 = (fun u v => (normalNode7656).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7656).moment H = injectiveMoment H reductionPivot10889 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7656).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot10889 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10889 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 18, 1440, 360, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10889 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2057, reductionProjection355, oldProjection2318, reductionProjection2983, oldProjection2315] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10889 (0 : Fin 5)) = canonicalInput16889.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10889 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2057 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10889 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2057 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound16889 hH))).trans (oldProjectionSound2057 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10889 (1 : Fin 5)) = (normalNode7685).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10889 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection355 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10889 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection355 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound355 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10889 (2 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw6124 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10889 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection2318 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10889 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection2318 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6124 hH))).trans (oldProjectionSound2318 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10889 (3 : Fin 5)) = (normalNode7666).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10889 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2983 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10889 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2983 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2983 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10889 (4 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw6123 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10889 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2315 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10889 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2315 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6123 hH))).trans (oldProjectionSound2315 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode7656).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10889 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7656).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10889 (j : Fin 5)))
      1 1440 1440 1 ![1440, 18, 1440, 360, 1440] ![1, 80, 1, 4, 1] reductionProjection10889 ![oldProjection2057, reductionProjection355, oldProjection2318, reductionProjection2983, oldProjection2315]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10890 : Integer.Sparse (Fin 1613) := [(0, 13), (81, -480), (87, -240), (90, 160), (94, 70), (434, 720), (565, 1440), (698, 1200), (700, 80), (768, 720), (869, 720), (1055, -240), (1059, 80), (1219, -240), (1221, -480), (1226, 480), (1227, 800), (1251, -255), (1270, 1440), (1389, -960)]

def reductionPivot10890 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, -1, -1, 3], ![-1, -1, 2, 0], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 1, -2, 0]]

theorem reductionSound10890 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode7657).moment H =
      Integer.Sparse.eval reductionProjection10890 (momentVector H) := by
  have heq : reductionPivot10890 = (fun u v => (normalNode7657).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7657).moment H = injectiveMoment H reductionPivot10890 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7657).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot10890 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10890 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![144, 288, 1440, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10890 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2055, reductionProjection4924, reductionProjection2998, reductionProjection2998, oldProjection2318] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10890 (0 : Fin 5)) = canonicalInput16891.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10890 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2055 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10890 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2055 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound16891 hH))).trans (oldProjectionSound2055 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10890 (1 : Fin 5)) = canonicalInput15100.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10890 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4924 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10890 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4924 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15100 hH))).trans (reductionSound4924 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10890 (2 : Fin 5)) = canonicalInput15072.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10890 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2998 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10890 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2998 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15072 hH))).trans (reductionSound2998 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10890 (3 : Fin 5)) = (normalNode7667).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10890 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2998 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10890 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2998 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2998 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10890 (4 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw6124 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10890 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2318 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10890 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2318 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6124 hH))).trans (oldProjectionSound2318 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode7657).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10890 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7657).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10890 (j : Fin 5)))
      1 1440 1440 1 ![144, 288, 1440, 1440, 1440] ![10, 5, 1, 1, 1] reductionProjection10890 ![oldProjection2055, reductionProjection4924, reductionProjection2998, reductionProjection2998, oldProjection2318]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10891 : Integer.Sparse (Fin 1613) := [(0, -1), (76, -480), (79, -240), (87, -480), (88, 240), (90, 480), (94, 15), (241, 160), (243, 160), (426, 720), (565, 720), (596, 720), (630, 1440), (698, 1200), (700, 160), (1004, 720), (1024, 720), (1055, -240), (1219, -240), (1226, 960), (1227, 560), (1251, -100)]

def reductionPivot10891 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, -1, -1, 3], ![-1, -1, 2, 0], ![0, 3, -2, -1], ![1, -1, 0, 0], ![1, 0, 0, -1]]

theorem reductionSound10891 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode7658).moment H =
      Integer.Sparse.eval reductionProjection10891 (momentVector H) := by
  have heq : reductionPivot10891 = (fun u v => (normalNode7658).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7658).moment H = injectiveMoment H reductionPivot10891 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7658).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot10891 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10891 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 18, 1440, 288, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10891 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection3040, reductionProjection4967, reductionProjection291, reductionProjection305, reductionProjection4992] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10891 (0 : Fin 5)) = canonicalInput16895.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10891 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3040 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10891 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3040 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound16895 hH))).trans (reductionSound3040 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10891 (1 : Fin 5)) = (normalNode7690).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10891 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4967 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10891 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4967 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4967 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10891 (2 : Fin 5)) = canonicalInput15080.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10891 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection291 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10891 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection291 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15080 hH))).trans (reductionSound291 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10891 (3 : Fin 5)) = (normalNode7669).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10891 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection305 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10891 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection305 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound305 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10891 (4 : Fin 5)) = (normalNode7668).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10891 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4992 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10891 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4992 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4992 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode7658).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10891 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7658).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10891 (j : Fin 5)))
      1 1440 1440 1 ![288, 18, 1440, 288, 288] ![5, 80, 1, 5, 5] reductionProjection10891 ![reductionProjection3040, reductionProjection4967, reductionProjection291, reductionProjection305, reductionProjection4992]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10892 : Integer.Sparse (Fin 1613) := [(87, 6), (88, -2), (90, -3), (698, -2), (1024, -9), (1226, -4), (1227, -1), (1284, -9)]

def reductionPivot10892 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, 0, -1], ![-1, -1, -1, 3], ![-1, -1, 3, -1], ![0, 3, -1, -2], ![1, -1, -1, 1]]

theorem reductionSound10892 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode7691).moment H =
      Integer.Sparse.eval reductionProjection10892 (momentVector H) := by
  have heq : reductionPivot10892 = (fun u v => (normalNode7691).entries (OAI.MUB6.Certificate.PairSemantics.permutation128 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7691).moment H = injectiveMoment H reductionPivot10892 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7691).entries OAI.MUB6.Certificate.PairSemantics.permutation128)).symm
  have hshape : reductionPivot10892 0 = Pi.single (0 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10892 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 9, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10892 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection304, reductionProjection369, reductionProjection9822, reductionProjection289] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10892 (0 : Fin 4)) = canonicalInput24692.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10892 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection304 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10892 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection304 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24692 hH))).trans (reductionSound304 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10892 (1 : Fin 4)) = (normalNode7918).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10892 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection369 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10892 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection369 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound369 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10892 (2 : Fin 4)) = canonicalInput15116.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10892 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9822 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10892 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9822 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15116 hH))).trans (reductionSound9822 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10892 (3 : Fin 4)) = canonicalInput15111.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10892 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection289 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10892 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection289 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15111 hH))).trans (reductionSound289 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7691).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10892 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7691).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10892 (j : Fin 4)))
      2 18 18 2 ![9, 9, 1, 1] ![2, 2, 18, 18] reductionProjection10892 ![reductionProjection304, reductionProjection369, reductionProjection9822, reductionProjection289]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10893 : Integer.Sparse (Fin 1613) := [(0, -1), (87, -480), (88, 160), (90, 320), (94, 5), (243, 320), (426, 720), (483, 720), (698, 880), (700, 240), (1004, 720), (1024, 720), (1198, 720), (1219, -720), (1226, 800), (1227, 480), (1231, 720), (1251, -30), (1284, 720), (1337, -1440)]

def reductionPivot10893 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, -1, -1, 3], ![-1, -1, 2, 0], ![0, 3, -1, -2], ![1, -1, -1, 1], ![1, 0, 0, -1]]

theorem reductionSound10893 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode7659).moment H =
      Integer.Sparse.eval reductionProjection10893 (momentVector H) := by
  have heq : reductionPivot10893 = (fun u v => (normalNode7659).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7659).moment H = injectiveMoment H reductionPivot10893 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7659).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot10893 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10893 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 18, 1440, 1440, 1] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10893 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection7054, reductionProjection10892, reductionProjection9393, reductionProjection291, reductionProjection4991] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10893 (0 : Fin 5)) = canonicalInput16897.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10893 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7054 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10893 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7054 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound16897 hH))).trans (reductionSound7054 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10893 (1 : Fin 5)) = (normalNode7691).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10893 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10892 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10893 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10892 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10892 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10893 (2 : Fin 5)) = canonicalInput15083.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10893 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9393 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10893 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9393 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15083 hH))).trans (reductionSound9393 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10893 (3 : Fin 5)) = canonicalInput15080.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10893 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection291 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10893 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection291 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15080 hH))).trans (reductionSound291 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10893 (4 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code1337).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10893 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4991 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10893 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4991 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4991 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode7659).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10893 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7659).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10893 (j : Fin 5)))
      1 1440 1440 1 ![1440, 18, 1440, 1440, 1] ![1, 80, 1, 1, 1440] reductionProjection10893 ![reductionProjection7054, reductionProjection10892, reductionProjection9393, reductionProjection291, reductionProjection4991]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10894 : Integer.Sparse (Fin 1613) := [(0, -3), (87, -240), (88, 240), (90, 560), (94, 15), (241, 160), (243, 400), (426, 720), (596, 720), (698, 1120), (700, 240), (1004, 1440), (1024, 720), (1055, -240), (1198, 720), (1219, -480), (1226, 800), (1227, 320), (1251, -90)]

def reductionPivot10894 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, -1, -1, 3], ![-1, -1, 2, 0], ![0, 3, -1, -2], ![1, -1, 0, 0], ![1, 0, -1, 0]]

theorem reductionSound10894 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode7660).moment H =
      Integer.Sparse.eval reductionProjection10894 (momentVector H) := by
  have heq : reductionPivot10894 = (fun u v => (normalNode7660).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7660).moment H = injectiveMoment H reductionPivot10894 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7660).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot10894 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10894 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 18, 1440, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10894 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection3040, reductionProjection4967, reductionProjection4978, reductionProjection10883, reductionProjection291] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10894 (0 : Fin 5)) = canonicalInput16898.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10894 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3040 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10894 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3040 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound16898 hH))).trans (reductionSound3040 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10894 (1 : Fin 5)) = canonicalInput15109.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10894 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4967 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10894 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4967 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15109 hH))).trans (reductionSound4967 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10894 (2 : Fin 5)) = canonicalInput15084.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10894 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4978 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10894 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4978 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15084 hH))).trans (reductionSound4978 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10894 (3 : Fin 5)) = (normalNode7670).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10894 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10883 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10894 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10883 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10883 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10894 (4 : Fin 5)) = canonicalInput15080.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10894 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection291 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10894 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection291 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15080 hH))).trans (reductionSound291 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode7660).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10894 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7660).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10894 (j : Fin 5)))
      1 1440 1440 1 ![288, 18, 1440, 1440, 1440] ![5, 80, 1, 1, 1] reductionProjection10894 ![reductionProjection3040, reductionProjection4967, reductionProjection4978, reductionProjection10883, reductionProjection291]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10895 : Integer.Sparse (Fin 1613) := [(0, 13), (19, -20), (81, -720), (94, 125), (434, 1440), (565, 1440), (698, 1120), (700, 240), (704, 80), (761, 720), (1058, -240), (1059, 240), (1219, -240), (1221, -240), (1226, 80), (1227, 320), (1251, -200)]

def reductionPivot10895 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, -1, -1, 3], ![-1, -1, 2, 0], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 0, 1, -2]]

theorem reductionSound10895 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode7663).moment H =
      Integer.Sparse.eval reductionProjection10895 (momentVector H) := by
  have heq : reductionPivot10895 = (fun u v => (normalNode7663).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7663).moment H = injectiveMoment H reductionPivot10895 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7663).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot10895 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10895 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 1440, 360, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10895 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection2803, oldProjection2536, reductionProjection2736, reductionProjection2983, oldProjection2315] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10895 (0 : Fin 5)) = canonicalInput19437.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10895 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2803 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10895 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2803 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19437 hH))).trans (reductionSound2803 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10895 (1 : Fin 5)) = canonicalInput15140.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10895 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2536 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10895 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2536 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15140 hH))).trans (oldProjectionSound2536 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10895 (2 : Fin 5)) = canonicalInput15073.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10895 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2736 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10895 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2736 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15073 hH))).trans (reductionSound2736 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10895 (3 : Fin 5)) = canonicalInput15069.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10895 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2983 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10895 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2983 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15069 hH))).trans (reductionSound2983 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10895 (4 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw6123 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10895 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2315 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10895 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2315 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6123 hH))).trans (oldProjectionSound2315 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode7663).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10895 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7663).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10895 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 1440, 360, 1440] ![1, 1, 1, 4, 1] reductionProjection10895 ![reductionProjection2803, oldProjection2536, reductionProjection2736, reductionProjection2983, oldProjection2315]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10896 : Integer.Sparse (Fin 1613) := [(0, -2), (81, -720), (94, 75), (426, 720), (434, 720), (565, 1440), (698, 960), (700, 240), (1059, 160), (1219, -240), (1221, -240), (1226, 320), (1227, 320), (1251, -135), (1270, 720), (1389, -480)]

def reductionPivot10896 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, -1, -1, 3], ![-1, -1, 2, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 1, -2]]

theorem reductionSound10896 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode7664).moment H =
      Integer.Sparse.eval reductionProjection10896 (momentVector H) := by
  have heq : reductionPivot10896 = (fun u v => (normalNode7664).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7664).moment H = injectiveMoment H reductionPivot10896 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7664).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot10896 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10896 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 720, 1440, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10896 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection3004, oldProjection2534, reductionProjection2992, reductionProjection2998, oldProjection2315] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10896 (0 : Fin 5)) = canonicalInput19438.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10896 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3004 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10896 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3004 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19438 hH))).trans (reductionSound3004 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10896 (1 : Fin 5)) = canonicalInput15141.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10896 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2534 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10896 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2534 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15141 hH))).trans (oldProjectionSound2534 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10896 (2 : Fin 5)) = canonicalInput15074.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10896 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2992 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10896 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2992 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15074 hH))).trans (reductionSound2992 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10896 (3 : Fin 5)) = canonicalInput15071.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10896 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2998 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10896 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2998 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15071 hH))).trans (reductionSound2998 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10896 (4 : Fin 5)) = canonicalInput15070.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10896 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2315 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10896 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2315 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15070 hH))).trans (oldProjectionSound2315 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode7664).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10896 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7664).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10896 (j : Fin 5)))
      1 1440 1440 1 ![1440, 720, 1440, 1440, 1440] ![1, 2, 1, 1, 1] reductionProjection10896 ![reductionProjection3004, oldProjection2534, reductionProjection2992, reductionProjection2998, oldProjection2315]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10897 : Integer.Sparse (Fin 1613) := [(42, 1), (62, -3), (85, -3), (87, -12), (88, 8), (90, 11), (91, 2), (243, 5), (698, 12), (700, 3), (933, 9), (934, 9), (955, 9), (1024, 18), (1225, 1), (1226, 14), (1227, 3), (1284, 9)]

def reductionPivot10897 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-1, -1, -1, 3], ![-1, -1, 3, -1], ![0, 3, -1, -2], ![1, 0, -1, 0], ![1, 0, 0, -1]]

theorem reductionSound10897 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode7671).moment H =
      Integer.Sparse.eval reductionProjection10897 (momentVector H) := by
  have heq : reductionPivot10897 = (fun u v => (normalNode7671).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7671).moment H = injectiveMoment H reductionPivot10897 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7671).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot10897 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10897 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![18, 18, 18, 18, 18] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10897 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection10044, reductionProjection10216, reductionProjection358, reductionProjection10892, reductionProjection4967] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10897 (0 : Fin 5)) = (normalNode6387).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10897 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10044 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10897 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10044 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10044 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10897 (1 : Fin 5)) = canonicalInput15057.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10897 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10216 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10897 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10216 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15057 hH))).trans (reductionSound10216 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10897 (2 : Fin 5)) = canonicalInput15104.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10897 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection358 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10897 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection358 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15104 hH))).trans (reductionSound358 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10897 (3 : Fin 5)) = (normalNode7691).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10897 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10892 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10897 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10892 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10892 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10897 (4 : Fin 5)) = canonicalInput15110.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10897 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4967 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10897 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4967 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15110 hH))).trans (reductionSound4967 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode7671).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10897 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7671).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10897 (j : Fin 5)))
      1 18 18 1 ![18, 18, 18, 18, 18] ![1, 1, 1, 1, 1] reductionProjection10897 ![reductionProjection10044, reductionProjection10216, reductionProjection358, reductionProjection10892, reductionProjection4967]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10898 : Integer.Sparse (Fin 1613) := [(432, -3), (682, 1), (683, 1), (1321, 2), (1323, 1), (1340, -3), (1389, 1)]

def reductionPivot10898 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-1, -1, -1, 3], ![-1, -1, 3, -1], ![0, 1, -2, 1], ![1, 1, 1, -3]]

theorem reductionSound10898 {H : CMatrix} (hH : IsHadamard H) :
    (6 : ℝ) * (normalNode7676).moment H =
      Integer.Sparse.eval reductionProjection10898 (momentVector H) := by
  have heq : reductionPivot10898 = (fun u v => (normalNode7676).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7676).moment H = injectiveMoment H reductionPivot10898 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7676).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot10898 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10898 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![3, 3, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10898 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1074, oldProjection941, reductionProjection206, reductionProjection150] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10898 (0 : Fin 4)) = canonicalInput24559.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10898 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1074 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10898 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1074 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24559 hH))).trans (reductionSound1074 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10898 (1 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node941⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10898 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection941 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10898 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection941 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound941 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10898 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1340).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10898 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection206 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10898 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection206 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound206 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10898 (3 : Fin 4)) = canonicalInput15093.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10898 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection150 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10898 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection150 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15093 hH))).trans (reductionSound150 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7676).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10898 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7676).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10898 (j : Fin 4)))
      2 6 6 2 ![3, 3, 1, 1] ![2, 2, 6, 6] reductionProjection10898 ![reductionProjection1074, oldProjection941, reductionProjection206, reductionProjection150]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10899 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -100), (20, 25), (42, 160), (87, -240), (89, -240), (90, 160), (94, 40), (243, 320), (432, 1440), (682, -480), (683, -480), (698, 800), (700, 320), (701, 80), (704, 480), (768, 720), (1219, -240), (1226, 320), (1227, 160), (1251, 20), (1270, 720), (1321, -960), (1323, -480), (1326, 720), (1340, 1440), (1389, -480)]

def reductionPivot10899 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, -1, -1, 3], ![-1, -1, 3, -1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 1, 1, -3]]

theorem reductionSound10899 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode7672).moment H =
      Integer.Sparse.eval reductionProjection10899 (momentVector H) := by
  have heq : reductionPivot10899 = (fun u v => (normalNode7672).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7672).moment H = injectiveMoment H reductionPivot10899 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7672).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot10899 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10899 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 288, 6, 6, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10899 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection10607, reductionProjection10605, reductionProjection10898, reductionProjection10898, reductionProjection4924] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10899 (0 : Fin 5)) = (normalNode7272).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10899 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10607 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10899 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10607 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10607 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10899 (1 : Fin 5)) = (normalNode7665).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10899 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10605 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10899 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10605 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10605 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10899 (2 : Fin 5)) = (normalNode7676).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10899 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10898 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10899 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10898 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10898 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10899 (3 : Fin 5)) = canonicalInput15095.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10899 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10898 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10899 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10898 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15095 hH))).trans (reductionSound10898 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10899 (4 : Fin 5)) = (normalNode7684).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10899 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4924 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10899 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4924 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4924 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode7672).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10899 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7672).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10899 (j : Fin 5)))
      1 1440 1440 1 ![1440, 288, 6, 6, 288] ![1, 5, 240, 240, 5] reductionProjection10899 ![reductionProjection10607, reductionProjection10605, reductionProjection10898, reductionProjection10898, reductionProjection4924]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10900 : Integer.Sparse (Fin 1613) := [(0, 2), (20, 1), (87, -144), (88, 32), (89, -48), (90, 128), (94, -3), (243, 48), (303, 144), (434, 144), (698, 416), (700, 16), (768, 144), (1219, -48), (1226, 352), (1227, 224), (1251, -58), (1341, 288)]

def reductionPivot10900 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, -1, -1, 3], ![-1, -1, 3, -1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 1, -1, -1]]

theorem reductionSound10900 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode7673).moment H =
      Integer.Sparse.eval reductionProjection10900 (momentVector H) := by
  have heq : reductionPivot10900 = (fun u v => (normalNode7673).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7673).moment H = injectiveMoment H reductionPivot10900 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7673).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot10900 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10900 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 18, 18, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10900 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection10057, oldProjection2318, reductionProjection355, reductionProjection355, reductionProjection4924] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10900 (0 : Fin 5)) = (normalNode7275).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10900 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10057 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10900 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10057 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10057 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10900 (1 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw6124 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10900 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2318 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10900 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2318 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6124 hH))).trans (oldProjectionSound2318 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10900 (2 : Fin 5)) = (normalNode7685).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10900 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection355 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10900 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection355 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound355 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10900 (3 : Fin 5)) = canonicalInput15099.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10900 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection355 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10900 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection355 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15099 hH))).trans (reductionSound355 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10900 (4 : Fin 5)) = canonicalInput15100.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10900 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4924 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10900 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4924 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15100 hH))).trans (reductionSound4924 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode7673).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10900 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7673).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10900 (j : Fin 5)))
      1 288 1440 5 ![1440, 1440, 18, 18, 288] ![1, 1, 80, 80, 5] reductionProjection10900 ![reductionProjection10057, oldProjection2318, reductionProjection355, reductionProjection355, reductionProjection4924]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10901 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -40), (20, 5), (76, -720), (81, -720), (87, -240), (90, 240), (94, 85), (243, 160), (432, 1440), (698, 960), (700, 240), (704, 80), (763, 720), (768, 1440), (1058, -480), (1226, 560), (1227, 320), (1251, -35), (1323, -480), (1389, -480)]

def reductionPivot10901 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-1, -1, -1, 3], ![-1, -1, 3, -1], ![0, 1, -2, 1], ![1, 0, 0, -1], ![1, 0, 0, -1]]

theorem reductionSound10901 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode7675).moment H =
      Integer.Sparse.eval reductionProjection10901 (momentVector H) := by
  have heq : reductionPivot10901 = (fun u v => (normalNode7675).entries (OAI.MUB6.Certificate.PairSemantics.permutation241 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7675).moment H = injectiveMoment H reductionPivot10901 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7675).entries OAI.MUB6.Certificate.PairSemantics.permutation241)).symm
  have hshape : reductionPivot10901 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10901 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![360, 1440, 1440, 720, 720] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10901 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2540, oldProjection2546, reductionProjection4964, reductionProjection7071, reductionProjection7071] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10901 (0 : Fin 5)) = canonicalInput20077.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10901 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2540 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10901 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2540 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20077 hH))).trans (oldProjectionSound2540 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10901 (1 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw6145 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10901 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2546 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10901 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2546 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6145 hH))).trans (oldProjectionSound2546 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10901 (2 : Fin 5)) = canonicalInput15102.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10901 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4964 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10901 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4964 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15102 hH))).trans (reductionSound4964 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10901 (3 : Fin 5)) = canonicalInput15092.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10901 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7071 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10901 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7071 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15092 hH))).trans (reductionSound7071 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10901 (4 : Fin 5)) = (normalNode7677).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10901 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7071 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10901 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7071 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound7071 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode7675).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10901 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7675).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10901 (j : Fin 5)))
      1 1440 1440 1 ![360, 1440, 1440, 720, 720] ![4, 1, 1, 2, 2] reductionProjection10901 ![oldProjection2540, oldProjection2546, reductionProjection4964, reductionProjection7071, reductionProjection7071]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10902 : Integer.Sparse (Fin 1613) := [(0, -1), (76, -48), (79, -96), (81, -48), (87, -144), (88, 32), (90, 208), (94, 28), (243, 16), (698, 416), (700, 128), (704, 16), (763, 144), (768, 288), (1226, 336), (1227, 128), (1251, -11)]

def reductionPivot10902 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, -1, -1, 3], ![-1, -1, 3, -1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 1, 0, -2]]

theorem reductionSound10902 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode7678).moment H =
      Integer.Sparse.eval reductionProjection10902 (momentVector H) := by
  have heq : reductionPivot10902 = (fun u v => (normalNode7678).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7678).moment H = injectiveMoment H reductionPivot10902 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7678).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot10902 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10902 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 288, 288, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10902 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2519, oldProjection2063, reductionProjection4965, reductionProjection4924, reductionProjection366] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10902 (0 : Fin 5)) = canonicalInput19441.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10902 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2519 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10902 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2519 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19441 hH))).trans (oldProjectionSound2519 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10902 (1 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw6127 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10902 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2063 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10902 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2063 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6127 hH))).trans (oldProjectionSound2063 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10902 (2 : Fin 5)) = (normalNode7688).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10902 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4965 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10902 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4965 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4965 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10902 (3 : Fin 5)) = (normalNode7684).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10902 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4924 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10902 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4924 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4924 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10902 (4 : Fin 5)) = canonicalInput15094.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10902 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection366 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10902 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection366 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15094 hH))).trans (reductionSound366 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode7678).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10902 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7678).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10902 (j : Fin 5)))
      1 288 1440 5 ![1440, 1440, 288, 288, 288] ![1, 1, 5, 5, 5] reductionProjection10902 ![oldProjection2519, oldProjection2063, reductionProjection4965, reductionProjection4924, reductionProjection366]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10903 : Integer.Sparse (Fin 1613) := [(0, 3), (20, 1), (87, -144), (90, 128), (94, -8), (243, 32), (698, 256), (700, 32), (763, 144), (1226, 320), (1227, 192), (1251, -44), (1341, 288)]

def reductionPivot10903 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, -1, -1, 3], ![-1, -1, 3, -1], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 0, 0, -1]]

theorem reductionSound10903 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode7679).moment H =
      Integer.Sparse.eval reductionProjection10903 (momentVector H) := by
  have heq : reductionPivot10903 = (fun u v => (normalNode7679).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7679).moment H = injectiveMoment H reductionPivot10903 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7679).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot10903 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10903 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 720, 1440, 18, 18] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10903 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2544, oldProjection2542, reductionProjection4964, reductionProjection355, reductionProjection355] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10903 (0 : Fin 5)) = canonicalInput19442.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10903 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2544 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10903 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2544 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19442 hH))).trans (oldProjectionSound2544 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10903 (1 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw6130 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10903 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2542 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10903 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2542 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6130 hH))).trans (oldProjectionSound2542 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10903 (2 : Fin 5)) = canonicalInput15102.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10903 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4964 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10903 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4964 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15102 hH))).trans (reductionSound4964 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10903 (3 : Fin 5)) = canonicalInput15096.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10903 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection355 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10903 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection355 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15096 hH))).trans (reductionSound355 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10903 (4 : Fin 5)) = (normalNode7685).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10903 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection355 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10903 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection355 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound355 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode7679).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10903 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7679).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10903 (j : Fin 5)))
      1 288 1440 5 ![288, 720, 1440, 18, 18] ![5, 2, 1, 80, 80] reductionProjection10903 ![oldProjection2544, oldProjection2542, reductionProjection4964, reductionProjection355, reductionProjection355]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10904 : Integer.Sparse (Fin 1613) := [(87, -120), (88, 16), (90, 112), (94, 3), (698, 272), (700, 16), (955, 72), (1226, 216), (1227, 104), (1251, -25), (1341, 144)]

def reductionPivot10904 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, -1, -1, 3], ![-1, -1, 3, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 1, -1, -1]]

theorem reductionSound10904 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode7680).moment H =
      Integer.Sparse.eval reductionProjection10904 (momentVector H) := by
  have heq : reductionPivot10904 = (fun u v => (normalNode7680).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7680).moment H = injectiveMoment H reductionPivot10904 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7680).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot10904 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10904 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 18, 18, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10904 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2517, oldProjection2070, reductionProjection373, reductionProjection355, reductionProjection366] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10904 (0 : Fin 5)) = canonicalInput19443.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10904 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2517 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10904 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2517 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19443 hH))).trans (oldProjectionSound2517 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10904 (1 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw6131 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10904 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2070 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10904 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2070 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6131 hH))).trans (oldProjectionSound2070 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10904 (2 : Fin 5)) = (normalNode7689).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10904 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection373 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10904 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection373 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound373 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10904 (3 : Fin 5)) = canonicalInput15099.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10904 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection355 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10904 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection355 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15099 hH))).trans (reductionSound355 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10904 (4 : Fin 5)) = canonicalInput15098.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10904 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection366 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10904 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection366 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15098 hH))).trans (reductionSound366 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode7680).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10904 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7680).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10904 (j : Fin 5)))
      1 144 1440 10 ![1440, 1440, 18, 18, 288] ![1, 1, 80, 80, 5] reductionProjection10904 ![oldProjection2517, oldProjection2070, reductionProjection373, reductionProjection355, reductionProjection366]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10905 : Integer.Sparse (Fin 1613) := [(0, -1), (87, -180), (90, 160), (94, 20), (698, 560), (700, 40), (768, 180), (955, 180), (1226, 320), (1227, 160), (1251, -35), (1341, 180)]

def reductionPivot10905 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, -1, -1, 3], ![-1, -1, 3, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 0, -1]]

theorem reductionSound10905 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * (normalNode7681).moment H =
      Integer.Sparse.eval reductionProjection10905 (momentVector H) := by
  have heq : reductionPivot10905 = (fun u v => (normalNode7681).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7681).moment H = injectiveMoment H reductionPivot10905 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7681).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot10905 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10905 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 18, 288, 18] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10905 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2545, oldProjection2532, reductionProjection358, reductionProjection4924, reductionProjection355] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10905 (0 : Fin 5)) = canonicalInput19444.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10905 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2545 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10905 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2545 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19444 hH))).trans (oldProjectionSound2545 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10905 (1 : Fin 5)) = canonicalInput15146.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10905 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2532 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10905 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2532 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15146 hH))).trans (oldProjectionSound2532 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10905 (2 : Fin 5)) = canonicalInput15104.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10905 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection358 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10905 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection358 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15104 hH))).trans (reductionSound358 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10905 (3 : Fin 5)) = canonicalInput15101.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10905 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4924 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10905 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4924 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15101 hH))).trans (reductionSound4924 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10905 (4 : Fin 5)) = canonicalInput15099.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10905 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection355 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10905 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection355 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15099 hH))).trans (reductionSound355 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode7681).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10905 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7681).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10905 (j : Fin 5)))
      1 360 1440 4 ![1440, 1440, 18, 288, 18] ![1, 1, 80, 5, 80] reductionProjection10905 ![oldProjection2545, oldProjection2532, reductionProjection358, reductionProjection4924, reductionProjection355]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10906 : Integer.Sparse (Fin 1613) := [(0, -1), (87, -960), (88, 240), (90, 720), (94, 5), (243, 80), (698, 1520), (700, 80), (955, 1440), (1004, 720), (1015, 720), (1024, 720), (1226, 1280), (1227, 560), (1251, -110), (1341, 720)]

def reductionPivot10906 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, -1, -1, 3], ![-1, -1, 3, -1], ![0, 2, -1, -1], ![1, -1, 0, 0], ![1, 0, 0, -1]]

theorem reductionSound10906 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode7682).moment H =
      Integer.Sparse.eval reductionProjection10906 (momentVector H) := by
  have heq : reductionPivot10906 = (fun u v => (normalNode7682).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7682).moment H = injectiveMoment H reductionPivot10906 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7682).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot10906 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10906 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 144, 18, 18, 18] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10906 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2075, oldProjection2069, reductionProjection4967, reductionProjection358, reductionProjection373] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10906 (0 : Fin 5)) = canonicalInput19445.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10906 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2075 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10906 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2075 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19445 hH))).trans (oldProjectionSound2075 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10906 (1 : Fin 5)) = canonicalInput15148.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10906 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2069 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10906 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2069 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15148 hH))).trans (oldProjectionSound2069 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10906 (2 : Fin 5)) = (normalNode7690).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10906 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4967 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10906 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4967 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4967 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10906 (3 : Fin 5)) = canonicalInput15104.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10906 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection358 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10906 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection358 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15104 hH))).trans (reductionSound358 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10906 (4 : Fin 5)) = (normalNode7689).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10906 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection373 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10906 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection373 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound373 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode7682).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10906 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7682).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10906 (j : Fin 5)))
      1 1440 1440 1 ![1440, 144, 18, 18, 18] ![1, 10, 80, 80, 80] reductionProjection10906 ![oldProjection2075, oldProjection2069, reductionProjection4967, reductionProjection358, reductionProjection373]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10907 : Integer.Sparse (Fin 1613) := [(0, -2), (76, -240), (79, -480), (81, -240), (87, -480), (88, 240), (90, 640), (94, 35), (241, 80), (243, 160), (426, 720), (698, 880), (700, 240), (763, 1440), (768, 720), (782, 720), (1024, 720), (1059, 80), (1226, 1040), (1227, 400), (1251, -55)]

def reductionPivot10907 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, -1, -1, 3], ![-1, -1, 3, -1], ![0, 2, 0, -2], ![1, -1, 0, 0], ![1, 0, -1, 0]]

theorem reductionSound10907 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode7683).moment H =
      Integer.Sparse.eval reductionProjection10907 (momentVector H) := by
  have heq : reductionPivot10907 = (fun u v => (normalNode7683).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7683).moment H = injectiveMoment H reductionPivot10907 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7683).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot10907 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10907 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 72, 18, 1440, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10907 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2020, oldProjection1993, reductionProjection4967, reductionProjection4964, reductionProjection4965] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10907 (0 : Fin 5)) = canonicalInput19446.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10907 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2020 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10907 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2020 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19446 hH))).trans (oldProjectionSound2020 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10907 (1 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw6140 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10907 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1993 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10907 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1993 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6140 hH))).trans (oldProjectionSound1993 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10907 (2 : Fin 5)) = canonicalInput15109.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10907 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4967 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10907 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4967 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15109 hH))).trans (reductionSound4967 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10907 (3 : Fin 5)) = canonicalInput15107.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10907 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4964 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10907 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4964 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15107 hH))).trans (reductionSound4964 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10907 (4 : Fin 5)) = canonicalInput15106.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10907 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4965 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10907 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4965 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15106 hH))).trans (reductionSound4965 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode7683).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10907 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7683).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10907 (j : Fin 5)))
      1 1440 1440 1 ![1440, 72, 18, 1440, 288] ![1, 20, 80, 1, 5] reductionProjection10907 ![oldProjection2020, oldProjection1993, reductionProjection4967, reductionProjection4964, reductionProjection4965]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10908 : Integer.Sparse (Fin 1613) := [(0, -1), (87, -120), (90, 80), (94, 10), (596, 360), (618, 360), (698, 360), (1226, 240), (1227, 160), (1251, -45), (1284, 180), (1339, -360), (1341, 180), (1352, 180), (1356, 180)]

def reductionPivot10908 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-1, -1, -1, 3], ![-1, -1, 3, -1], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, 1, -1, -1]]

theorem reductionSound10908 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * (normalNode7686).moment H =
      Integer.Sparse.eval reductionProjection10908 (momentVector H) := by
  have heq : reductionPivot10908 = (fun u v => (normalNode7686).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7686).moment H = injectiveMoment H reductionPivot10908 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7686).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot10908 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10908 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 1, 18, 18] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10908 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2513, oldProjection2518, reductionProjection4963, reductionProjection355, reductionProjection10384] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10908 (0 : Fin 5)) = canonicalInput20078.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10908 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2513 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10908 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2513 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20078 hH))).trans (oldProjectionSound2513 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10908 (1 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2518⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10908 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2518 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10908 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2518 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2518 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10908 (2 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code1339).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10908 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4963 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10908 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4963 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4963 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10908 (3 : Fin 5)) = canonicalInput15099.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10908 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection355 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10908 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection355 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15099 hH))).trans (reductionSound355 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10908 (4 : Fin 5)) = canonicalInput15097.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10908 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10384 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10908 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10384 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15097 hH))).trans (reductionSound10384 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode7686).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10908 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7686).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10908 (j : Fin 5)))
      1 360 1440 4 ![1440, 1440, 1, 18, 18] ![1, 1, 1440, 80, 80] reductionProjection10908 ![oldProjection2513, oldProjection2518, reductionProjection4963, reductionProjection355, reductionProjection10384]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10909 : Integer.Sparse (Fin 1613) := [(87, -144), (88, 32), (90, 80), (94, -1), (243, 32), (596, 144), (618, 144), (698, 256), (700, 16), (955, 144), (1004, 144), (1015, 144), (1024, 144), (1219, -96), (1226, 208), (1227, 128), (1251, -13), (1284, 144), (1338, -288)]

def reductionPivot10909 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-1, -1, -1, 3], ![-1, -1, 3, -1], ![0, 2, -1, -1], ![1, -1, -1, 1], ![1, 0, 0, -1]]

theorem reductionSound10909 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode7687).moment H =
      Integer.Sparse.eval reductionProjection10909 (momentVector H) := by
  have heq : reductionPivot10909 = (fun u v => (normalNode7687).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7687).moment H = injectiveMoment H reductionPivot10909 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7687).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot10909 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10909 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 18, 18, 1] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10909 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2074, oldProjection2068, reductionProjection10892, reductionProjection358, reductionProjection4976] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10909 (0 : Fin 5)) = canonicalInput20079.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10909 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2074 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10909 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2074 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20079 hH))).trans (oldProjectionSound2074 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10909 (1 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw6154 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10909 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2068 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10909 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2068 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6154 hH))).trans (oldProjectionSound2068 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10909 (2 : Fin 5)) = (normalNode7691).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10909 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10892 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10909 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10892 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10892 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10909 (3 : Fin 5)) = canonicalInput15104.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10909 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection358 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10909 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection358 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15104 hH))).trans (reductionSound358 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10909 (4 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code1338).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10909 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4976 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10909 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4976 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4976 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode7687).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10909 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7687).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10909 (j : Fin 5)))
      1 288 1440 5 ![1440, 1440, 18, 18, 1] ![1, 1, 80, 80, 1440] reductionProjection10909 ![oldProjection2074, oldProjection2068, reductionProjection10892, reductionProjection358, reductionProjection4976]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10910 : Integer.Sparse (Fin 1613) := [(19, 2), (87, 12), (94, -1), (247, -8), (698, -8), (1055, 12), (1219, 24), (1226, -8), (1227, -8), (1251, 1)]

def reductionPivot10910 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-1, -1, 1, 1], ![0, 1, 1, -2], ![0, 1, 1, -2], ![1, 0, -3, 2]]

theorem reductionSound10910 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * (normalNode9427).moment H =
      Integer.Sparse.eval reductionProjection10910 (momentVector H) := by
  have heq : reductionPivot10910 = (fun u v => (normalNode9427).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9427).moment H = injectiveMoment H reductionPivot10910 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9427).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10910 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10910 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![3, 720, 720, 360] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10910 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection795, oldProjection1116, oldProjection1116, oldProjection1129] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10910 (0 : Fin 4)) = (normalNode7077).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10910 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection795 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10910 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection795 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound795 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10910 (1 : Fin 4)) = canonicalInput18266.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10910 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1116 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10910 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1116 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound18266 hH))).trans (oldProjectionSound1116 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10910 (2 : Fin 4)) = canonicalInput18326.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10910 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1116 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10910 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1116 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound18326 hH))).trans (oldProjectionSound1116 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10910 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1129⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10910 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1129 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10910 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1129 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1129 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9427).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10910 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9427).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10910 (j : Fin 4)))
      2 72 720 20 ![3, 720, 720, 360] ![240, 1, 1, 2] reductionProjection10910 ![reductionProjection795, oldProjection1116, oldProjection1116, oldProjection1129]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10911 : Integer.Sparse (Fin 1613) := [(0, 2), (19, 80), (20, -10), (45, 240), (62, 240), (94, 15), (108, -80), (243, -80), (247, -80), (698, -80), (700, -80), (1047, 240), (1219, 480), (1251, -5)]

def reductionPivot10911 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-1, -1, -1, 3], ![0, -1, -1, 2], ![0, 0, 3, -3], ![1, 1, -1, -1]]

theorem reductionSound10911 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode7848).moment H =
      Integer.Sparse.eval reductionProjection10911 (momentVector H) := by
  have heq : reductionPivot10911 = (fun u v => (normalNode7848).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7848).moment H = injectiveMoment H reductionPivot10911 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7848).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot10911 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10911 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 720, 144, 3] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10911 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1104, oldProjection960, reductionProjection535, reductionProjection83] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10911 (0 : Fin 4)) = canonicalInput20194.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10911 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1104 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10911 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1104 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20194 hH))).trans (oldProjectionSound1104 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10911 (1 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node960⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10911 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection960 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10911 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection960 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound960 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10911 (2 : Fin 4)) = (normalNode7852).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10911 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection535 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10911 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection535 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound535 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10911 (3 : Fin 4)) = canonicalInput15261.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10911 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection83 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10911 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection83 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15261 hH))).trans (reductionSound83 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7848).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10911 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7848).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10911 (j : Fin 4)))
      2 1440 1440 2 ![720, 720, 144, 3] ![2, 2, 10, 480] reductionProjection10911 ![oldProjection1104, oldProjection960, reductionProjection535, reductionProjection83]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization
