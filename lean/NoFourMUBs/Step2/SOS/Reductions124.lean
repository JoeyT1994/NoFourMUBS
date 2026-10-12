import NoFourMUBs.Step2.SOS.Canonical007
import NoFourMUBs.Step2.SOS.Canonical055
import NoFourMUBs.Step2.SOS.Canonical056
import NoFourMUBs.Step2.SOS.Canonical057
import NoFourMUBs.Step2.SOS.Canonical058
import NoFourMUBs.Step2.SOS.Canonical068
import NoFourMUBs.Step2.SOS.Canonical071
import NoFourMUBs.Step2.SOS.Canonical110
import NoFourMUBs.Step2.SOS.Canonical125
import NoFourMUBs.Step2.SOS.Canonical142
import NoFourMUBs.Step2.SOS.Canonical143
import NoFourMUBs.Step2.SOS.Canonical208
import NoFourMUBs.Step2.SOS.Canonical212
import NoFourMUBs.Step2.SOS.Canonical244
import NoFourMUBs.Step2.SOS.Canonical245
import NoFourMUBs.Step2.SOS.Canonical255
import NoFourMUBs.Step2.SOS.Canonical256
import NoFourMUBs.Step2.SOS.Canonical259
import NoFourMUBs.Step2.SOS.Canonical260
import NoFourMUBs.Step2.SOS.Canonical261
import NoFourMUBs.Step2.SOS.Canonical263
import NoFourMUBs.Step2.SOS.Canonical269
import NoFourMUBs.Step2.SOS.Canonical272
import NoFourMUBs.Step2.SOS.Canonical273
import NoFourMUBs.Step2.SOS.Canonical274
import NoFourMUBs.Step2.SOS.Canonical275
import NoFourMUBs.Step2.SOS.Canonical276
import NoFourMUBs.Step2.SOS.Canonical277
import NoFourMUBs.Step2.SOS.Canonical278
import NoFourMUBs.Step2.SOS.Canonical287
import NoFourMUBs.Step2.SOS.Canonical288
import NoFourMUBs.Step2.SOS.Canonical308
import NoFourMUBs.Step2.SOS.Canonical312
import NoFourMUBs.Step2.SOS.Canonical313
import NoFourMUBs.Step2.SOS.Canonical328
import NoFourMUBs.Step2.SOS.Canonical334
import NoFourMUBs.Step2.SOS.Canonical336
import NoFourMUBs.Step2.SOS.Canonical356
import NoFourMUBs.Step2.SOS.Canonical377
import NoFourMUBs.Step2.SOS.Canonical392
import NoFourMUBs.Step2.SOS.Canonical410
import NoFourMUBs.Step2.SOS.Canonical411
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes05
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes006
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes033
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.OldProjections008
import NoFourMUBs.Step2.SOS.OldProjections011
import NoFourMUBs.Step2.SOS.OldProjections014
import NoFourMUBs.Step2.SOS.OldProjections015
import NoFourMUBs.Step2.SOS.OldProjections016
import NoFourMUBs.Step2.SOS.OldProjections018
import NoFourMUBs.Step2.SOS.OldProjections023
import NoFourMUBs.Step2.SOS.OldProjections024
import NoFourMUBs.Step2.SOS.OldProjections025
import NoFourMUBs.Step2.SOS.OldProjections027
import NoFourMUBs.Step2.SOS.OldProjections028
import NoFourMUBs.Step2.SOS.OldProjections034
import NoFourMUBs.Step2.SOS.OldProjections036
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions063
import NoFourMUBs.Step2.SOS.Reductions066
import NoFourMUBs.Step2.SOS.Reductions068
import NoFourMUBs.Step2.SOS.Reductions084
import NoFourMUBs.Step2.SOS.Reductions088
import NoFourMUBs.Step2.SOS.Reductions091
import NoFourMUBs.Step2.SOS.Reductions094
import NoFourMUBs.Step2.SOS.Reductions095
import NoFourMUBs.Step2.SOS.Reductions097
import NoFourMUBs.Step2.SOS.Reductions098
import NoFourMUBs.Step2.SOS.Reductions104
import NoFourMUBs.Step2.SOS.Reductions105
import NoFourMUBs.Step2.SOS.Reductions106
import NoFourMUBs.Step2.SOS.Reductions108
import NoFourMUBs.Step2.SOS.Reductions110
import NoFourMUBs.Step2.SOS.Reductions111
import NoFourMUBs.Step2.SOS.Reductions112
import NoFourMUBs.Step2.SOS.Reductions114
import NoFourMUBs.Step2.SOS.Reductions121
import NoFourMUBs.Step2.SOS.Reductions122
import NoFourMUBs.Step2.SOS.Reductions123
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical226
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection3968 : Integer.Sparse (Fin 1613) := [(0, 33), (81, -960), (94, 80), (669, 720), (697, -240), (698, 960), (1055, -240), (1058, -240), (1059, 400), (1227, 720), (1251, -345), (1389, -960)]

def reductionPivot3968 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, -1, 1, 0], ![-1, -2, 1, 1, 1], ![0, 0, -1, -1, 2], ![0, 1, 1, 0, -2], ![1, 1, 0, -1, -1]]

theorem reductionSound3968 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode6826).moment H =
      Integer.Sparse.eval reductionProjection3968 (momentVector H) := by
  have heq : reductionPivot3968 = (fun u v => (normalNode6826).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6826).moment H = injectiveMoment H reductionPivot3968 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6826).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot3968 0 = Pi.single (3 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot3968 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 1440, 288, 288] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3968 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1836, reductionProjection3872, oldProjection1847, oldProjection1847] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot3968 (0 : Fin 4)) = canonicalInput13323.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3968 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1836 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3968 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1836 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13323 hH))).trans (oldProjectionSound1836 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3968 (1 : Fin 4)) = canonicalInput13579.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3968 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3872 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3968 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3872 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13579 hH))).trans (reductionSound3872 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3968 (2 : Fin 4)) = canonicalInput13594.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3968 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1847 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3968 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1847 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13594 hH))).trans (oldProjectionSound1847 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3968 (3 : Fin 4)) = canonicalInput13595.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3968 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1847 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3968 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1847 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13595 hH))).trans (oldProjectionSound1847 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6826).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3968 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6826).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3968 (j : Fin 4)))
      2 2880 2880 2 ![1440, 1440, 288, 288] ![2, 2, 10, 10] reductionProjection3968 ![oldProjection1836, reductionProjection3872, oldProjection1847, oldProjection1847]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection3969 : Integer.Sparse (Fin 1613) := [(0, -2), (94, -15), (697, 240), (698, -400), (1058, 240), (1059, -80), (1226, -80), (1227, -160), (1251, 95), (1389, 240)]

def reductionPivot3969 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, 0, -1, 2], ![0, 1, -2, 1], ![0, 1, 1, -2], ![1, -2, 1, 0]]

theorem reductionSound3969 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode10342).moment H =
      Integer.Sparse.eval reductionProjection3969 (momentVector H) := by
  have heq : reductionPivot3969 = (fun u v => (normalNode10342).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10342).moment H = injectiveMoment H reductionPivot3969 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10342).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot3969 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot3969 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 720, 720, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3969 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1009, oldProjection1000, oldProjection1277, oldProjection1276] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot3969 (0 : Fin 4)) = canonicalInput21017.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3969 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1009 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3969 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1009 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound21017 hH))).trans (oldProjectionSound1009 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3969 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw7236 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3969 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1000 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3969 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1000 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7236 hH))).trans (oldProjectionSound1000 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3969 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1277⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3969 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1277 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3969 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1277 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1277 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3969 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1276⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3969 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1276 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3969 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1276 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1276 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10342).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3969 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10342).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3969 (j : Fin 4)))
      2 1440 1440 2 ![720, 720, 720, 720] ![2, 2, 2, 2] reductionProjection3969 ![oldProjection1009, oldProjection1000, oldProjection1277, oldProjection1276]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection3970 : Integer.Sparse (Fin 1613) := [(0, 3), (94, 15), (602, 720), (697, -240), (698, 640), (890, 720), (1058, -240), (1059, 240), (1157, -1440), (1172, -1440), (1221, -240), (1226, 80), (1227, 320), (1251, -200), (1389, -240)]

def reductionPivot3970 : Matrix (Fin 5) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![0, -1, 0, 2, -1], ![1, 0, 1, -1, -1], ![-1, -1, 1, -1, 2], ![1, 2, -2, 0, -1]]

theorem reductionSound3970 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode10793).moment H =
      Integer.Sparse.eval reductionProjection3970 (momentVector H) := by
  have heq : reductionPivot3970 = (fun u v => (normalNode10793).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation33 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10793).moment H = injectiveMoment H reductionPivot3970 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode10793).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation33)).trans (injectiveMoment_transpose H (normalNode10793).entries)).symm
  have hshape : reductionPivot3970 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot3970 4 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1440, 1, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3970 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection3114, reductionProjection3969, reductionProjection3950, reductionProjection3478] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot3970 (0 : Fin 4)) = canonicalInput17735.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3970 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3114 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3970 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3114 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17735 hH))).trans (reductionSound3114 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3970 (1 : Fin 4)) = canonicalInput26329.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3970 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3969 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3970 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3969 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound26329 hH))).trans (reductionSound3969 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3970 (2 : Fin 4)) = canonicalInput26362.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3970 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3950 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3970 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3950 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound26362 hH))).trans (reductionSound3950 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3970 (3 : Fin 4)) = canonicalInput26363.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3970 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3478 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3970 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3478 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound26363 hH))).trans (reductionSound3478 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10793).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3970 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10793).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3970 (j : Fin 4)))
      2 2880 2880 2 ![1, 1440, 1, 1440] ![2880, 2, 2880, 2] reductionProjection3970 ![reductionProjection3114, reductionProjection3969, reductionProjection3950, reductionProjection3478]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection3971 : Integer.Sparse (Fin 1613) := [(0, -59), (81, 1200), (94, -125), (377, -2880), (426, -720), (427, -720), (434, -720), (461, -720), (602, -720), (666, -720), (669, -720), (674, -720), (697, 480), (698, -2560), (847, 1440), (890, -2160), (891, 1440), (956, -720), (957, -720), (1016, -720), (1055, 720), (1058, 960), (1059, -560), (1157, 1440), (1172, 1440), (1221, 240), (1226, -240), (1227, -1520), (1251, 810), (1389, 1200)]

def reductionPivot3971 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, 0, 1, -1, 0], ![-2, -1, 0, 2, 1], ![0, -1, 1, -1, 1], ![0, 1, 0, 0, -1], ![1, 0, -2, 0, 1], ![1, 1, 0, 0, -2]]

theorem reductionSound3971 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode1617).moment H =
      Integer.Sparse.eval reductionProjection3971 (momentVector H) := by
  have heq : reductionPivot3971 = (fun u v => (normalNode1617).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1617).moment H = injectiveMoment H reductionPivot3971 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1617).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot3971 0 = Pi.single (2 : Fin 5) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot3971 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![2880, 1440, 1, 2880, 2880] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot3971 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection3964, reductionProjection3966, reductionProjection3967, reductionProjection3968, reductionProjection3970] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot3971 (0 : Fin 5)) = canonicalInput4407.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3971 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3964 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3971 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3964 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound4407 hH))).trans (reductionSound3964 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3971 (1 : Fin 5)) = canonicalInput3595.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3971 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3966 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3971 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3966 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound3595 hH))).trans (reductionSound3966 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3971 (2 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code377).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3971 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3967 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3971 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3967 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he)).trans (reductionSound3967 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3971 (3 : Fin 5)) = canonicalInput3579.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3971 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3968 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3971 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3968 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound3579 hH))).trans (reductionSound3968 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3971 (4 : Fin 5)) = canonicalInput3578.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3971 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3970 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3971 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3970 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound3578 hH))).trans (reductionSound3970 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1617).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot3971 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1617).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot3971 (j : Fin 5)))
      1 2880 2880 1 ![2880, 1440, 1, 2880, 2880] ![1, 2, 2880, 1, 1] reductionProjection3971 ![reductionProjection3964, reductionProjection3966, reductionProjection3967, reductionProjection3968, reductionProjection3970]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection3972 : Integer.Sparse (Fin 1613) := [(0, 1), (94, 3), (426, 144), (602, 288), (666, 144), (698, 144), (865, 144), (890, 288), (1050, -48), (1059, 96), (1221, -48), (1227, 16), (1251, -26)]

def reductionPivot3972 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 1, -1, 0], ![-1, -1, 0, 0, 2], ![0, -1, -1, 2, 0], ![0, 2, -1, -1, 0], ![1, 0, 1, 0, -2]]

theorem reductionSound3972 {H : CMatrix} (hH : IsHadamard H) :
    (576 : ℝ) * (normalNode8112).moment H =
      Integer.Sparse.eval reductionProjection3972 (momentVector H) := by
  have heq : reductionPivot3972 = (fun u v => (normalNode8112).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8112).moment H = injectiveMoment H reductionPivot3972 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8112).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot3972 0 = Pi.single (2 : Fin 5) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot3972 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![360, 720, 1440, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3972 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection2187, oldProjection2583, oldProjection1999, oldProjection1996] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot3972 (0 : Fin 4)) = canonicalInput17799.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3972 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2187 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3972 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2187 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17799 hH))).trans (reductionSound2187 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3972 (1 : Fin 4)) = canonicalInput15698.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3972 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2583 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3972 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2583 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15698 hH))).trans (oldProjectionSound2583 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3972 (2 : Fin 4)) = canonicalInput15665.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3972 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1999 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3972 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1999 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15665 hH))).trans (oldProjectionSound1999 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3972 (3 : Fin 4)) = canonicalInput15663.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3972 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1996 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3972 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1996 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15663 hH))).trans (oldProjectionSound1996 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8112).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3972 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8112).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3972 (j : Fin 4)))
      2 576 2880 10 ![360, 720, 1440, 1440] ![8, 4, 2, 2] reductionProjection3972 ![reductionProjection2187, oldProjection2583, oldProjection1999, oldProjection1996]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection3973 : Integer.Sparse (Fin 1613) := [(376, 1)]

theorem reductionSound3973 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code376).moment H =
      Integer.Sparse.eval reductionProjection3973 (momentVector H) := by
  have hc : coordinates (376 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code376) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection3973, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection3974 : Integer.Sparse (Fin 1613) := [(0, 3), (94, 30), (698, 640), (952, -1440), (1167, -1440), (1226, 400), (1227, 320), (1251, -85), (1345, -1440)]

def reductionPivot3974 : Matrix (Fin 5) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![-1, -1, 1, 1, 0], ![0, 1, -2, 1, 0], ![0, 1, 1, -3, 1], ![2, -1, 0, 1, -2]]

theorem reductionSound3974 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode8201).moment H =
      Integer.Sparse.eval reductionProjection3974 (momentVector H) := by
  have heq : reductionPivot3974 = (fun u v => (normalNode8201).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation33 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8201).moment H = injectiveMoment H reductionPivot3974 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode8201).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation33)).trans (injectiveMoment_transpose H (normalNode8201).entries)).symm
  have hshape : reductionPivot3974 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot3974 4 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3974 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection3924, reductionProjection3945, reductionProjection2023, oldProjection2070] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot3974 (0 : Fin 4)) = canonicalInput4568.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3974 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3924 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3974 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3924 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound4568 hH))).trans (reductionSound3924 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3974 (1 : Fin 4)) = canonicalInput18371.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3974 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3945 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3974 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3945 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound18371 hH))).trans (reductionSound3945 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3974 (2 : Fin 4)) = canonicalInput18479.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3974 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2023 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3974 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2023 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound18479 hH))).trans (reductionSound2023 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3974 (3 : Fin 4)) = canonicalInput18483.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3974 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2070 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3974 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2070 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound18483 hH))).trans (oldProjectionSound2070 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8201).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3974 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8201).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3974 (j : Fin 4)))
      2 2880 2880 2 ![1, 1, 1, 1440] ![2880, 2880, 2880, 2] reductionProjection3974 ![reductionProjection3924, reductionProjection3945, reductionProjection2023, oldProjection2070]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection3975 : Integer.Sparse (Fin 1613) := [(0, -14), (81, 120), (94, -55), (376, -1440), (426, -720), (602, -720), (666, -360), (698, -1440), (865, -720), (890, -720), (952, 720), (956, -360), (966, 720), (1050, 240), (1055, 240), (1058, 120), (1059, -560), (1158, 720), (1166, 720), (1167, 720), (1221, 240), (1226, -320), (1227, -560), (1250, -30), (1251, 345), (1345, 720), (1389, 120)]

def reductionPivot3975 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, 1, 0, 0, -1], ![-2, -1, 0, 2, 1], ![0, -1, 1, -1, 1], ![0, 1, -2, 0, 1], ![1, 0, 0, -1, 0], ![1, 0, 1, 0, -2]]

theorem reductionSound3975 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1618).moment H =
      Integer.Sparse.eval reductionProjection3975 (momentVector H) := by
  have heq : reductionPivot3975 = (fun u v => (normalNode1618).entries (OAI.MUB6.Certificate.PairSemantics.permutation241 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1618).moment H = injectiveMoment H reductionPivot3975 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1618).entries OAI.MUB6.Certificate.PairSemantics.permutation241)).symm
  have hshape : reductionPivot3975 0 = Pi.single (1 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot3975 1 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![576, 2880, 2880, 1, 2880] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot3975 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection3972, reductionProjection3336, reductionProjection3568, reductionProjection3973, reductionProjection3974] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot3975 (0 : Fin 5)) = canonicalInput8028.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3975 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3972 (momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3975 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3972 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound8028 hH))).trans (reductionSound3972 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3975 (1 : Fin 5)) = canonicalInput3663.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3975 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3336 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3975 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3336 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound3663 hH))).trans (reductionSound3336 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3975 (2 : Fin 5)) = canonicalInput3586.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3975 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3568 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3975 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3568 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound3586 hH))).trans (reductionSound3568 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3975 (3 : Fin 5)) = canonicalInput3570.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3975 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3973 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3975 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3973 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound3570 hH))).trans (reductionSound3973 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3975 (4 : Fin 5)) = canonicalInput3568.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3975 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3974 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3975 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3974 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound3568 hH))).trans (reductionSound3974 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1618).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot3975 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1618).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot3975 (j : Fin 5)))
      1 1440 2880 2 ![576, 2880, 2880, 1, 2880] ![5, 1, 1, 2880, 1] reductionProjection3975 ![reductionProjection3972, reductionProjection3336, reductionProjection3568, reductionProjection3973, reductionProjection3974]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection3976 : Integer.Sparse (Fin 1613) := [(0, 4), (94, 5), (602, 180), (666, 180), (698, 260), (869, 180), (1027, 180), (1050, -60), (1055, -60), (1059, 200), (1227, 180), (1251, -115), (1389, -60)]

def reductionPivot3976 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 1, -1, 0], ![-1, -1, 0, 0, 2], ![0, -1, -1, 2, 0], ![0, 1, 1, 0, -2], ![1, 1, -1, -1, 0]]

theorem reductionSound3976 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode8111).moment H =
      Integer.Sparse.eval reductionProjection3976 (momentVector H) := by
  have heq : reductionPivot3976 = (fun u v => (normalNode8111).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8111).moment H = injectiveMoment H reductionPivot3976 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8111).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot3976 0 = Pi.single (2 : Fin 5) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot3976 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 1440, 1440, 360] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3976 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection3381, oldProjection2629, reductionProjection3050, oldProjection2003] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot3976 (0 : Fin 4)) = canonicalInput17798.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3976 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3381 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3976 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3381 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17798 hH))).trans (reductionSound3381 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3976 (1 : Fin 4)) = canonicalInput15696.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3976 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2629 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3976 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2629 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15696 hH))).trans (oldProjectionSound2629 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3976 (2 : Fin 4)) = canonicalInput15662.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3976 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3050 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3976 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3050 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15662 hH))).trans (reductionSound3050 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3976 (3 : Fin 4)) = canonicalInput15659.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3976 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2003 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3976 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2003 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15659 hH))).trans (oldProjectionSound2003 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8111).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3976 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8111).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3976 (j : Fin 4)))
      2 720 1440 4 ![1440, 1440, 1440, 360] ![1, 1, 1, 4] reductionProjection3976 ![reductionProjection3381, oldProjection2629, reductionProjection3050, oldProjection2003]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection3977 : Integer.Sparse (Fin 1613) := [(0, 54), (94, 95), (434, 720), (698, 880), (700, 80), (869, 720), (957, 720), (1050, -240), (1055, -240), (1058, -240), (1059, 480), (1226, 80), (1227, 560), (1250, 60), (1251, -495), (1388, -240)]

def reductionPivot3977 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 0, 1, -1], ![-1, 0, -1, 0, 2], ![0, -1, -1, 1, 1], ![0, 1, 1, 0, -2], ![1, 0, 1, -2, 0]]

theorem reductionSound3977 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode10017).moment H =
      Integer.Sparse.eval reductionProjection3977 (momentVector H) := by
  have heq : reductionPivot3977 = (fun u v => (normalNode10017).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10017).moment H = injectiveMoment H reductionPivot3977 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10017).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot3977 0 = Pi.single (3 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot3977 3 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 360, 1440, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3977 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection2057, oldProjection2003, oldProjection1652, oldProjection1750] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot3977 (0 : Fin 4)) = canonicalInput19988.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3977 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection2057 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3977 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection2057 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19988 hH))).trans (oldProjectionSound2057 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3977 (1 : Fin 4)) = canonicalInput19775.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3977 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2003 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3977 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2003 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19775 hH))).trans (oldProjectionSound2003 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3977 (2 : Fin 4)) = canonicalInput19760.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3977 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1652 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3977 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1652 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19760 hH))).trans (oldProjectionSound1652 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3977 (3 : Fin 4)) = canonicalInput19759.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3977 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1750 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3977 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1750 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19759 hH))).trans (oldProjectionSound1750 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10017).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3977 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10017).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3977 (j : Fin 4)))
      2 2880 2880 2 ![1440, 360, 1440, 720] ![2, 8, 2, 4] reductionProjection3977 ![oldProjection2057, oldProjection2003, oldProjection1652, oldProjection1750]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection3978 : Integer.Sparse (Fin 1613) := [(375, 1)]

theorem reductionSound3978 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code375).moment H =
      Integer.Sparse.eval reductionProjection3978 (momentVector H) := by
  have hc : coordinates (375 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code375) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection3978, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection3979 : Integer.Sparse (Fin 1613) := [(0, 1), (602, 180), (635, 180), (1027, 180), (1167, -360), (1171, -360), (1172, -360), (1227, -20), (1251, -5)]

def reductionPivot3979 : Matrix (Fin 5) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![0, -1, 0, 2, -1], ![0, 1, 1, -1, -1], ![-1, -1, 1, -1, 2], ![2, 1, -2, 0, -1]]

theorem reductionSound3979 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode10411).moment H =
      Integer.Sparse.eval reductionProjection3979 (momentVector H) := by
  have heq : reductionPivot3979 = (fun u v => (normalNode10411).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation33 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10411).moment H = injectiveMoment H reductionPivot3979 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode10411).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation33)).trans (injectiveMoment_transpose H (normalNode10411).entries)).symm
  have hshape : reductionPivot3979 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot3979 4 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 360] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3979 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection3114, reductionProjection2707, reductionProjection2023, reductionProjection2120] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot3979 (0 : Fin 4)) = canonicalInput17682.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3979 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3114 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3979 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3114 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17682 hH))).trans (reductionSound3114 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3979 (1 : Fin 4)) = canonicalInput26315.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3979 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2707 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3979 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2707 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound26315 hH))).trans (reductionSound2707 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3979 (2 : Fin 4)) = canonicalInput26350.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3979 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2023 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3979 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2023 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound26350 hH))).trans (reductionSound2023 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3979 (3 : Fin 4)) = canonicalInput26351.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3979 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2120 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3979 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2120 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound26351 hH))).trans (reductionSound2120 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10411).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3979 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10411).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3979 (j : Fin 4)))
      2 720 720 2 ![1, 1, 1, 360] ![720, 720, 720, 2] reductionProjection3979 ![reductionProjection3114, reductionProjection2707, reductionProjection2023, reductionProjection2120]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection3980 : Integer.Sparse (Fin 1613) := [(0, -18), (94, -23), (375, -576), (433, -144), (434, -144), (602, -288), (635, -144), (666, -144), (698, -496), (700, -16), (869, -432), (957, -144), (1027, -288), (1050, 96), (1055, 96), (1058, 48), (1059, -352), (1166, 288), (1167, 288), (1171, 288), (1172, 288), (1221, 48), (1226, -16), (1227, -304), (1250, -12), (1251, 259), (1368, 288), (1388, 48), (1389, 96)]

def reductionPivot3980 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, 1, 0, 0, -1], ![-2, -1, 0, 2, 1], ![0, -1, 1, -1, 1], ![0, 1, -2, 0, 1], ![1, 0, 0, 0, -1], ![1, 0, 1, -1, -1]]

theorem reductionSound3980 {H : CMatrix} (hH : IsHadamard H) :
    (576 : ℝ) * (normalNode1619).moment H =
      Integer.Sparse.eval reductionProjection3980 (momentVector H) := by
  have heq : reductionPivot3980 = (fun u v => (normalNode1619).entries (OAI.MUB6.Certificate.PairSemantics.permutation241 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1619).moment H = injectiveMoment H reductionPivot3980 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1619).entries OAI.MUB6.Certificate.PairSemantics.permutation241)).symm
  have hshape : reductionPivot3980 0 = Pi.single (1 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot3980 1 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 2880, 180, 1, 720] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot3980 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection3976, reductionProjection3977, reductionProjection2941, reductionProjection3978, reductionProjection3979] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot3980 (0 : Fin 5)) = canonicalInput8029.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3980 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3976 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3980 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3976 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound8029 hH))).trans (reductionSound3976 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3980 (1 : Fin 5)) = canonicalInput3664.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3980 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3977 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3980 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3977 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound3664 hH))).trans (reductionSound3977 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3980 (2 : Fin 5)) = canonicalInput3587.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((180 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3980 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2941 (momentVector H)
      have hh : (180 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3980 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2941 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (180 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound3587 hH))).trans (reductionSound2941 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3980 (3 : Fin 5)) = canonicalInput3571.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3980 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3978 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3980 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3978 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound3571 hH))).trans (reductionSound3978 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3980 (4 : Fin 5)) = canonicalInput3569.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3980 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3979 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3980 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3979 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound3569 hH))).trans (reductionSound3979 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1619).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot3980 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1619).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot3980 (j : Fin 5)))
      1 576 2880 5 ![720, 2880, 180, 1, 720] ![4, 1, 16, 2880, 4] reductionProjection3980 ![reductionProjection3976, reductionProjection3977, reductionProjection2941, reductionProjection3978, reductionProjection3979]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection3981 : Integer.Sparse (Fin 1613) := [(0, 21), (94, 30), (698, 1120), (1059, 80), (1226, 400), (1227, 560), (1251, -255), (1389, -240)]

def reductionPivot3981 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 1, 0, 0, -1], ![-1, 0, -1, 1, 1], ![0, 0, 1, -2, 1], ![0, 0, 1, 1, -2], ![1, -1, -1, 0, 1]]

theorem reductionSound3981 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode10177).moment H =
      Integer.Sparse.eval reductionProjection3981 (momentVector H) := by
  have heq : reductionPivot3981 = (fun u v => (normalNode10177).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10177).moment H = injectiveMoment H reductionPivot3981 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10177).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot3981 0 = Pi.single (1 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot3981 1 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![36, 720, 1440, 180] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3981 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection2072, oldProjection2084, oldProjection2070, oldProjection1126] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot3981 (0 : Fin 4)) = canonicalInput22801.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3981 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection2072 (momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3981 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection2072 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound22801 hH))).trans (oldProjectionSound2072 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3981 (1 : Fin 4)) = canonicalInput20068.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3981 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2084 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3981 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2084 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20068 hH))).trans (oldProjectionSound2084 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3981 (2 : Fin 4)) = canonicalInput20036.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3981 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection2070 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3981 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection2070 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20036 hH))).trans (oldProjectionSound2070 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3981 (3 : Fin 4)) = canonicalInput20033.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((180 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3981 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1126 (momentVector H)
      have hh : (180 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3981 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1126 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (180 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20033 hH))).trans (oldProjectionSound1126 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10177).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3981 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10177).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3981 (j : Fin 4)))
      2 2880 2880 2 ![36, 720, 1440, 180] ![80, 4, 2, 16] reductionProjection3981 ![oldProjection2072, oldProjection2084, oldProjection2070, oldProjection1126]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection3982 : Integer.Sparse (Fin 1613) := [(0, 1), (602, 360), (890, 180), (952, -360), (986, -360), (1190, -360), (1227, -20), (1251, -5)]

def reductionPivot3982 : Matrix (Fin 5) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![-2, 0, 1, 1, 0], ![1, 0, -2, 1, 0], ![1, -2, 1, -1, 1], ![1, 2, 0, -1, -2]]

theorem reductionSound3982 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode6835).moment H =
      Integer.Sparse.eval reductionProjection3982 (momentVector H) := by
  have heq : reductionPivot3982 = (fun u v => (normalNode6835).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation33 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6835).moment H = injectiveMoment H reductionPivot3982 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode6835).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation33)).trans (injectiveMoment_transpose H (normalNode6835).entries)).symm
  have hshape : reductionPivot3982 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot3982 4 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 360] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3982 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection3924, reductionProjection3044, reductionProjection2688, reductionProjection2187] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot3982 (0 : Fin 4)) = canonicalInput479.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3982 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3924 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3982 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3924 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound479 hH))).trans (reductionSound3924 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3982 (1 : Fin 4)) = canonicalInput9142.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3982 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3044 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3982 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3044 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound9142 hH))).trans (reductionSound3044 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3982 (2 : Fin 4)) = canonicalInput9210.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3982 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2688 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3982 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2688 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound9210 hH))).trans (reductionSound2688 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3982 (3 : Fin 4)) = canonicalInput9213.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3982 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2187 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3982 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2187 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound9213 hH))).trans (reductionSound2187 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6835).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3982 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6835).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3982 (j : Fin 4)))
      2 720 720 2 ![1, 1, 1, 360] ![720, 720, 720, 2] reductionProjection3982 ![reductionProjection3924, reductionProjection3044, reductionProjection2688, reductionProjection2187]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection3983 : Integer.Sparse (Fin 1613) := [(0, 1), (602, 180), (635, 180), (973, -360), (1027, 180), (1161, -360), (1227, -20), (1251, -5), (1345, -360)]

def reductionPivot3983 : Matrix (Fin 5) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![-2, 0, 1, 1, 0], ![1, -1, -1, 1, 0], ![1, -1, 1, -2, 1], ![1, 2, -1, 0, -2]]

theorem reductionSound3983 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode6828).moment H =
      Integer.Sparse.eval reductionProjection3983 (momentVector H) := by
  have heq : reductionPivot3983 = (fun u v => (normalNode6828).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation33 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6828).moment H = injectiveMoment H reductionPivot3983 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode6828).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation33)).trans (injectiveMoment_transpose H (normalNode6828).entries)).symm
  have hshape : reductionPivot3983 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot3983 4 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 360] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3983 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection3945, reductionProjection2831, reductionProjection3061, reductionProjection2120] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot3983 (0 : Fin 4)) = canonicalInput476.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3983 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3945 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3983 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3945 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound476 hH))).trans (reductionSound3945 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3983 (1 : Fin 4)) = canonicalInput9127.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3983 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2831 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3983 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2831 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound9127 hH))).trans (reductionSound2831 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3983 (2 : Fin 4)) = canonicalInput9204.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3983 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3061 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3983 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3061 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound9204 hH))).trans (reductionSound3061 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3983 (3 : Fin 4)) = canonicalInput9205.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3983 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2120 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3983 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2120 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound9205 hH))).trans (reductionSound2120 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6828).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3983 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6828).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3983 (j : Fin 4)))
      2 720 720 2 ![1, 1, 1, 360] ![720, 720, 720, 2] reductionProjection3983 ![reductionProjection3945, reductionProjection2831, reductionProjection3061, reductionProjection2120]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection3984 : Integer.Sparse (Fin 1613) := [(374, 1)]

theorem reductionSound3984 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code374).moment H =
      Integer.Sparse.eval reductionProjection3984 (momentVector H) := by
  have hc : coordinates (374 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code374) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection3984, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection3985 : Integer.Sparse (Fin 1613) := [(0, -33), (94, -30), (374, -2880), (602, -2880), (635, -1440), (698, -1120), (890, -720), (952, 1440), (973, 1440), (986, 1440), (1027, -1440), (1059, -80), (1161, 1440), (1167, 1440), (1171, 1440), (1172, 1440), (1190, 1440), (1226, -400), (1227, -320), (1251, 315), (1345, 1440), (1389, 240)]

def reductionPivot3985 : Matrix (Fin 6) (Fin 5) ℤ := ![![1, 0, 0, -1, 0], ![-2, -1, 0, 2, 1], ![0, -1, 1, -1, 1], ![0, 1, -2, 0, 1], ![0, 1, 1, 0, -2], ![1, 0, 0, 0, -1]]

theorem reductionSound3985 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode1620).moment H =
      Integer.Sparse.eval reductionProjection3985 (momentVector H) := by
  have heq : reductionPivot3985 = (fun u v => (normalNode1620).entries (OAI.MUB6.Certificate.PairSemantics.permutation258 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1620).moment H = injectiveMoment H reductionPivot3985 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1620).entries OAI.MUB6.Certificate.PairSemantics.permutation258)).symm
  have hshape : reductionPivot3985 0 = Pi.single (0 : Fin 5) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot3985 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![2880, 720, 720, 720, 1] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot3985 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection3981, reductionProjection3982, reductionProjection3983, reductionProjection3979, reductionProjection3984] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot3985 (0 : Fin 5)) = canonicalInput16382.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3985 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3981 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3985 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3981 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16382 hH))).trans (reductionSound3981 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3985 (1 : Fin 5)) = canonicalInput3719.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3985 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3982 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3985 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3982 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound3719 hH))).trans (reductionSound3982 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3985 (2 : Fin 5)) = canonicalInput3592.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3985 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3983 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3985 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3983 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound3592 hH))).trans (reductionSound3983 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3985 (3 : Fin 5)) = canonicalInput3572.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3985 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3979 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3985 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3979 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound3572 hH))).trans (reductionSound3979 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3985 (4 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code374).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3985 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3984 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3985 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3984 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he)).trans (reductionSound3984 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1620).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot3985 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1620).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot3985 (j : Fin 5)))
      1 2880 2880 1 ![2880, 720, 720, 720, 1] ![1, 4, 4, 4, 2880] reductionProjection3985 ![reductionProjection3981, reductionProjection3982, reductionProjection3983, reductionProjection3979, reductionProjection3984]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection3986 : Integer.Sparse (Fin 1613) := [(0, 17), (94, 10), (698, 560), (890, 720), (1015, 720), (1016, 720), (1059, 80), (1226, 320), (1227, 240), (1251, -135)]

def reductionPivot3986 : Matrix (Fin 5) (Fin 5) ℤ := ![![1, 0, 0, 0, -1], ![-1, -1, 0, 1, 1], ![0, 0, 1, -2, 1], ![0, 0, 1, 1, -2], ![0, 1, -2, 0, 1]]

theorem reductionSound3986 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode8763).moment H =
      Integer.Sparse.eval reductionProjection3986 (momentVector H) := by
  have heq : reductionPivot3986 = (fun u v => (normalNode8763).entries (OAI.MUB6.Certificate.PairSemantics.permutation128 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8763).moment H = injectiveMoment H reductionPivot3986 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8763).entries OAI.MUB6.Certificate.PairSemantics.permutation128)).symm
  have hshape : reductionPivot3986 0 = Pi.single (0 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot3986 0 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1440, 144, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3986 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1009, oldProjection2073, oldProjection2069, oldProjection2087] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot3986 (0 : Fin 4)) = canonicalInput26271.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3986 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1009 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3986 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1009 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound26271 hH))).trans (oldProjectionSound1009 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3986 (1 : Fin 4)) = canonicalInput16851.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3986 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2073 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3986 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2073 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16851 hH))).trans (oldProjectionSound2073 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3986 (2 : Fin 4)) = canonicalInput16645.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3986 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection2069 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3986 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection2069 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16645 hH))).trans (oldProjectionSound2069 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3986 (3 : Fin 4)) = canonicalInput16632.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3986 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2087 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3986 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2087 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16632 hH))).trans (oldProjectionSound2087 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8763).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3986 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8763).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3986 (j : Fin 4)))
      2 2880 2880 2 ![720, 1440, 144, 720] ![4, 2, 20, 4] reductionProjection3986 ![oldProjection1009, oldProjection2073, oldProjection2069, oldProjection2087]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection3987 : Integer.Sparse (Fin 1613) := [(0, -1), (426, 360), (461, 360), (666, 360), (698, 160), (782, 360), (890, 360), (919, 360), (1015, 360), (1016, 360), (1059, 40), (1227, 40), (1251, -35)]

def reductionPivot3987 : Matrix (Fin 5) (Fin 5) ℤ := ![![1, 0, 0, 0, -1], ![-1, -2, 0, 2, 1], ![0, 0, 1, -2, 1], ![0, 1, -2, 0, 1], ![0, 1, 1, 0, -2]]

theorem reductionSound3987 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6637).moment H =
      Integer.Sparse.eval reductionProjection3987 (momentVector H) := by
  have heq : reductionPivot3987 = (fun u v => (normalNode6637).entries (OAI.MUB6.Certificate.PairSemantics.permutation128 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6637).moment H = injectiveMoment H reductionPivot3987 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6637).entries OAI.MUB6.Certificate.PairSemantics.permutation128)).symm
  have hshape : reductionPivot3987 0 = Pi.single (0 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot3987 0 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1440, 1440, 2] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3987 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection609, oldProjection1996, reductionProjection3153, reductionProjection3949] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot3987 (0 : Fin 4)) = canonicalInput24189.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3987 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection609 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3987 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection609 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound24189 hH))).trans (oldProjectionSound609 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3987 (1 : Fin 4)) = canonicalInput13366.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3987 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1996 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3987 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1996 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13366 hH))).trans (oldProjectionSound1996 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3987 (2 : Fin 4)) = canonicalInput13330.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3987 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3153 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3987 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3153 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13330 hH))).trans (reductionSound3153 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3987 (3 : Fin 4)) = canonicalInput13327.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3987 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3949 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3987 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3949 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13327 hH))).trans (reductionSound3949 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6637).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3987 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6637).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3987 (j : Fin 4)))
      2 1440 1440 2 ![1, 1440, 1440, 2] ![1440, 1, 1, 720] reductionProjection3987 ![oldProjection609, oldProjection1996, reductionProjection3153, reductionProjection3949]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection3988 : Integer.Sparse (Fin 1613) := [(379, 1)]

theorem reductionSound3988 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code379).moment H =
      Integer.Sparse.eval reductionProjection3988 (momentVector H) := by
  have hc : coordinates (379 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code379) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection3988, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection3989 : Integer.Sparse (Fin 1613) := [(0, 1), (81, -240), (94, 5), (602, 720), (698, 720), (890, 720), (1059, 240), (1158, -1440), (1221, -480), (1226, 160), (1227, 400), (1251, -200), (1345, -1440), (1389, -240)]

def reductionPivot3989 : Matrix (Fin 5) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![-2, 0, 1, 1, 0], ![1, -1, 0, 1, -1], ![1, -1, 1, -2, 1], ![1, 2, -2, 0, -1]]

theorem reductionSound3989 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode6829).moment H =
      Integer.Sparse.eval reductionProjection3989 (momentVector H) := by
  have heq : reductionPivot3989 = (fun u v => (normalNode6829).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation33 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6829).moment H = injectiveMoment H reductionPivot3989 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode6829).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation33)).trans (injectiveMoment_transpose H (normalNode6829).entries)).symm
  have hshape : reductionPivot3989 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot3989 4 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 288, 1, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3989 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection3945, reductionProjection3404, reductionProjection3008, reductionProjection3478] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot3989 (0 : Fin 4)) = canonicalInput477.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3989 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3945 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3989 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3945 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound477 hH))).trans (reductionSound3945 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3989 (1 : Fin 4)) = canonicalInput9130.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3989 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3404 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3989 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3404 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound9130 hH))).trans (reductionSound3404 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3989 (2 : Fin 4)) = canonicalInput9206.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3989 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3008 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3989 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3008 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound9206 hH))).trans (reductionSound3008 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3989 (3 : Fin 4)) = canonicalInput9207.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3989 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3478 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3989 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3478 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound9207 hH))).trans (reductionSound3478 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6829).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3989 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6829).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3989 (j : Fin 4)))
      2 2880 2880 2 ![1, 288, 1, 1440] ![2880, 10, 2880, 2] reductionProjection3989 ![reductionProjection3945, reductionProjection3404, reductionProjection3008, reductionProjection3478]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection3990 : Integer.Sparse (Fin 1613) := [(0, -19), (81, 240), (94, -30), (379, -2880), (426, -720), (461, -720), (602, -1440), (666, -720), (697, 240), (698, -2240), (782, -720), (890, -2880), (919, -720), (1015, -1440), (1016, -1440), (1058, 240), (1059, -640), (1157, 1440), (1158, 1440), (1172, 1440), (1221, 720), (1226, -560), (1227, -1040), (1251, 605), (1345, 1440), (1389, 480)]

def reductionPivot3990 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, 1, 0, -1, 0], ![-2, -1, 0, 2, 1], ![0, -1, 1, -1, 1], ![0, 1, 0, 0, -1], ![1, 0, -2, 0, 1], ![1, 0, 1, 0, -2]]

theorem reductionSound3990 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode1621).moment H =
      Integer.Sparse.eval reductionProjection3990 (momentVector H) := by
  have heq : reductionPivot3990 = (fun u v => (normalNode1621).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1621).moment H = injectiveMoment H reductionPivot3990 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1621).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot3990 0 = Pi.single (1 : Fin 5) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot3990 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![2880, 1440, 1, 2880, 2880] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot3990 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection3986, reductionProjection3987, reductionProjection3988, reductionProjection3989, reductionProjection3970] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot3990 (0 : Fin 5)) = canonicalInput7051.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3990 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3986 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3990 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3986 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound7051 hH))).trans (reductionSound3986 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3990 (1 : Fin 5)) = canonicalInput3658.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3990 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3987 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3990 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3987 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound3658 hH))).trans (reductionSound3987 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3990 (2 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code379).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3990 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3988 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3990 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3988 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he)).trans (reductionSound3988 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3990 (3 : Fin 5)) = canonicalInput3580.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3990 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3989 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3990 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3989 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound3580 hH))).trans (reductionSound3989 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3990 (4 : Fin 5)) = canonicalInput3578.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3990 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3970 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3990 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3970 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound3578 hH))).trans (reductionSound3970 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1621).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot3990 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1621).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot3990 (j : Fin 5)))
      1 2880 2880 1 ![2880, 1440, 1, 2880, 2880] ![1, 2, 2880, 1, 1] reductionProjection3990 ![reductionProjection3986, reductionProjection3987, reductionProjection3988, reductionProjection3989, reductionProjection3970]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection3991 : Integer.Sparse (Fin 1613) := [(0, 19), (94, 15), (698, 960), (890, 720), (1015, 720), (1016, 720), (1059, 160), (1226, 320), (1227, 320), (1251, -240)]

def reductionPivot3991 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 1, 0, -1], ![-1, -1, 0, 1, 1], ![0, 0, 1, -2, 1], ![0, 1, -2, 0, 1], ![1, 0, 0, 1, -2]]

theorem reductionSound3991 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode8759).moment H =
      Integer.Sparse.eval reductionProjection3991 (momentVector H) := by
  have heq : reductionPivot3991 = (fun u v => (normalNode8759).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8759).moment H = injectiveMoment H reductionPivot3991 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8759).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot3991 0 = Pi.single (2 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot3991 2 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 1440, 288, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3991 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection2073, oldProjection2015, oldProjection2744, oldProjection2069] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot3991 (0 : Fin 4)) = canonicalInput18468.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3991 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection2073 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3991 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection2073 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound18468 hH))).trans (oldProjectionSound2073 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3991 (1 : Fin 4)) = canonicalInput16723.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3991 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2015 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3991 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2015 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16723 hH))).trans (oldProjectionSound2015 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3991 (2 : Fin 4)) = canonicalInput16639.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3991 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection2744 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3991 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection2744 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16639 hH))).trans (oldProjectionSound2744 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3991 (3 : Fin 4)) = canonicalInput16635.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3991 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2069 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3991 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2069 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16635 hH))).trans (oldProjectionSound2069 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8759).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3991 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8759).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3991 (j : Fin 4)))
      2 2880 2880 2 ![1440, 1440, 288, 144] ![2, 2, 10, 20] reductionProjection3991 ![oldProjection2073, oldProjection2015, oldProjection2744, oldProjection2069]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection3992 : Integer.Sparse (Fin 1613) := [(426, 9), (461, 9), (668, 9), (674, 9), (698, 7), (782, 9), (890, 27), (919, 9), (1015, 9), (1016, 9), (1059, 2), (1221, -3), (1227, 2), (1251, -2)]

def reductionPivot3992 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 1, 0, 0, -1], ![-1, -2, 0, 2, 1], ![0, 0, 1, -2, 1], ![0, 1, -2, 0, 1], ![1, 0, 1, 0, -2]]

theorem reductionSound3992 {H : CMatrix} (hH : IsHadamard H) :
    (36 : ℝ) * (normalNode6636).moment H =
      Integer.Sparse.eval reductionProjection3992 (momentVector H) := by
  have heq : reductionPivot3992 = (fun u v => (normalNode6636).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6636).moment H = injectiveMoment H reductionPivot3992 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6636).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot3992 0 = Pi.single (1 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot3992 1 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1440, 1440, 2] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3992 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection2023, oldProjection1995, reductionProjection3459, reductionProjection3949] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot3992 (0 : Fin 4)) = canonicalInput17628.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3992 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection2023 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3992 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection2023 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17628 hH))).trans (oldProjectionSound2023 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3992 (1 : Fin 4)) = canonicalInput13354.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3992 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1995 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3992 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1995 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13354 hH))).trans (oldProjectionSound1995 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3992 (2 : Fin 4)) = canonicalInput13329.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3992 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3459 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3992 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3459 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13329 hH))).trans (reductionSound3459 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3992 (3 : Fin 4)) = canonicalInput13327.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3992 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3949 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3992 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3949 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13327 hH))).trans (reductionSound3949 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6636).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3992 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6636).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3992 (j : Fin 4)))
      2 36 1440 80 ![720, 1440, 1440, 2] ![2, 1, 1, 720] reductionProjection3992 ![oldProjection2023, oldProjection1995, reductionProjection3459, reductionProjection3949]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection3993 : Integer.Sparse (Fin 1613) := [(0, 1), (602, 720), (698, 80), (883, -720), (1157, -720), (1158, -720), (1227, 160), (1251, -25), (1389, -240)]

def reductionPivot3993 : Matrix (Fin 5) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![-1, 0, 0, 2, -1], ![0, 1, 1, -1, -1], ![0, -2, 1, -1, 2], ![2, 1, -2, 0, -1]]

theorem reductionSound3993 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode8439).moment H =
      Integer.Sparse.eval reductionProjection3993 (momentVector H) := by
  have heq : reductionPivot3993 = (fun u v => (normalNode8439).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation33 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8439).moment H = injectiveMoment H reductionPivot3993 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode8439).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation33)).trans (injectiveMoment_transpose H (normalNode8439).entries)).symm
  have hshape : reductionPivot3993 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot3993 4 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3993 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection3547, reductionProjection3008, reductionProjection3950, reductionProjection3591] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot3993 (0 : Fin 4)) = canonicalInput8054.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3993 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3547 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3993 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3547 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound8054 hH))).trans (reductionSound3547 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3993 (1 : Fin 4)) = canonicalInput21387.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3993 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3008 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3993 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3008 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound21387 hH))).trans (reductionSound3008 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3993 (2 : Fin 4)) = canonicalInput21512.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3993 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3950 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3993 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3950 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound21512 hH))).trans (reductionSound3950 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3993 (3 : Fin 4)) = canonicalInput21513.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3993 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3591 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3993 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3591 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound21513 hH))).trans (reductionSound3591 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8439).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3993 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8439).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3993 (j : Fin 4)))
      2 1440 1440 2 ![1, 1, 1, 720] ![1440, 1440, 1440, 2] reductionProjection3993 ![reductionProjection3547, reductionProjection3008, reductionProjection3950, reductionProjection3591]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection3994 : Integer.Sparse (Fin 1613) := [(378, 1)]

theorem reductionSound3994 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code378).moment H =
      Integer.Sparse.eval reductionProjection3994 (momentVector H) := by
  have hc : coordinates (378 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code378) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection3994, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection3995 : Integer.Sparse (Fin 1613) := [(0, -5), (94, -3), (378, -576), (426, -144), (461, -144), (602, -432), (635, -144), (668, -144), (674, -144), (698, -336), (782, -144), (883, 288), (890, -576), (919, -144), (973, 288), (1015, -288), (1016, -288), (1027, -144), (1059, -64), (1157, 288), (1158, 288), (1161, 288), (1221, 48), (1226, -64), (1227, -144), (1251, 94), (1345, 288), (1389, 96)]

def reductionPivot3995 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, 1, 0, -1, 0], ![-2, -1, 0, 2, 1], ![0, -1, 1, -1, 1], ![0, 1, 1, 0, -2], ![1, 0, -2, 0, 1], ![1, 0, 0, 0, -1]]

theorem reductionSound3995 {H : CMatrix} (hH : IsHadamard H) :
    (576 : ℝ) * (normalNode1622).moment H =
      Integer.Sparse.eval reductionProjection3995 (momentVector H) := by
  have heq : reductionPivot3995 = (fun u v => (normalNode1622).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1622).moment H = injectiveMoment H reductionPivot3995 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1622).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot3995 0 = Pi.single (1 : Fin 5) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot3995 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![2880, 36, 1440, 720, 1] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot3995 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection3991, reductionProjection3992, reductionProjection3993, reductionProjection3983, reductionProjection3994] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot3995 (0 : Fin 5)) = canonicalInput7054.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3995 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3991 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3995 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3991 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound7054 hH))).trans (reductionSound3991 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3995 (1 : Fin 5)) = canonicalInput3659.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3995 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3992 (momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3995 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3992 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound3659 hH))).trans (reductionSound3992 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3995 (2 : Fin 5)) = canonicalInput3589.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3995 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3993 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3995 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3993 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound3589 hH))).trans (reductionSound3993 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3995 (3 : Fin 5)) = canonicalInput3584.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3995 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3983 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3995 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3983 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound3584 hH))).trans (reductionSound3983 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3995 (4 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code378).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3995 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3994 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3995 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3994 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he)).trans (reductionSound3994 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1622).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot3995 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1622).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot3995 (j : Fin 5)))
      1 576 2880 5 ![2880, 36, 1440, 720, 1] ![1, 80, 2, 4, 2880] reductionProjection3995 ![reductionProjection3991, reductionProjection3992, reductionProjection3993, reductionProjection3983, reductionProjection3994]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection3996 : Integer.Sparse (Fin 1613) := [(0, 1), (489, 72), (602, 72), (698, 72), (890, 72), (1027, 72), (1059, 48), (1221, -24), (1227, 48), (1251, -25), (1389, -24)]

def reductionPivot3996 : Matrix (Fin 5) (Fin 5) ℤ := ![![1, 0, 0, -1, 0], ![-1, -1, 0, 1, 1], ![0, -1, 1, -1, 1], ![0, 0, 1, 1, -2], ![0, 2, -2, 0, 0]]

theorem reductionSound3996 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode8530).moment H =
      Integer.Sparse.eval reductionProjection3996 (momentVector H) := by
  have heq : reductionPivot3996 = (fun u v => (normalNode8530).entries (OAI.MUB6.Certificate.PairSemantics.permutation128 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8530).moment H = injectiveMoment H reductionPivot3996 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8530).entries OAI.MUB6.Certificate.PairSemantics.permutation128)).symm
  have hshape : reductionPivot3996 0 = Pi.single (0 : Fin 5) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot3996 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1440, 1440, 360] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3996 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1000, reductionProjection3478, oldProjection2065, reductionProjection3658] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot3996 (0 : Fin 4)) = canonicalInput25101.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3996 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1000 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3996 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1000 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25101 hH))).trans (oldProjectionSound1000 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3996 (1 : Fin 4)) = canonicalInput16838.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3996 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3478 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3996 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3478 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16838 hH))).trans (reductionSound3478 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3996 (2 : Fin 4)) = canonicalInput16396.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3996 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection2065 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3996 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection2065 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16396 hH))).trans (oldProjectionSound2065 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3996 (3 : Fin 4)) = canonicalInput16381.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3996 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3658 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3996 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3658 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16381 hH))).trans (reductionSound3658 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8530).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3996 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8530).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3996 (j : Fin 4)))
      2 288 1440 10 ![720, 1440, 1440, 360] ![2, 1, 1, 4] reductionProjection3996 ![oldProjection1000, reductionProjection3478, oldProjection2065, reductionProjection3658]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection3997 : Integer.Sparse (Fin 1613) := [(380, 1)]

theorem reductionSound3997 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code380).moment H =
      Integer.Sparse.eval reductionProjection3997 (momentVector H) := by
  have hc : coordinates (380 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code380) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection3997, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection3998 : Integer.Sparse (Fin 1613) := [(0, -5), (94, -7), (698, -64), (700, -16), (1059, -32), (1227, -48), (1251, 34)]

def reductionPivot3998 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-1, -1, 0, 2], ![0, 0, 1, -1], ![0, 1, 1, -2], ![1, 1, -2, 0]]

theorem reductionSound3998 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode8941).moment H =
      Integer.Sparse.eval reductionProjection3998 (momentVector H) := by
  have heq : reductionPivot3998 = (fun u v => (normalNode8941).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8941).moment H = injectiveMoment H reductionPivot3998 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8941).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot3998 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot3998 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 720, 360, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3998 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection801, oldProjection1000, oldProjection1045, oldProjection1047] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot3998 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node801⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3998 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection801 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3998 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection801 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound801 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3998 (1 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1000⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3998 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1000 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3998 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1000 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1000 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3998 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1045⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3998 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1045 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3998 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1045 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1045 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3998 (3 : Fin 4)) = canonicalInput17266.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3998 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1047 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3998 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1047 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17266 hH))).trans (oldProjectionSound1047 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8941).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3998 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8941).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3998 (j : Fin 4)))
      2 288 1440 10 ![720, 720, 360, 720] ![2, 2, 4, 2] reductionProjection3998 ![oldProjection801, oldProjection1000, oldProjection1045, oldProjection1047]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection3999 : Integer.Sparse (Fin 1613) := [(0, 36), (94, 35), (698, 800), (700, 80), (1059, 560), (1172, -1440), (1227, 480), (1251, -365), (1368, -1440)]

def reductionPivot3999 : Matrix (Fin 5) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![-1, -1, 0, 2, 0], ![0, -1, 1, -1, 1], ![1, 0, 1, -1, -1], ![1, 2, -2, 0, -1]]

theorem reductionSound3999 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode8463).moment H =
      Integer.Sparse.eval reductionProjection3999 (momentVector H) := by
  have heq : reductionPivot3999 = (fun u v => (normalNode8463).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation33 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8463).moment H = injectiveMoment H reductionPivot3999 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode8463).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation33)).trans (injectiveMoment_transpose H (normalNode8463).entries)).symm
  have hshape : reductionPivot3999 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot3999 4 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 288, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3999 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection2940, reductionProjection3114, reductionProjection3998, oldProjection2065] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot3999 (0 : Fin 4)) = canonicalInput3590.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3999 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2940 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3999 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2940 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound3590 hH))).trans (reductionSound2940 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3999 (1 : Fin 4)) = canonicalInput17431.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3999 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3114 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3999 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3114 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17431 hH))).trans (reductionSound3114 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3999 (2 : Fin 4)) = canonicalInput17533.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3999 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3998 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3999 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3998 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17533 hH))).trans (reductionSound3998 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3999 (3 : Fin 4)) = canonicalInput17538.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3999 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2065 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3999 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2065 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17538 hH))).trans (oldProjectionSound2065 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8463).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3999 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8463).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3999 (j : Fin 4)))
      2 2880 2880 2 ![1, 1, 288, 1440] ![2880, 2880, 10, 2] reductionProjection3999 ![reductionProjection2940, reductionProjection3114, reductionProjection3998, oldProjection2065]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization
