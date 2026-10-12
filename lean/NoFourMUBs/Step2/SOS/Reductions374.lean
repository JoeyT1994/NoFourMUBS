import NoFourMUBs.Step2.SOS.Canonical232
import NoFourMUBs.Step2.SOS.Canonical233
import NoFourMUBs.Step2.SOS.Canonical301
import NoFourMUBs.Step2.SOS.Canonical302
import NoFourMUBs.Step2.SOS.Canonical303
import NoFourMUBs.Step2.SOS.Canonical305
import NoFourMUBs.Step2.SOS.Canonical306
import NoFourMUBs.Step2.SOS.Canonical307
import NoFourMUBs.Step2.SOS.Canonical308
import NoFourMUBs.Step2.SOS.Canonical309
import NoFourMUBs.Step2.SOS.Canonical310
import NoFourMUBs.Step2.SOS.Canonical311
import NoFourMUBs.Step2.SOS.Canonical312
import NoFourMUBs.Step2.SOS.Canonical313
import NoFourMUBs.Step2.SOS.Canonical322
import NoFourMUBs.Step2.SOS.Canonical350
import NoFourMUBs.Step2.SOS.Canonical353
import NoFourMUBs.Step2.SOS.Canonical366
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.OldProjections011
import NoFourMUBs.Step2.SOS.OldProjections012
import NoFourMUBs.Step2.SOS.OldProjections013
import NoFourMUBs.Step2.SOS.OldProjections014
import NoFourMUBs.Step2.SOS.OldProjections015
import NoFourMUBs.Step2.SOS.OldProjections017
import NoFourMUBs.Step2.SOS.OldProjections018
import NoFourMUBs.Step2.SOS.OldProjections022
import NoFourMUBs.Step2.SOS.OldProjections023
import NoFourMUBs.Step2.SOS.OldProjections024
import NoFourMUBs.Step2.SOS.OldProjections025
import NoFourMUBs.Step2.SOS.OldProjections028
import NoFourMUBs.Step2.SOS.OldProjections032
import NoFourMUBs.Step2.SOS.OldProjections033
import NoFourMUBs.Step2.SOS.OldProjections034
import NoFourMUBs.Step2.SOS.OldProjections036
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions030
import NoFourMUBs.Step2.SOS.Reductions031
import NoFourMUBs.Step2.SOS.Reductions061
import NoFourMUBs.Step2.SOS.Reductions062
import NoFourMUBs.Step2.SOS.Reductions084
import NoFourMUBs.Step2.SOS.Reductions100
import NoFourMUBs.Step2.SOS.Reductions113
import NoFourMUBs.Step2.SOS.Reductions126
import NoFourMUBs.Step2.SOS.Reductions176
import NoFourMUBs.Step2.SOS.Reductions199
import NoFourMUBs.Step2.SOS.Reductions200
import NoFourMUBs.Step2.SOS.Reductions201
import NoFourMUBs.Step2.SOS.Reductions205
import NoFourMUBs.Step2.SOS.Reductions217
import NoFourMUBs.Step2.SOS.Reductions225
import NoFourMUBs.Step2.SOS.Reductions230
import NoFourMUBs.Step2.SOS.Reductions265
import NoFourMUBs.Step2.SOS.Reductions275
import NoFourMUBs.Step2.SOS.Reductions282
import NoFourMUBs.Step2.SOS.Reductions286
import NoFourMUBs.Step2.SOS.Reductions287
import NoFourMUBs.Step2.SOS.Reductions316
import NoFourMUBs.Step2.SOS.Reductions317
import NoFourMUBs.Step2.SOS.Reductions323
import NoFourMUBs.Step2.SOS.Reductions333
import NoFourMUBs.Step2.SOS.Reductions337
import NoFourMUBs.Step2.SOS.Reductions339
import NoFourMUBs.Step2.SOS.Reductions347
import NoFourMUBs.Step2.SOS.Reductions348
import NoFourMUBs.Step2.SOS.Reductions350
import NoFourMUBs.Step2.SOS.Reductions351
import NoFourMUBs.Step2.SOS.Reductions352
import NoFourMUBs.Step2.SOS.Reductions355
import NoFourMUBs.Step2.SOS.Reductions361
import NoFourMUBs.Step2.SOS.Reductions362
import NoFourMUBs.Step2.SOS.Reductions369
import NoFourMUBs.Step2.SOS.Reductions370
import NoFourMUBs.Step2.SOS.Reductions372
import NoFourMUBs.Step2.SOS.Reductions373
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical222
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical225
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical226
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical237
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes39
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection11968 : Integer.Sparse (Fin 1613) := [(0, 6), (19, -90), (20, 5), (94, 25), (241, 80), (243, 200), (247, 40), (698, 400), (700, 80), (704, 40), (1059, 80), (1225, 40), (1226, 200), (1227, 120), (1251, -20)]

def reductionPivot11968 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-1, 0, -2, 3], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 2, -2]]

theorem reductionSound11968 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode9890).moment H =
      Integer.Sparse.eval reductionProjection11968 (momentVector H) := by
  have heq : reductionPivot11968 = (fun u v => (normalNode9890).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9890).moment H = injectiveMoment H reductionPivot11968 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9890).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot11968 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11968 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 720, 144, 720, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11968 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2507, reductionProjection11948, reductionProjection11967, reductionProjection10347, reductionProjection8828] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11968 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2507⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11968 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2507 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11968 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2507 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2507 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11968 (1 : Fin 5)) = (normalNode9921).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11968 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11948 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11968 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11948 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound11948 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11968 (2 : Fin 5)) = canonicalInput19637.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11968 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11967 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11968 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11967 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19637 hH))).trans (reductionSound11967 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11968 (3 : Fin 5)) = canonicalInput19642.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11968 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10347 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11968 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10347 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19642 hH))).trans (reductionSound10347 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11968 (4 : Fin 5)) = (normalNode9966).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11968 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8828 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11968 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8828 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8828 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode9890).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11968 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9890).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11968 (j : Fin 5)))
      1 720 1440 2 ![1440, 720, 144, 720, 1440] ![1, 2, 10, 2, 1] reductionProjection11968 ![oldProjection2507, reductionProjection11948, reductionProjection11967, reductionProjection10347, reductionProjection8828]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11969 : Integer.Sparse (Fin 1613) := [(0, -1), (19, 4), (20, -1), (94, -4), (1251, -22)]

def reductionPivot11969 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, 0, -2, 3], ![0, 0, 2, -2], ![0, 1, -1, 0], ![1, -1, 0, 0]]

theorem reductionSound11969 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode9963).moment H =
      Integer.Sparse.eval reductionProjection11969 (momentVector H) := by
  have heq : reductionPivot11969 = (fun u v => (normalNode9963).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9963).moment H = injectiveMoment H reductionPivot11969 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9963).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot11969 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11969 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 144, 720, 360] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11969 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1264, oldProjection1225, oldProjection1221, oldProjection1220] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11969 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1264⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11969 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1264 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11969 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1264 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1264 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11969 (1 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1225⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11969 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1225 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11969 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1225 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1225 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11969 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1221⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11969 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1221 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11969 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1221 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1221 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11969 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1220⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11969 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1220 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11969 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1220 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1220 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9963).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11969 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9963).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11969 (j : Fin 4)))
      2 288 1440 10 ![720, 144, 720, 360] ![2, 10, 2, 4] reductionProjection11969 ![oldProjection1264, oldProjection1225, oldProjection1221, oldProjection1220]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11970 : Integer.Sparse (Fin 1613) := [(0, 3), (19, 60), (20, -15), (94, 35), (241, -160), (243, -320), (698, -320), (700, -80), (1225, -80), (1226, -240), (1251, 55)]

def reductionPivot11970 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, 0, -2, 3], ![0, 1, -1, 0], ![0, 1, 2, -3], ![1, -2, 0, 1]]

theorem reductionSound11970 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode9968).moment H =
      Integer.Sparse.eval reductionProjection11970 (momentVector H) := by
  have heq : reductionPivot11970 = (fun u v => (normalNode9968).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9968).moment H = injectiveMoment H reductionPivot11970 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9968).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot11970 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11970 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 36, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11970 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1003, oldProjection803, oldProjection1232, oldProjection1231] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11970 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw7237 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11970 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1003 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11970 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1003 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7237 hH))).trans (oldProjectionSound1003 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11970 (1 : Fin 4)) = canonicalInput19683.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11970 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection803 (momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11970 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection803 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19683 hH))).trans (oldProjectionSound803 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11970 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1232⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11970 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1232 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11970 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1232 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1232 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11970 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1231⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11970 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1231 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11970 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1231 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1231 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9968).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11970 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9968).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11970 (j : Fin 4)))
      2 1440 1440 2 ![720, 36, 144, 144] ![2, 40, 10, 10] reductionProjection11970 ![oldProjection1003, oldProjection803, oldProjection1232, oldProjection1231]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11971 : Integer.Sparse (Fin 1613) := [(19, -28), (20, 1), (94, -3), (241, 32), (243, 80), (698, 80), (700, 32), (704, 16), (1225, 16), (1226, 64), (1251, 4)]

def reductionPivot11971 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-1, 0, -2, 3], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 2, -3], ![1, -1, 0, 0]]

theorem reductionSound11971 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode9891).moment H =
      Integer.Sparse.eval reductionProjection11971 (momentVector H) := by
  have heq : reductionPivot11971 = (fun u v => (normalNode9891).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9891).moment H = injectiveMoment H reductionPivot11971 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9891).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot11971 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11971 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 1440, 720, 288, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11971 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection10659, reductionProjection2716, reductionProjection11958, reductionProjection11969, reductionProjection11970] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11971 (0 : Fin 5)) = (normalNode7466).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11971 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10659 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11971 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10659 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10659 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11971 (1 : Fin 5)) = (normalNode9923).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11971 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2716 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11971 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2716 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2716 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11971 (2 : Fin 5)) = canonicalInput19638.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11971 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11958 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11971 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11958 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19638 hH))).trans (reductionSound11958 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11971 (3 : Fin 5)) = canonicalInput19643.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11971 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11969 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11971 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11969 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19643 hH))).trans (reductionSound11969 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11971 (4 : Fin 5)) = (normalNode9968).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11971 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11970 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11971 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11970 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound11970 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode9891).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11971 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9891).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11971 (j : Fin 5)))
      1 288 1440 5 ![720, 1440, 720, 288, 1440] ![2, 1, 2, 5, 1] reductionProjection11971 ![reductionProjection10659, reductionProjection2716, reductionProjection11958, reductionProjection11969, reductionProjection11970]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11972 : Integer.Sparse (Fin 1613) := [(0, -3), (19, -80), (20, -35), (241, 80), (243, 400), (698, 160), (700, 80), (1052, -240), (1217, -240), (1225, 160), (1226, 240), (1251, 30)]

def reductionPivot11972 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-1, 0, -2, 3], ![0, 0, 3, -3], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 0, 0]]

theorem reductionSound11972 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode9900).moment H =
      Integer.Sparse.eval reductionProjection11972 (momentVector H) := by
  have heq : reductionPivot11972 = (fun u v => (normalNode9900).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9900).moment H = injectiveMoment H reductionPivot11972 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9900).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot11972 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11972 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![144, 1440, 1440, 144, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11972 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection10157, reductionProjection11104, reductionProjection11913, oldProjection1225, reductionProjection9035] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11972 (0 : Fin 5)) = (normalNode7473).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11972 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10157 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11972 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10157 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10157 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11972 (1 : Fin 5)) = (normalNode9940).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11972 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11104 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11972 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11104 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound11104 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11972 (2 : Fin 5)) = canonicalInput19652.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11972 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11913 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11972 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11913 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19652 hH))).trans (reductionSound11913 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11972 (3 : Fin 5)) = canonicalInput19655.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11972 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1225 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11972 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1225 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19655 hH))).trans (oldProjectionSound1225 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11972 (4 : Fin 5)) = (normalNode9972).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11972 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9035 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11972 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9035 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9035 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode9900).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11972 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9900).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11972 (j : Fin 5)))
      1 1440 1440 1 ![144, 1440, 1440, 144, 288] ![10, 1, 1, 10, 5] reductionProjection11972 ![reductionProjection10157, reductionProjection11104, reductionProjection11913, oldProjection1225, reductionProjection9035]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11973 : Integer.Sparse (Fin 1613) := [(3, 2), (19, 6), (20, 1), (94, -8), (105, -8), (241, -8), (1251, 3)]

def reductionPivot11973 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-1, 0, 3, -2], ![0, -1, -3, 4], ![0, 1, 0, -1], ![1, -1, 0, 0]]

theorem reductionSound11973 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode10913).moment H =
      Integer.Sparse.eval reductionProjection11973 (momentVector H) := by
  have heq : reductionPivot11973 = (fun u v => (normalNode10913).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10913).moment H = injectiveMoment H reductionPivot11973 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10913).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot11973 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11973 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11973 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection9213, oldProjection1225, oldProjection1300, oldProjection919] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11973 (0 : Fin 4)) = canonicalInput23444.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11973 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9213 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11973 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9213 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23444 hH))).trans (reductionSound9213 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11973 (1 : Fin 4)) = canonicalInput22447.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11973 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1225 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11973 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1225 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22447 hH))).trans (oldProjectionSound1225 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11973 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw7613 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11973 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1300 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11973 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1300 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7613 hH))).trans (oldProjectionSound1300 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11973 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw7612 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11973 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection919 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11973 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection919 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7612 hH))).trans (oldProjectionSound919 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10913).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11973 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10913).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11973 (j : Fin 4)))
      2 144 144 2 ![144, 144, 144, 144] ![1, 1, 1, 1] reductionProjection11973 ![reductionProjection9213, oldProjection1225, oldProjection1300, oldProjection919]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11974 : Integer.Sparse (Fin 1613) := [(19, 12), (20, 11), (94, 10), (106, -16), (241, -16), (243, -64), (244, -32), (1045, 48), (1053, 48), (1225, -32), (1251, -5)]

def reductionPivot11974 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, 0, -2, 3], ![0, 0, 4, -4], ![0, 1, -1, 0], ![1, -2, 0, 1]]

theorem reductionSound11974 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode9976).moment H =
      Integer.Sparse.eval reductionProjection11974 (momentVector H) := by
  have heq : reductionPivot11974 = (fun u v => (normalNode9976).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9976).moment H = injectiveMoment H reductionPivot11974 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9976).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot11974 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11974 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![36, 144, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11974 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection9152, oldProjection1232, oldProjection1229, oldProjection1228] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11974 (0 : Fin 4)) = canonicalInput22594.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11974 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9152 (momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11974 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9152 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22594 hH))).trans (reductionSound9152 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11974 (1 : Fin 4)) = canonicalInput19686.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11974 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1232 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11974 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1232 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19686 hH))).trans (oldProjectionSound1232 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11974 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1229⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11974 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1229 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11974 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1229 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1229 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11974 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1228⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11974 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1228 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11974 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1228 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1228 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9976).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11974 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9976).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11974 (j : Fin 4)))
      2 288 288 2 ![36, 144, 144, 144] ![8, 2, 2, 2] reductionProjection11974 ![reductionProjection9152, oldProjection1232, oldProjection1229, oldProjection1228]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11975 : Integer.Sparse (Fin 1613) := [(3, -12), (4, 3), (19, 8), (20, 2), (94, -13), (105, 16), (106, 32), (241, 32), (243, 80), (244, 32), (1045, -48), (1053, -48), (1225, 32), (1251, -8)]

def reductionPivot11975 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-1, 0, -2, 3], ![0, 0, 4, -4], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, -1, 0, 0]]

theorem reductionSound11975 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode9904).moment H =
      Integer.Sparse.eval reductionProjection11975 (momentVector H) := by
  have heq : reductionPivot11975 = (fun u v => (normalNode9904).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9904).moment H = injectiveMoment H reductionPivot11975 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9904).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot11975 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11975 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 144, 288, 288, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11975 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection10789, reductionProjection11973, reductionProjection11920, reductionProjection11920, reductionProjection11974] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11975 (0 : Fin 5)) = (normalNode7478).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11975 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10789 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11975 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10789 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10789 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11975 (1 : Fin 5)) = canonicalInput19609.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11975 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11973 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11975 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11973 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19609 hH))).trans (reductionSound11973 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11975 (2 : Fin 5)) = canonicalInput19658.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11975 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11920 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11975 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11920 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19658 hH))).trans (reductionSound11920 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11975 (3 : Fin 5)) = canonicalInput19659.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11975 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11920 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11975 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11920 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19659 hH))).trans (reductionSound11920 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11975 (4 : Fin 5)) = (normalNode9976).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11975 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11974 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11975 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11974 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound11974 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode9904).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11975 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9904).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11975 (j : Fin 5)))
      1 288 288 1 ![288, 144, 288, 288, 288] ![1, 2, 1, 1, 1] reductionProjection11975 ![reductionProjection10789, reductionProjection11973, reductionProjection11920, reductionProjection11920, reductionProjection11974]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11976 : Integer.Sparse (Fin 1613) := [(0, -6), (19, -180), (20, 25), (94, 45), (229, -240), (238, -240), (241, 480), (243, 400), (244, 80), (247, 320), (698, 320), (700, 240), (701, 80), (704, 320), (1059, 80), (1251, 10)]

def reductionPivot11976 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-1, 0, -2, 3], ![0, -1, 1, 0], ![0, 0, -1, 1], ![0, 2, 2, -4], ![1, 0, -1, 0]]

theorem reductionSound11976 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode9909).moment H =
      Integer.Sparse.eval reductionProjection11976 (momentVector H) := by
  have heq : reductionPivot11976 = (fun u v => (normalNode9909).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9909).moment H = injectiveMoment H reductionPivot11976 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9909).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot11976 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11976 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 288, 1440, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11976 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection6437, reductionProjection6433, reductionProjection6386, reductionProjection11838, reductionProjection6404] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11976 (0 : Fin 5)) = (normalNode7883).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11976 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6437 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11976 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6437 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6437 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11976 (1 : Fin 5)) = (normalNode9854).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11976 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6433 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11976 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6433 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6433 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11976 (2 : Fin 5)) = canonicalInput19576.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11976 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6386 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11976 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6386 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19576 hH))).trans (reductionSound6386 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11976 (3 : Fin 5)) = canonicalInput19579.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11976 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11838 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11976 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11838 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19579 hH))).trans (reductionSound11838 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11976 (4 : Fin 5)) = (normalNode9914).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11976 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6404 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11976 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6404 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6404 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode9909).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11976 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9909).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11976 (j : Fin 5)))
      1 1440 1440 1 ![1440, 288, 1440, 1440, 1440] ![1, 5, 1, 1, 1] reductionProjection11976 ![reductionProjection6437, reductionProjection6433, reductionProjection6386, reductionProjection11838, reductionProjection6404]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11977 : Integer.Sparse (Fin 1613) := [(0, 1), (3, 60), (4, -5), (19, 120), (20, -15), (94, 35), (105, -160), (106, -80), (108, -80), (241, -160), (243, -320), (247, -80), (698, -80), (1225, -80), (1226, -80)]

def reductionPivot11977 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, 0, -2, 3], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -2, 4, -3]]

theorem reductionSound11977 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode9957).moment H =
      Integer.Sparse.eval reductionProjection11977 (momentVector H) := by
  have heq : reductionPivot11977 = (fun u v => (normalNode9957).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9957).moment H = injectiveMoment H reductionPivot11977 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9957).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot11977 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11977 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 72, 144, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11977 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection6578, reductionProjection6398, oldProjection905, oldProjection1046] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11977 (0 : Fin 4)) = canonicalInput19326.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11977 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6578 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11977 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6578 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19326 hH))).trans (reductionSound6578 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11977 (1 : Fin 4)) = canonicalInput19663.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11977 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6398 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11977 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6398 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19663 hH))).trans (reductionSound6398 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11977 (2 : Fin 4)) = canonicalInput19672.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11977 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection905 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11977 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection905 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19672 hH))).trans (oldProjectionSound905 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11977 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw7111 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11977 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1046 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11977 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1046 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7111 hH))).trans (oldProjectionSound1046 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9957).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11977 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9957).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11977 (j : Fin 4)))
      2 1440 1440 2 ![144, 72, 144, 720] ![10, 20, 10, 2] reductionProjection11977 ![reductionProjection6578, reductionProjection6398, oldProjection905, oldProjection1046]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11978 : Integer.Sparse (Fin 1613) := [(0, -2), (3, -80), (4, 10), (19, -280), (20, -15), (94, 30), (105, 160), (106, 80), (108, 80), (241, 160), (243, 720), (247, 80), (698, 400), (700, 160), (704, 80), (1225, 240), (1226, 400), (1227, 80), (1251, 25)]

def reductionPivot11978 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-1, 0, -2, 3], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 3, -3]]

theorem reductionSound11978 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode9913).moment H =
      Integer.Sparse.eval reductionProjection11978 (momentVector H) := by
  have heq : reductionPivot11978 = (fun u v => (normalNode9913).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9913).moment H = injectiveMoment H reductionPivot11978 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9913).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot11978 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11978 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 720, 288, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11978 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2548, reductionProjection11867, reductionProjection11820, reductionProjection11917, reductionProjection11977] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11978 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2548⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11978 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2548 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11978 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2548 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2548 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11978 (1 : Fin 5)) = (normalNode9906).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11978 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11867 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11978 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11867 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound11867 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11978 (2 : Fin 5)) = canonicalInput19617.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11978 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11820 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11978 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11820 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19617 hH))).trans (reductionSound11820 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11978 (3 : Fin 5)) = canonicalInput19620.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11978 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11917 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11978 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11917 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19620 hH))).trans (reductionSound11917 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11978 (4 : Fin 5)) = (normalNode9957).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11978 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11977 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11978 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11977 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound11977 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode9913).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11978 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9913).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11978 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 720, 288, 1440] ![1, 1, 2, 5, 1] reductionProjection11978 ![oldProjection2548, reductionProjection11867, reductionProjection11820, reductionProjection11917, reductionProjection11977]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11979 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -24), (94, 14), (243, 64), (244, 16), (698, 64), (700, 48), (1058, -48), (1059, 16), (1226, 32), (1251, -1)]

def reductionPivot11979 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, 0, -2, 3], ![0, -1, 3, -2], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, 0, 0]]

theorem reductionSound11979 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode9936).moment H =
      Integer.Sparse.eval reductionProjection11979 (momentVector H) := by
  have heq : reductionPivot11979 = (fun u v => (normalNode9936).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9936).moment H = injectiveMoment H reductionPivot11979 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9936).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot11979 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11979 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 1440, 1440, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11979 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection10138, oldProjection2422, reductionProjection11104, reductionProjection11104, reductionProjection11137] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11979 (0 : Fin 5)) = (normalNode9721).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11979 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10138 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11979 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10138 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10138 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11979 (1 : Fin 5)) = canonicalInput19595.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11979 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2422 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11979 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2422 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19595 hH))).trans (oldProjectionSound2422 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11979 (2 : Fin 5)) = (normalNode9940).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11979 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11104 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11979 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11104 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound11104 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11979 (3 : Fin 5)) = canonicalInput19603.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11979 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11104 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11979 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11104 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19603 hH))).trans (reductionSound11104 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11979 (4 : Fin 5)) = (normalNode9942).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11979 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11137 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11979 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11137 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound11137 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode9936).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11979 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9936).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11979 (j : Fin 5)))
      1 288 1440 5 ![288, 1440, 1440, 1440, 1440] ![5, 1, 1, 1, 1] reductionProjection11979 ![reductionProjection10138, oldProjection2422, reductionProjection11104, reductionProjection11104, reductionProjection11137]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11980 : Integer.Sparse (Fin 1613) := [(0, 4), (3, 20), (19, 100), (20, -15), (94, -45), (105, -80), (108, -80), (241, -160), (242, 240), (243, -160), (247, -160), (697, 240), (698, -160), (1226, -80), (1251, -30), (1323, 240)]

def reductionPivot11980 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, 0, -2, 3], ![0, 1, -2, 1], ![0, 1, 0, -1], ![1, -2, 3, -2]]

theorem reductionSound11980 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode9965).moment H =
      Integer.Sparse.eval reductionProjection11980 (momentVector H) := by
  have heq : reductionPivot11980 = (fun u v => (normalNode9965).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9965).moment H = injectiveMoment H reductionPivot11980 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9965).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot11980 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11980 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 720, 3, 72] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11980 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1050, oldProjection1046, reductionProjection6948, reductionProjection6398] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11980 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw7226 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11980 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1050 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11980 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1050 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7226 hH))).trans (oldProjectionSound1050 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11980 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw7111 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11980 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1046 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11980 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1046 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7111 hH))).trans (oldProjectionSound1046 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11980 (2 : Fin 4)) = (normalNode9978).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11980 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6948 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11980 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6948 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6948 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11980 (3 : Fin 4)) = canonicalInput19663.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11980 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6398 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11980 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6398 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19663 hH))).trans (reductionSound6398 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9965).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11980 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9965).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11980 (j : Fin 4)))
      2 1440 1440 2 ![720, 720, 3, 72] ![2, 2, 480, 20] reductionProjection11980 ![oldProjection1050, oldProjection1046, reductionProjection6948, reductionProjection6398]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11981 : Integer.Sparse (Fin 1613) := [(0, -3), (3, -60), (4, 5), (19, -280), (20, 30), (94, 40), (105, 160), (106, 80), (108, 80), (241, 320), (242, -240), (243, 640), (244, 160), (246, 80), (247, 160), (697, -240), (698, 720), (700, 320), (704, 160), (1059, 160), (1225, 80), (1226, 240), (1227, 80), (1251, -70), (1323, -240)]

def reductionPivot11981 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, 0, -2, 3], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -2, 3, -2]]

theorem reductionSound11981 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode9949).moment H =
      Integer.Sparse.eval reductionProjection11981 (momentVector H) := by
  have heq : reductionPivot11981 = (fun u v => (normalNode9949).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9949).moment H = injectiveMoment H reductionPivot11981 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9949).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot11981 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11981 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 720, 1440, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11981 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection11849, oldProjection1046, reductionProjection11980, reductionProjection8501, reductionProjection8828] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11981 (0 : Fin 5)) = (normalNode9737).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11981 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11849 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11981 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11849 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound11849 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11981 (1 : Fin 5)) = canonicalInput19627.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11981 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1046 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11981 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1046 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19627 hH))).trans (oldProjectionSound1046 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11981 (2 : Fin 5)) = (normalNode9965).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11981 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11980 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11981 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11980 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound11980 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11981 (3 : Fin 5)) = canonicalInput19644.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11981 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8501 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11981 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8501 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19644 hH))).trans (reductionSound8501 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11981 (4 : Fin 5)) = (normalNode9966).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11981 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8828 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11981 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8828 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8828 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode9949).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11981 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9949).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11981 (j : Fin 5)))
      1 1440 1440 1 ![1440, 720, 1440, 1440, 1440] ![1, 2, 1, 1, 1] reductionProjection11981 ![reductionProjection11849, oldProjection1046, reductionProjection11980, reductionProjection8501, reductionProjection8828]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11982 : Integer.Sparse (Fin 1613) := [(0, 1), (19, -100), (20, 5), (81, -240), (94, 120), (228, -240), (241, 240), (243, 80), (247, 160), (294, 720), (434, 720), (698, 1200), (1058, -240), (1223, -240), (1226, 560), (1227, 480), (1251, -130)]

def reductionPivot11982 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, -1, 0, 1], ![-1, 0, -1, -1, 3], ![0, -1, 0, 2, -1], ![0, 1, 1, -1, -1], ![1, 0, 1, 0, -2]]

theorem reductionSound11982 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode9996).moment H =
      Integer.Sparse.eval reductionProjection11982 (momentVector H) := by
  have heq : reductionPivot11982 = (fun u v => (normalNode9996).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9996).moment H = injectiveMoment H reductionPivot11982 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9996).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot11982 0 = Pi.single (4 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11982 4 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![288, 1440, 1440, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11982 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1561, oldProjection1649, oldProjection2812, oldProjection2532] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11982 (0 : Fin 4)) = canonicalInput19350.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11982 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1561 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11982 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1561 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19350 hH))).trans (oldProjectionSound1561 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11982 (1 : Fin 4)) = canonicalInput19698.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11982 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1649 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11982 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1649 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19698 hH))).trans (oldProjectionSound1649 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11982 (2 : Fin 4)) = canonicalInput19706.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11982 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection2812 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11982 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection2812 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19706 hH))).trans (oldProjectionSound2812 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11982 (3 : Fin 4)) = canonicalInput19708.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11982 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2532 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11982 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2532 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19708 hH))).trans (oldProjectionSound2532 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9996).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11982 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9996).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11982 (j : Fin 4)))
      2 2880 2880 2 ![288, 1440, 1440, 1440] ![10, 2, 2, 2] reductionProjection11982 ![oldProjection1561, oldProjection1649, oldProjection2812, oldProjection2532]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11983 : Integer.Sparse (Fin 1613) := [(0, 3), (19, -10), (94, 25), (241, 8), (243, 8), (247, 16), (326, 72), (698, 64), (704, 24), (1226, 8), (1227, 16), (1251, -12), (1356, 72)]

def reductionPivot11983 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, -1, 0, 1], ![-1, 0, -1, -1, 3], ![0, -1, 1, 1, -1], ![0, 1, 0, 1, -2], ![1, 0, 1, -1, -1]]

theorem reductionSound11983 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode10007).moment H =
      Integer.Sparse.eval reductionProjection11983 (momentVector H) := by
  have heq : reductionPivot11983 = (fun u v => (normalNode10007).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10007).moment H = injectiveMoment H reductionPivot11983 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10007).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot11983 0 = Pi.single (4 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11983 4 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 120, 1440, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11983 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1595, oldProjection2640, oldProjection2512, oldProjection2767] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11983 (0 : Fin 4)) = canonicalInput19351.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11983 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1595 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11983 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1595 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19351 hH))).trans (oldProjectionSound1595 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11983 (1 : Fin 4)) = canonicalInput19704.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((120 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11983 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2640 (momentVector H)
      have hh : (120 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11983 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2640 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19704 hH))).trans (oldProjectionSound2640 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11983 (2 : Fin 4)) = canonicalInput19716.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11983 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection2512 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11983 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection2512 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19716 hH))).trans (oldProjectionSound2512 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11983 (3 : Fin 4)) = canonicalInput19718.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11983 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2767 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11983 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2767 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19718 hH))).trans (oldProjectionSound2767 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10007).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11983 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10007).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11983 (j : Fin 4)))
      2 288 1440 10 ![1440, 120, 1440, 720] ![1, 12, 1, 2] reductionProjection11983 ![oldProjection1595, oldProjection2640, oldProjection2512, oldProjection2767]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11984 : Integer.Sparse (Fin 1613) := [(0, 13), (19, -140), (20, 5), (94, 200), (241, 240), (243, 80), (247, 240), (326, 720), (698, 800), (704, 80), (1226, 160), (1227, 240), (1251, -190), (1356, 720)]

def reductionPivot11984 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, -1, 0, 1], ![-1, 0, -1, -1, 3], ![0, -1, 1, 1, -1], ![0, 1, 1, -1, -1], ![1, 0, 0, 1, -2]]

theorem reductionSound11984 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode10008).moment H =
      Integer.Sparse.eval reductionProjection11984 (momentVector H) := by
  have heq : reductionPivot11984 = (fun u v => (normalNode10008).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10008).moment H = injectiveMoment H reductionPivot11984 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10008).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot11984 0 = Pi.single (4 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11984 4 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 1440, 1440, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11984 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1968, oldProjection2627, oldProjection2813, oldProjection2512] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11984 (0 : Fin 4)) = canonicalInput19352.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11984 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1968 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11984 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1968 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19352 hH))).trans (reductionSound1968 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11984 (1 : Fin 4)) = canonicalInput19705.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11984 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2627 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11984 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2627 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19705 hH))).trans (oldProjectionSound2627 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11984 (2 : Fin 4)) = canonicalInput19717.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11984 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection2813 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11984 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection2813 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19717 hH))).trans (oldProjectionSound2813 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11984 (3 : Fin 4)) = canonicalInput19719.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11984 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2512 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11984 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2512 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19719 hH))).trans (oldProjectionSound2512 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10008).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11984 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10008).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11984 (j : Fin 4)))
      2 2880 2880 2 ![1440, 1440, 1440, 1440] ![2, 2, 2, 2] reductionProjection11984 ![reductionProjection1968, oldProjection2627, oldProjection2813, oldProjection2512]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11985 : Integer.Sparse (Fin 1613) := [(0, 16), (19, -180), (20, 5), (81, -240), (94, 275), (228, -240), (241, 80), (247, 400), (698, 640), (704, 160), (1226, 80), (1227, 160), (1251, -130), (1389, -240)]

def reductionPivot11985 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, -1, 0, 1], ![-1, 0, -1, -1, 3], ![0, 0, 1, 1, -2], ![0, 1, 1, -1, -1], ![1, -1, 0, 1, -1]]

theorem reductionSound11985 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode10009).moment H =
      Integer.Sparse.eval reductionProjection11985 (momentVector H) := by
  have heq : reductionPivot11985 = (fun u v => (normalNode10009).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10009).moment H = injectiveMoment H reductionPivot11985 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10009).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot11985 0 = Pi.single (4 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11985 4 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![288, 1440, 1440, 360] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11985 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1559, oldProjection2531, oldProjection2813, oldProjection1683] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11985 (0 : Fin 4)) = canonicalInput19353.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11985 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1559 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11985 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1559 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19353 hH))).trans (oldProjectionSound1559 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11985 (1 : Fin 4)) = canonicalInput19733.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11985 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2531 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11985 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2531 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19733 hH))).trans (oldProjectionSound2531 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11985 (2 : Fin 4)) = canonicalInput19739.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11985 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection2813 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11985 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection2813 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19739 hH))).trans (oldProjectionSound2813 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11985 (3 : Fin 4)) = canonicalInput19740.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11985 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1683 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11985 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1683 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19740 hH))).trans (oldProjectionSound1683 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10009).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11985 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10009).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11985 (j : Fin 4)))
      2 2880 2880 2 ![288, 1440, 1440, 360] ![10, 2, 2, 8] reductionProjection11985 ![oldProjection1559, oldProjection2531, oldProjection2813, oldProjection1683]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11986 : Integer.Sparse (Fin 1613) := [(0, 14), (19, -60), (81, -240), (94, 185), (228, -240), (241, 240), (243, 320), (698, 1440), (704, 320), (1226, 640), (1227, 640), (1251, -205), (1389, -240)]

def reductionPivot11986 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, -1, 0, 1], ![-1, 0, -1, -1, 3], ![0, 0, 2, -1, -1], ![0, 1, 0, 1, -2], ![1, -1, 0, 1, -1]]

theorem reductionSound11986 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode10010).moment H =
      Integer.Sparse.eval reductionProjection11986 (momentVector H) := by
  have heq : reductionPivot11986 = (fun u v => (normalNode10010).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10010).moment H = injectiveMoment H reductionPivot11986 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10010).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot11986 0 = Pi.single (4 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11986 4 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 720, 1440, 288] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11986 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1603, oldProjection2767, oldProjection2070, oldProjection1690] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11986 (0 : Fin 4)) = canonicalInput19354.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11986 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1603 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11986 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1603 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19354 hH))).trans (oldProjectionSound1603 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11986 (1 : Fin 4)) = canonicalInput19735.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11986 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2767 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11986 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2767 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19735 hH))).trans (oldProjectionSound2767 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11986 (2 : Fin 4)) = canonicalInput19741.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11986 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection2070 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11986 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection2070 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19741 hH))).trans (oldProjectionSound2070 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11986 (3 : Fin 4)) = canonicalInput19744.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11986 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1690 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11986 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1690 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19744 hH))).trans (oldProjectionSound1690 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10010).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11986 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10010).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11986 (j : Fin 4)))
      2 2880 2880 2 ![1440, 720, 1440, 288] ![2, 4, 2, 10] reductionProjection11986 ![oldProjection1603, oldProjection2767, oldProjection2070, oldProjection1690]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11987 : Integer.Sparse (Fin 1613) := [(0, 29), (19, -40), (94, 115), (241, 80), (247, 80), (635, 720), (697, -480), (698, 480), (1227, 400), (1251, -190), (1389, -480)]

def reductionPivot11987 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 0, 1, -1], ![-1, 0, -1, 0, 2], ![0, -1, 2, 1, -2], ![0, 1, 0, -2, 1], ![1, 0, -1, 0, 0]]

theorem reductionSound11987 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode10110).moment H =
      Integer.Sparse.eval reductionProjection11987 (momentVector H) := by
  have heq : reductionPivot11987 = (fun u v => (normalNode10110).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10110).moment H = injectiveMoment H reductionPivot11987 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10110).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot11987 0 = Pi.single (3 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11987 3 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1440, 288, 360] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11987 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection5638, oldProjection2589, reductionProjection7373, oldProjection1741] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11987 (0 : Fin 4)) = canonicalInput20006.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11987 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5638 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11987 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5638 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20006 hH))).trans (reductionSound5638 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11987 (1 : Fin 4)) = canonicalInput19856.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11987 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2589 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11987 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2589 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19856 hH))).trans (oldProjectionSound2589 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11987 (2 : Fin 4)) = canonicalInput19854.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11987 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection7373 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11987 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection7373 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19854 hH))).trans (reductionSound7373 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11987 (3 : Fin 4)) = canonicalInput19853.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11987 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1741 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11987 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1741 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19853 hH))).trans (oldProjectionSound1741 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10110).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11987 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10110).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11987 (j : Fin 4)))
      2 2880 2880 2 ![720, 1440, 288, 360] ![4, 2, 10, 8] reductionProjection11987 ![reductionProjection5638, oldProjection2589, reductionProjection7373, oldProjection1741]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11988 : Integer.Sparse (Fin 1613) := [(0, 2), (81, -96), (94, 17), (241, 16), (697, -48), (698, 304), (1050, -48), (1058, -48), (1059, 144), (1221, -96), (1226, 48), (1227, 112), (1251, -61)]

def reductionPivot11988 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 0, 1, -1], ![-1, 0, -1, 0, 2], ![0, 0, 2, 0, -2], ![0, 1, 0, -2, 1], ![1, -1, -1, 1, 0]]

theorem reductionSound11988 {H : CMatrix} (hH : IsHadamard H) :
    (576 : ℝ) * (normalNode10131).moment H =
      Integer.Sparse.eval reductionProjection11988 (momentVector H) := by
  have heq : reductionPivot11988 = (fun u v => (normalNode10131).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10131).moment H = injectiveMoment H reductionPivot11988 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10131).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot11988 0 = Pi.single (3 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11988 3 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 360, 1440, 288] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11988 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection2065, oldProjection1643, oldProjection2743, reductionProjection962] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11988 (0 : Fin 4)) = canonicalInput20058.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11988 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection2065 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11988 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection2065 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20058 hH))).trans (oldProjectionSound2065 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11988 (1 : Fin 4)) = canonicalInput19963.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11988 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1643 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11988 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1643 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19963 hH))).trans (oldProjectionSound1643 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11988 (2 : Fin 4)) = canonicalInput19958.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11988 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection2743 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11988 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection2743 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19958 hH))).trans (oldProjectionSound2743 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11988 (3 : Fin 4)) = canonicalInput19957.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11988 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection962 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11988 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection962 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19957 hH))).trans (reductionSound962 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10131).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11988 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10131).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11988 (j : Fin 4)))
      2 576 2880 10 ![1440, 360, 1440, 288] ![2, 8, 2, 10] reductionProjection11988 ![oldProjection2065, oldProjection1643, oldProjection2743, reductionProjection962]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11989 : Integer.Sparse (Fin 1613) := [(0, -9), (19, 10), (81, 240), (94, -65), (241, -60), (247, -20), (602, -180), (635, -180), (668, -180), (697, 180), (698, -840), (1050, 120), (1055, 60), (1058, 120), (1059, -360), (1221, 420), (1226, -100), (1227, -380), (1250, -15), (1251, 195), (1389, 240)]

def reductionPivot11989 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, -1, 0, 1, 0], ![-1, 0, -1, 0, 2], ![0, 0, 0, 1, -1], ![0, 0, 2, 0, -2], ![0, 1, 0, -2, 1], ![1, 0, -1, 0, 0]]

theorem reductionSound11989 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode10045).moment H =
      Integer.Sparse.eval reductionProjection11989 (momentVector H) := by
  have heq : reductionPivot11989 = (fun u v => (normalNode10045).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10045).moment H = injectiveMoment H reductionPivot11989 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10045).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot11989 0 = Pi.single (3 : Fin 5) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11989 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![2880, 576, 2880, 288, 576] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11989 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection10866, reductionProjection11241, reductionProjection11987, reductionProjection7373, reductionProjection11988] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11989 (0 : Fin 5)) = canonicalInput14884.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11989 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10866 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11989 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10866 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14884 hH))).trans (reductionSound10866 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11989 (1 : Fin 5)) = (normalNode10083).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11989 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11241 (momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11989 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11241 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he)).trans (reductionSound11241 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11989 (2 : Fin 5)) = canonicalInput19881.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11989 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11987 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11989 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11987 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19881 hH))).trans (reductionSound11987 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11989 (3 : Fin 5)) = canonicalInput19882.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11989 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7373 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11989 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7373 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19882 hH))).trans (reductionSound7373 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11989 (4 : Fin 5)) = (normalNode10131).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11989 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11988 (momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11989 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11988 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he)).trans (reductionSound11988 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode10045).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11989 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10045).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11989 (j : Fin 5)))
      1 720 2880 4 ![2880, 576, 2880, 288, 576] ![1, 5, 1, 10, 5] reductionProjection11989 ![reductionProjection10866, reductionProjection11241, reductionProjection11987, reductionProjection7373, reductionProjection11988]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11990 : Integer.Sparse (Fin 1613) := [(0, 9), (94, 25), (698, 400), (1059, 80), (1221, -240), (1226, 80), (1227, 160), (1251, 20), (1389, -240)]

def reductionPivot11990 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, -1, 0, 1, 0], ![-1, 0, -1, 0, 2], ![0, 0, 2, -2, 0], ![0, 1, 0, 0, -1], ![1, 0, -1, 1, -1]]

theorem reductionSound11990 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode10056).moment H =
      Integer.Sparse.eval reductionProjection11990 (momentVector H) := by
  have heq : reductionPivot11990 = (fun u v => (normalNode10056).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10056).moment H = injectiveMoment H reductionPivot11990 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10056).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot11990 0 = Pi.single (3 : Fin 5) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11990 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 1440, 720, 288] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11990 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection3212, oldProjection2588, oldProjection1000, reductionProjection1002] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11990 (0 : Fin 4)) = canonicalInput14967.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11990 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3212 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11990 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3212 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14967 hH))).trans (reductionSound3212 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11990 (1 : Fin 4)) = canonicalInput19839.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11990 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2588 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11990 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2588 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19839 hH))).trans (oldProjectionSound2588 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11990 (2 : Fin 4)) = canonicalInput19934.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11990 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1000 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11990 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1000 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19934 hH))).trans (oldProjectionSound1000 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11990 (3 : Fin 4)) = canonicalInput19937.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11990 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1002 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11990 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1002 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19937 hH))).trans (reductionSound1002 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10056).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11990 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10056).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11990 (j : Fin 4)))
      2 2880 2880 2 ![1440, 1440, 720, 288] ![2, 2, 4, 10] reductionProjection11990 ![reductionProjection3212, oldProjection2588, oldProjection1000, reductionProjection1002]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11991 : Integer.Sparse (Fin 1613) := [(0, 16), (94, 15), (698, 400), (700, 80), (1059, 240), (1227, 160), (1251, -125)]

def reductionPivot11991 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 1, 0, -1], ![-1, 0, -1, 0, 2], ![0, -1, 0, 2, -1], ![0, 1, -1, 0, 0], ![1, 0, 1, -2, 0]]

theorem reductionSound11991 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode10076).moment H =
      Integer.Sparse.eval reductionProjection11991 (momentVector H) := by
  have heq : reductionPivot11991 = (fun u v => (normalNode10076).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10076).moment H = injectiveMoment H reductionPivot11991 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10076).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot11991 0 = Pi.single (2 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11991 2 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![360, 720, 144, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11991 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection2759, oldProjection2633, oldProjection2609, reductionProjection3646] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11991 (0 : Fin 4)) = canonicalInput20644.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11991 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection2759 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11991 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection2759 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20644 hH))).trans (oldProjectionSound2759 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11991 (1 : Fin 4)) = canonicalInput19828.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11991 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2633 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11991 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2633 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19828 hH))).trans (oldProjectionSound2633 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11991 (2 : Fin 4)) = canonicalInput19795.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11991 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection2609 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11991 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection2609 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19795 hH))).trans (oldProjectionSound2609 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11991 (3 : Fin 4)) = canonicalInput19792.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11991 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3646 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11991 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3646 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19792 hH))).trans (reductionSound3646 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10076).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11991 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10076).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11991 (j : Fin 4)))
      2 1440 1440 2 ![360, 720, 144, 720] ![4, 2, 10, 2] reductionProjection11991 ![oldProjection2759, oldProjection2633, oldProjection2609, reductionProjection3646]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11992 : Integer.Sparse (Fin 1613) := [(0, -12), (94, 45), (698, 720), (1059, 400), (1226, 80), (1227, 480), (1251, -195)]

def reductionPivot11992 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 1, 0, -1], ![-1, 0, -1, 0, 2], ![0, -1, 0, 2, -1], ![0, 1, 1, -2, 0], ![1, 0, -1, 0, 0]]

theorem reductionSound11992 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode10077).moment H =
      Integer.Sparse.eval reductionProjection11992 (momentVector H) := by
  have heq : reductionPivot11992 = (fun u v => (normalNode10077).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10077).moment H = injectiveMoment H reductionPivot11992 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10077).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot11992 0 = Pi.single (2 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11992 2 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 720, 1440, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11992 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection2784, oldProjection2635, reductionProjection1014, oldProjection2583] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11992 (0 : Fin 4)) = canonicalInput20645.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11992 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection2784 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11992 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection2784 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20645 hH))).trans (oldProjectionSound2784 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11992 (1 : Fin 4)) = canonicalInput19829.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11992 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2635 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11992 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2635 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19829 hH))).trans (oldProjectionSound2635 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11992 (2 : Fin 4)) = canonicalInput19799.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11992 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1014 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11992 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1014 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19799 hH))).trans (reductionSound1014 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11992 (3 : Fin 4)) = canonicalInput19796.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11992 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2583 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11992 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2583 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19796 hH))).trans (oldProjectionSound2583 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10077).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11992 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10077).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11992 (j : Fin 4)))
      2 2880 2880 2 ![720, 720, 1440, 720] ![4, 4, 2, 4] reductionProjection11992 ![oldProjection2784, oldProjection2635, reductionProjection1014, oldProjection2583]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11993 : Integer.Sparse (Fin 1613) := [(0, -43), (94, -35), (698, -1360), (890, -720), (1059, -480), (1221, 240), (1226, -160), (1227, -880), (1251, 660)]

def reductionPivot11993 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, -1, 1, 0, 0], ![-1, 0, -1, 0, 2], ![0, 0, -1, 2, -1], ![0, 0, 1, 0, -1], ![0, 1, 0, -1, 0], ![1, 0, 0, -1, 0]]

theorem reductionSound11993 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode10090).moment H =
      Integer.Sparse.eval reductionProjection11993 (momentVector H) := by
  have heq : reductionPivot11993 = (fun u v => (normalNode10090).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10090).moment H = injectiveMoment H reductionPivot11993 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10090).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot11993 0 = Pi.single (2 : Fin 5) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11993 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![144, 2880, 2880, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11993 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection11270, reductionProjection11156, reductionProjection7220, oldProjection2588, reductionProjection11205] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11993 (0 : Fin 5)) = (normalNode8389).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11993 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11270 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11993 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11270 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he)).trans (reductionSound11270 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11993 (1 : Fin 5)) = canonicalInput19787.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11993 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11156 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11993 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11156 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19787 hH))).trans (reductionSound11156 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11993 (2 : Fin 5)) = canonicalInput19866.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11993 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7220 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11993 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7220 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19866 hH))).trans (reductionSound7220 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11993 (3 : Fin 5)) = canonicalInput19869.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11993 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2588 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11993 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2588 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19869 hH))).trans (oldProjectionSound2588 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11993 (4 : Fin 5)) = canonicalInput19870.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11993 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11205 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11993 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11205 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19870 hH))).trans (reductionSound11205 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode10090).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11993 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10090).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11993 (j : Fin 5)))
      1 2880 2880 1 ![144, 2880, 2880, 1440, 1440] ![20, 1, 1, 2, 2] reductionProjection11993 ![reductionProjection11270, reductionProjection11156, reductionProjection7220, oldProjection2588, reductionProjection11205]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11994 : Integer.Sparse (Fin 1613) := [(0, 61), (94, 90), (489, 720), (698, 1120), (700, 320), (1027, 720), (1059, 480), (1227, 800), (1251, -435), (1389, -240)]

def reductionPivot11994 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, -1, 0, 1], ![-1, 0, -1, 0, 2], ![0, -1, 1, 1, -1], ![0, 1, 0, 1, -2], ![1, 0, 1, -2, 0]]

theorem reductionSound11994 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode10096).moment H =
      Integer.Sparse.eval reductionProjection11994 (momentVector H) := by
  have heq : reductionPivot11994 = (fun u v => (normalNode10096).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10096).moment H = injectiveMoment H reductionPivot11994 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10096).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot11994 0 = Pi.single (4 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11994 4 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![360, 144, 180, 288] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11994 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1686, oldProjection2609, oldProjection2085, oldProjection1793] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11994 (0 : Fin 4)) = canonicalInput19361.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11994 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1686 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11994 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1686 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19361 hH))).trans (oldProjectionSound1686 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11994 (1 : Fin 4)) = canonicalInput19783.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11994 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2609 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11994 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2609 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19783 hH))).trans (oldProjectionSound2609 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11994 (2 : Fin 4)) = canonicalInput19816.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((180 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11994 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection2085 (momentVector H)
      have hh : (180 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11994 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection2085 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (180 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19816 hH))).trans (oldProjectionSound2085 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11994 (3 : Fin 4)) = canonicalInput19818.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11994 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1793 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11994 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1793 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19818 hH))).trans (oldProjectionSound1793 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10096).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11994 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10096).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11994 (j : Fin 4)))
      2 2880 2880 2 ![360, 144, 180, 288] ![8, 20, 16, 10] reductionProjection11994 ![oldProjection1686, oldProjection2609, oldProjection2085, oldProjection1793]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11995 : Integer.Sparse (Fin 1613) := [(0, 1), (19, -4), (38, -48), (81, -96), (94, 6), (241, 32), (243, 32), (505, 144), (602, 144), (635, 144), (697, -48), (698, 256), (700, 32), (704, 16), (1059, 80), (1221, -48), (1226, 64), (1227, 112), (1251, -39), (1389, -48)]

def reductionPivot11995 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 0, 1, -1], ![-1, 0, -1, 0, 2], ![0, -1, 2, -1, 0], ![0, 1, -1, 2, -2], ![1, 0, 0, -2, 1]]

theorem reductionSound11995 {H : CMatrix} (hH : IsHadamard H) :
    (576 : ℝ) * (normalNode10104).moment H =
      Integer.Sparse.eval reductionProjection11995 (momentVector H) := by
  have heq : reductionPivot11995 = (fun u v => (normalNode10104).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10104).moment H = injectiveMoment H reductionPivot11995 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10104).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot11995 0 = Pi.single (3 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11995 3 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![360, 1440, 1440, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11995 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1741, oldProjection1804, oldProjection1626, reductionProjection3646] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11995 (0 : Fin 4)) = canonicalInput20002.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11995 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1741 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11995 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1741 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20002 hH))).trans (oldProjectionSound1741 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11995 (1 : Fin 4)) = canonicalInput19846.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11995 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1804 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11995 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1804 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19846 hH))).trans (oldProjectionSound1804 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11995 (2 : Fin 4)) = canonicalInput19838.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11995 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1626 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11995 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1626 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19838 hH))).trans (oldProjectionSound1626 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11995 (3 : Fin 4)) = canonicalInput19837.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11995 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3646 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11995 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3646 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19837 hH))).trans (reductionSound3646 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10104).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11995 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10104).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11995 (j : Fin 4)))
      2 576 2880 10 ![360, 1440, 1440, 720] ![8, 2, 2, 4] reductionProjection11995 ![oldProjection1741, oldProjection1804, oldProjection1626, reductionProjection3646]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11996 : Integer.Sparse (Fin 1613) := [(0, -8), (81, -480), (94, 25), (241, 160), (602, 720), (666, 720), (698, 1040), (1050, -720), (1052, -240), (1055, -240), (1059, 480), (1221, -480), (1226, 160), (1227, 320), (1251, -155)]

def reductionPivot11996 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 1, -1, 0, 0], ![-1, 0, -1, 0, 2], ![0, -1, 2, 0, -1], ![0, 0, 0, 2, -2], ![1, 0, 0, -2, 1]]

theorem reductionSound11996 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode10108).moment H =
      Integer.Sparse.eval reductionProjection11996 (momentVector H) := by
  have heq : reductionPivot11996 = (fun u v => (normalNode10108).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10108).moment H = injectiveMoment H reductionPivot11996 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10108).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot11996 0 = Pi.single (1 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11996 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 72, 1440, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11996 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection4037, oldProjection1053, oldProjection1804, oldProjection1839] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11996 (0 : Fin 4)) = canonicalInput22602.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11996 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4037 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11996 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4037 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound22602 hH))).trans (reductionSound4037 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11996 (1 : Fin 4)) = canonicalInput19910.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11996 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1053 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11996 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1053 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19910 hH))).trans (oldProjectionSound1053 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11996 (2 : Fin 4)) = canonicalInput19846.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11996 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1804 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11996 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1804 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19846 hH))).trans (oldProjectionSound1804 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11996 (3 : Fin 4)) = canonicalInput19843.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11996 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1839 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11996 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1839 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19843 hH))).trans (oldProjectionSound1839 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10108).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11996 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10108).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11996 (j : Fin 4)))
      2 2880 2880 2 ![1440, 72, 1440, 1440] ![2, 40, 2, 2] reductionProjection11996 ![reductionProjection4037, oldProjection1053, oldProjection1804, oldProjection1839]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11997 : Integer.Sparse (Fin 1613) := [(0, 47), (94, 140), (698, 880), (1050, -240), (1055, -480), (1058, -240), (1059, 240), (1226, 160), (1227, 480), (1250, 180), (1251, -375), (1388, -240), (1389, -240)]

def reductionPivot11997 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, -1, 1, 0], ![-1, 0, -1, 0, 2], ![0, 0, 1, 1, -2], ![0, 1, 0, -2, 1], ![1, -1, 1, 0, -1]]

theorem reductionSound11997 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode10113).moment H =
      Integer.Sparse.eval reductionProjection11997 (momentVector H) := by
  have heq : reductionPivot11997 = (fun u v => (normalNode10113).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10113).moment H = injectiveMoment H reductionPivot11997 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10113).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot11997 0 = Pi.single (3 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11997 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 288, 720, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11997 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection2010, oldProjection1749, oldProjection1750, oldProjection1751] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11997 (0 : Fin 4)) = canonicalInput19421.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11997 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2010 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11997 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2010 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19421 hH))).trans (reductionSound2010 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11997 (1 : Fin 4)) = canonicalInput19891.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11997 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1749 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11997 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1749 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19891 hH))).trans (oldProjectionSound1749 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11997 (2 : Fin 4)) = canonicalInput19919.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11997 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1750 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11997 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1750 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19919 hH))).trans (oldProjectionSound1750 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11997 (3 : Fin 4)) = canonicalInput19922.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11997 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1751 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11997 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1751 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19922 hH))).trans (oldProjectionSound1751 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10113).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11997 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10113).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11997 (j : Fin 4)))
      2 2880 2880 2 ![1440, 288, 720, 720] ![2, 10, 4, 4] reductionProjection11997 ![reductionProjection2010, oldProjection1749, oldProjection1750, oldProjection1751]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11998 : Integer.Sparse (Fin 1613) := [(0, -11), (94, 55), (698, 480), (700, 80), (1059, 320), (1227, 560), (1251, -530)]

def reductionPivot11998 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 0, 1, -1], ![-1, 0, -1, 0, 2], ![0, 0, 1, -1, 0], ![0, 1, -1, 1, -1], ![1, -1, 1, -1, 0]]

theorem reductionSound11998 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode10127).moment H =
      Integer.Sparse.eval reductionProjection11998 (momentVector H) := by
  have heq : reductionPivot11998 = (fun u v => (normalNode10127).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10127).moment H = injectiveMoment H reductionPivot11998 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10127).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot11998 0 = Pi.single (3 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11998 3 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 288, 1440, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11998 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection2628, oldProjection2612, reductionProjection11553, oldProjection2632] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11998 (0 : Fin 4)) = canonicalInput20039.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11998 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection2628 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11998 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection2628 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20039 hH))).trans (oldProjectionSound2628 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11998 (1 : Fin 4)) = canonicalInput19912.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11998 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2612 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11998 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2612 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19912 hH))).trans (oldProjectionSound2612 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11998 (2 : Fin 4)) = canonicalInput19906.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11998 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection11553 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11998 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection11553 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19906 hH))).trans (reductionSound11553 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11998 (3 : Fin 4)) = canonicalInput19905.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11998 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2632 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11998 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2632 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19905 hH))).trans (oldProjectionSound2632 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10127).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11998 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10127).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11998 (j : Fin 4)))
      2 2880 2880 2 ![72, 288, 1440, 1440] ![40, 10, 2, 2] reductionProjection11998 ![oldProjection2628, oldProjection2612, reductionProjection11553, oldProjection2632]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11999 : Integer.Sparse (Fin 1613) := [(0, -13), (19, 10), (94, -65), (241, -40), (247, -40), (698, -400), (869, -360), (1050, 120), (1055, 120), (1059, -240), (1227, -240), (1250, -30), (1251, 140), (1388, 120)]

def reductionPivot11999 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, -1, 0, 0, 1], ![-1, 0, -1, 1, 1], ![0, 0, -1, 1, 0], ![0, 0, 2, 0, -2], ![0, 1, 0, -1, 0], ![1, 0, 0, -1, 0]]

theorem reductionSound11999 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode10146).moment H =
      Integer.Sparse.eval reductionProjection11999 (momentVector H) := by
  have heq : reductionPivot11999 = (fun u v => (normalNode10146).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10146).moment H = injectiveMoment H reductionPivot11999 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10146).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot11999 0 = Pi.single (4 : Fin 5) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11999 4 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 288, 2880, 1440, 2880] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11999 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection11608, reductionProjection11372, reductionProjection11204, oldProjection2629, reductionProjection11253] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11999 (0 : Fin 5)) = canonicalInput14849.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11999 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11608 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11999 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11608 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14849 hH))).trans (reductionSound11608 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11999 (1 : Fin 5)) = canonicalInput19986.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11999 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11372 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11999 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11372 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19986 hH))).trans (reductionSound11372 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11999 (2 : Fin 5)) = canonicalInput20019.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11999 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11204 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11999 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11204 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20019 hH))).trans (reductionSound11204 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11999 (3 : Fin 5)) = canonicalInput20021.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11999 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2629 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11999 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2629 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20021 hH))).trans (oldProjectionSound2629 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11999 (4 : Fin 5)) = canonicalInput20022.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11999 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11253 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11999 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11253 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20022 hH))).trans (reductionSound11253 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode10146).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11999 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10146).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11999 (j : Fin 5)))
      1 1440 2880 2 ![288, 288, 2880, 1440, 2880] ![10, 10, 1, 2, 1] reductionProjection11999 ![reductionProjection11608, reductionProjection11372, reductionProjection11204, oldProjection2629, reductionProjection11253]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization
