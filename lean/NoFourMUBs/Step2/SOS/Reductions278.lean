import NoFourMUBs.Step2.SOS.Canonical153
import NoFourMUBs.Step2.SOS.Canonical157
import NoFourMUBs.Step2.SOS.Canonical158
import NoFourMUBs.Step2.SOS.Canonical159
import NoFourMUBs.Step2.SOS.Canonical160
import NoFourMUBs.Step2.SOS.Canonical161
import NoFourMUBs.Step2.SOS.Canonical164
import NoFourMUBs.Step2.SOS.Canonical181
import NoFourMUBs.Step2.SOS.Canonical185
import NoFourMUBs.Step2.SOS.Canonical187
import NoFourMUBs.Step2.SOS.Canonical191
import NoFourMUBs.Step2.SOS.Canonical302
import NoFourMUBs.Step2.SOS.Canonical315
import NoFourMUBs.Step2.SOS.Canonical351
import NoFourMUBs.Step2.SOS.Canonical355
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes17
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.OldProjections001
import NoFourMUBs.Step2.SOS.OldProjections003
import NoFourMUBs.Step2.SOS.OldProjections006
import NoFourMUBs.Step2.SOS.OldProjections007
import NoFourMUBs.Step2.SOS.OldProjections008
import NoFourMUBs.Step2.SOS.OldProjections009
import NoFourMUBs.Step2.SOS.OldProjections010
import NoFourMUBs.Step2.SOS.OldProjections011
import NoFourMUBs.Step2.SOS.OldProjections013
import NoFourMUBs.Step2.SOS.OldProjections014
import NoFourMUBs.Step2.SOS.OldProjections015
import NoFourMUBs.Step2.SOS.OldProjections016
import NoFourMUBs.Step2.SOS.OldProjections017
import NoFourMUBs.Step2.SOS.OldProjections019
import NoFourMUBs.Step2.SOS.OldProjections020
import NoFourMUBs.Step2.SOS.OldProjections024
import NoFourMUBs.Step2.SOS.OldProjections025
import NoFourMUBs.Step2.SOS.OldProjections028
import NoFourMUBs.Step2.SOS.OldProjections029
import NoFourMUBs.Step2.SOS.OldProjections030
import NoFourMUBs.Step2.SOS.OldProjections031
import NoFourMUBs.Step2.SOS.OldProjections037
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions007
import NoFourMUBs.Step2.SOS.Reductions022
import NoFourMUBs.Step2.SOS.Reductions032
import NoFourMUBs.Step2.SOS.Reductions040
import NoFourMUBs.Step2.SOS.Reductions047
import NoFourMUBs.Step2.SOS.Reductions063
import NoFourMUBs.Step2.SOS.Reductions078
import NoFourMUBs.Step2.SOS.Reductions121
import NoFourMUBs.Step2.SOS.Reductions173
import NoFourMUBs.Step2.SOS.Reductions181
import NoFourMUBs.Step2.SOS.Reductions183
import NoFourMUBs.Step2.SOS.Reductions184
import NoFourMUBs.Step2.SOS.Reductions188
import NoFourMUBs.Step2.SOS.Reductions215
import NoFourMUBs.Step2.SOS.Reductions216
import NoFourMUBs.Step2.SOS.Reductions234
import NoFourMUBs.Step2.SOS.Reductions240
import NoFourMUBs.Step2.SOS.Reductions270
import NoFourMUBs.Step2.SOS.Reductions273
import NoFourMUBs.Step2.SOS.Reductions274
import NoFourMUBs.Step2.SOS.Reductions275
import NoFourMUBs.Step2.SOS.Reductions276
import NoFourMUBs.Step2.SOS.Reductions277
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical139
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical140
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical141
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical143
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical146
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical147
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical148
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical158
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical166
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical219
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes33
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes34
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection8896 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 20), (691, 240), (794, -720), (1050, 240), (1058, 480), (1116, -720), (1250, -60), (1251, 15)]

def reductionPivot8896 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, -1, 0, 0], ![-2, 1, -1, 2], ![0, -1, 3, -2], ![0, 0, -2, 2], ![1, 1, 0, -2]]

theorem reductionSound8896 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5140).moment H =
      Integer.Sparse.eval reductionProjection8896 (momentVector H) := by
  have heq : reductionPivot8896 = (fun u v => (normalNode5140).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5140).moment H = injectiveMoment H reductionPivot8896 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5140).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot8896 0 = Pi.single (0 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8896 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1, 1, 3] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8896 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1052, oldProjection593, reductionProjection1303, oldProjection1322] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8896 (0 : Fin 4)) = canonicalInput20217.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8896 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1052 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8896 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1052 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20217 hH))).trans (oldProjectionSound1052 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8896 (1 : Fin 4)) = canonicalInput10342.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8896 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection593 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8896 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection593 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10342 hH))).trans (oldProjectionSound593 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8896 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1116).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8896 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1303 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8896 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1303 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1303 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8896 (3 : Fin 4)) = canonicalInput10164.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8896 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1322 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8896 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1322 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10164 hH))).trans (oldProjectionSound1322 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5140).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8896 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5140).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8896 (j : Fin 4)))
      2 1440 1440 2 ![720, 1, 1, 3] ![2, 1440, 1440, 480] reductionProjection8896 ![oldProjection1052, oldProjection593, reductionProjection1303, oldProjection1322]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8897 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -40), (94, 55), (241, 160), (602, 720), (635, 720), (666, 720), (690, -240), (691, -240), (697, -720), (698, 640), (794, 720), (1050, -480), (1058, -480), (1059, 240), (1113, -1440), (1115, 720), (1116, 720), (1126, 720), (1227, 240), (1250, 120), (1251, -100), (1389, -240)]

def reductionPivot8897 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 1, -1, 2], ![0, -1, 2, -1], ![0, 0, -2, 2], ![1, -1, 0, 0], ![1, 1, 0, -2]]

theorem reductionSound8897 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5120).moment H =
      Integer.Sparse.eval reductionProjection8897 (momentVector H) := by
  have heq : reductionPivot8897 = (fun u v => (normalNode5120).entries (OAI.MUB6.Certificate.PairSemantics.permutation241 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5120).moment H = injectiveMoment H reductionPivot8897 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5120).entries OAI.MUB6.Certificate.PairSemantics.permutation241)).symm
  have hshape : reductionPivot8897 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8897 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 1440, 360, 1, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8897 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection2024, reductionProjection8896, oldProjection1741, reductionProjection3885, oldProjection2205] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8897 (0 : Fin 5)) = canonicalInput10548.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8897 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2024 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8897 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2024 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10548 hH))).trans (reductionSound2024 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8897 (1 : Fin 5)) = (normalNode5140).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8897 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8896 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8897 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8896 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8896 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8897 (2 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw4466 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8897 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1741 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8897 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1741 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4466 hH))).trans (oldProjectionSound1741 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8897 (3 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code1113).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8897 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3885 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8897 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3885 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound3885 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8897 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2205⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8897 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2205 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8897 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2205 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2205 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5120).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8897 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5120).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8897 (j : Fin 5)))
      1 1440 1440 1 ![720, 1440, 360, 1, 1440] ![2, 1, 4, 1440, 1] reductionProjection8897 ![reductionProjection2024, reductionProjection8896, oldProjection1741, reductionProjection3885, oldProjection2205]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8898 : Integer.Sparse (Fin 1613) := [(0, 1), (19, -20), (94, 55), (241, 320), (243, 80), (694, -240), (698, 1040), (700, 80), (808, 720), (869, 720), (1047, -240), (1055, -720), (1058, -240), (1059, 320), (1114, 720), (1226, 80), (1227, 400), (1250, 60), (1251, -190)]

def reductionPivot8898 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 1, -1, 2], ![0, -1, 2, -1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![2, -1, 0, -1]]

theorem reductionSound8898 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5121).moment H =
      Integer.Sparse.eval reductionProjection8898 (momentVector H) := by
  have heq : reductionPivot8898 = (fun u v => (normalNode5121).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5121).moment H = injectiveMoment H reductionPivot8898 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5121).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot8898 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8898 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![72, 1440, 720, 1440, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8898 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2165, oldProjection1747, oldProjection1309, reductionProjection3891, oldProjection1842] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8898 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2165⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8898 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2165 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8898 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2165 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2165 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8898 (1 : Fin 5)) = canonicalInput10110.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8898 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1747 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8898 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1747 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10110 hH))).trans (oldProjectionSound1747 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8898 (2 : Fin 5)) = canonicalInput10146.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8898 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1309 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8898 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1309 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10146 hH))).trans (oldProjectionSound1309 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8898 (3 : Fin 5)) = (normalNode5128).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8898 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3891 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8898 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3891 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound3891 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8898 (4 : Fin 5)) = canonicalInput10149.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8898 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1842 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8898 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1842 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10149 hH))).trans (oldProjectionSound1842 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5121).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8898 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5121).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8898 (j : Fin 5)))
      1 1440 1440 1 ![72, 1440, 720, 1440, 288] ![20, 1, 2, 1, 5] reductionProjection8898 ![oldProjection2165, oldProjection1747, oldProjection1309, reductionProjection3891, oldProjection1842]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8899 : Integer.Sparse (Fin 1613) := [(0, 7), (81, -240), (94, 25), (241, 160), (243, 160), (465, 720), (590, 720), (698, 1440), (700, 400), (1055, -480), (1058, -480), (1059, 960), (1226, 80), (1227, 480), (1251, -370)]

def reductionPivot8899 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 1, -1, 2], ![0, -1, 2, -1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![2, -1, -1, 0]]

theorem reductionSound8899 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5122).moment H =
      Integer.Sparse.eval reductionProjection8899 (momentVector H) := by
  have heq : reductionPivot8899 = (fun u v => (normalNode5122).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5122).moment H = injectiveMoment H reductionPivot8899 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5122).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot8899 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8899 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 720, 288, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8899 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection8655, oldProjection1786, oldProjection1058, oldProjection1842, reductionProjection5554] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8899 (0 : Fin 5)) = (normalNode4904).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8899 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8655 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8899 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8655 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8655 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8899 (1 : Fin 5)) = canonicalInput10111.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8899 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1786 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8899 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1786 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10111 hH))).trans (oldProjectionSound1786 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8899 (2 : Fin 5)) = canonicalInput10147.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8899 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1058 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8899 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1058 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10147 hH))).trans (oldProjectionSound1058 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8899 (3 : Fin 5)) = canonicalInput10149.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8899 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1842 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8899 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1842 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10149 hH))).trans (oldProjectionSound1842 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8899 (4 : Fin 5)) = canonicalInput10150.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8899 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5554 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8899 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5554 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10150 hH))).trans (reductionSound5554 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5122).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8899 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5122).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8899 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 720, 288, 1440] ![1, 1, 2, 5, 1] reductionProjection8899 ![reductionProjection8655, oldProjection1786, oldProjection1058, oldProjection1842, reductionProjection5554]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8900 : Integer.Sparse (Fin 1613) := [(0, 3), (94, 20), (241, 40), (602, 360), (635, 720), (697, -120), (698, 280), (1027, 360), (1086, 360), (1089, 360), (1115, 360), (1116, 360), (1117, 360), (1226, 40), (1227, 120), (1251, -35), (1389, -120)]

def reductionPivot8900 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 1, -1, 2], ![0, -1, 2, -1], ![0, 0, 1, -1], ![1, -1, -1, 1], ![1, 1, 0, -2]]

theorem reductionSound8900 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode5123).moment H =
      Integer.Sparse.eval reductionProjection8900 (momentVector H) := by
  have heq : reductionPivot8900 = (fun u v => (normalNode5123).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5123).moment H = injectiveMoment H reductionPivot8900 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5123).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot8900 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8900 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 1, 2, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8900 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2166, oldProjection1824, oldProjection517, reductionProjection8822, oldProjection2208] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8900 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2166⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8900 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2166 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8900 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2166 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2166 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8900 (1 : Fin 5)) = canonicalInput10112.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8900 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1824 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8900 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1824 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10112 hH))).trans (oldProjectionSound1824 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8900 (2 : Fin 5)) = canonicalInput10148.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8900 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection517 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8900 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection517 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10148 hH))).trans (oldProjectionSound517 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8900 (3 : Fin 5)) = (normalNode5131).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8900 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8822 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8900 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8822 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8822 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8900 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2208⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8900 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2208 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8900 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2208 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2208 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5123).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8900 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5123).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8900 (j : Fin 5)))
      1 720 1440 2 ![1440, 1440, 1, 2, 1440] ![1, 1, 1440, 720, 1] reductionProjection8900 ![oldProjection2166, oldProjection1824, oldProjection517, reductionProjection8822, oldProjection2208]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8901 : Integer.Sparse (Fin 1613) := [(0, 11), (19, -60), (94, 155), (241, 160), (247, 160), (546, 720), (635, 720), (694, -480), (697, -720), (698, 720), (1055, -480), (1114, 720), (1140, 720), (1227, 560), (1250, 180), (1251, -140), (1389, -960)]

def reductionPivot8901 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 1, -1, 2], ![0, -1, 2, -1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, 1, -2]]

theorem reductionSound8901 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5124).moment H =
      Integer.Sparse.eval reductionProjection8901 (momentVector H) := by
  have heq : reductionPivot8901 = (fun u v => (normalNode5124).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5124).moment H = injectiveMoment H reductionPivot8901 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5124).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot8901 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8901 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 1440, 720, 720, 720] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8901 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2168, oldProjection1747, reductionProjection5888, reductionProjection8887, oldProjection1751] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8901 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2168⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8901 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2168 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8901 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2168 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2168 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8901 (1 : Fin 5)) = canonicalInput10122.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8901 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1747 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8901 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1747 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10122 hH))).trans (oldProjectionSound1747 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8901 (2 : Fin 5)) = (normalNode5133).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8901 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5888 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8901 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5888 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound5888 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8901 (3 : Fin 5)) = (normalNode5134).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8901 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8887 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8901 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8887 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8887 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8901 (4 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw4470 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8901 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1751 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8901 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1751 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4470 hH))).trans (oldProjectionSound1751 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5124).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8901 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5124).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8901 (j : Fin 5)))
      1 1440 1440 1 ![288, 1440, 720, 720, 720] ![5, 1, 2, 2, 2] reductionProjection8901 ![oldProjection2168, oldProjection1747, reductionProjection5888, reductionProjection8887, oldProjection1751]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8902 : Integer.Sparse (Fin 1613) := [(0, 62), (19, -40), (94, 175), (241, 160), (247, 320), (549, 720), (669, 2160), (697, -480), (698, 720), (1055, -480), (1059, 160), (1227, 480), (1251, -315), (1388, -480), (1389, -720)]

def reductionPivot8902 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 1, -1, 2], ![0, -1, 2, -1], ![0, 1, 0, -1], ![1, -1, 1, -1], ![1, 0, -1, 0]]

theorem reductionSound8902 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5125).moment H =
      Integer.Sparse.eval reductionProjection8902 (momentVector H) := by
  have heq : reductionPivot8902 = (fun u v => (normalNode5125).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5125).moment H = injectiveMoment H reductionPivot8902 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5125).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot8902 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8902 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 1440, 288, 720] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8902 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2171, oldProjection1790, oldProjection1841, oldProjection1793, reductionProjection5567] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8902 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2171⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8902 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2171 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8902 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2171 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2171 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8902 (1 : Fin 5)) = canonicalInput10125.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8902 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1790 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8902 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1790 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10125 hH))).trans (oldProjectionSound1790 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8902 (2 : Fin 5)) = canonicalInput10155.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8902 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1841 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8902 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1841 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10155 hH))).trans (oldProjectionSound1841 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8902 (3 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw4473 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8902 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1793 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8902 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1793 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4473 hH))).trans (oldProjectionSound1793 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8902 (4 : Fin 5)) = (normalNode5135).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8902 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5567 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8902 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5567 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound5567 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5125).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8902 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5125).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8902 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 1440, 288, 720] ![1, 1, 1, 5, 2] reductionProjection8902 ![oldProjection2171, oldProjection1790, oldProjection1841, oldProjection1793, reductionProjection5567]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8903 : Integer.Sparse (Fin 1613) := [(0, 6), (19, -10), (94, 65), (241, 40), (247, 40), (465, 360), (590, 720), (617, 360), (635, 360), (697, -360), (698, 560), (704, 40), (1059, 200), (1142, 360), (1227, 280), (1251, -135), (1389, -480)]

def reductionPivot8903 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 1, -1, 2], ![0, -1, 2, -1], ![0, 1, 1, -2], ![1, -1, 0, 0], ![1, 0, -1, 0]]

theorem reductionSound8903 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode5126).moment H =
      Integer.Sparse.eval reductionProjection8903 (momentVector H) := by
  have heq : reductionPivot8903 = (fun u v => (normalNode5126).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5126).moment H = injectiveMoment H reductionPivot8903 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5126).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot8903 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8903 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 1440, 288, 1440, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8903 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2173, oldProjection1786, oldProjection1793, reductionProjection5812, reductionProjection5867] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8903 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2173⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8903 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2173 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8903 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2173 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2173 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8903 (1 : Fin 5)) = canonicalInput10127.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8903 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1786 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8903 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1786 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10127 hH))).trans (oldProjectionSound1786 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8903 (2 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw4473 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8903 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1793 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8903 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1793 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4473 hH))).trans (oldProjectionSound1793 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8903 (3 : Fin 5)) = (normalNode5136).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8903 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5812 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8903 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5812 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound5812 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8903 (4 : Fin 5)) = (normalNode5137).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8903 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5867 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8903 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5867 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound5867 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5126).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8903 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5126).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8903 (j : Fin 5)))
      1 720 1440 2 ![720, 1440, 288, 1440, 288] ![2, 1, 5, 1, 5] reductionProjection8903 ![oldProjection2173, oldProjection1786, oldProjection1793, reductionProjection5812, reductionProjection5867]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8904 : Integer.Sparse (Fin 1613) := [(0, 11), (94, 65), (546, 360), (635, 720), (697, -120), (698, 600), (700, 40), (704, 40), (1027, 360), (1055, -120), (1058, -120), (1059, 160), (1117, 360), (1227, 480), (1250, 30), (1251, -220), (1321, -120), (1389, -480)]

def reductionPivot8904 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 1, -1, 2], ![0, -1, 2, -1], ![0, 1, -1, 0], ![1, -1, -1, 1], ![1, 0, 0, -1]]

theorem reductionSound8904 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode5129).moment H =
      Integer.Sparse.eval reductionProjection8904 (momentVector H) := by
  have heq : reductionPivot8904 = (fun u v => (normalNode5129).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5129).moment H = injectiveMoment H reductionPivot8904 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5129).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot8904 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8904 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 1440, 720, 720] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8904 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2076, oldProjection2211, oldProjection1801, oldProjection1751, reductionProjection8887] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8904 (0 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw4686 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8904 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2076 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8904 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2076 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4686 hH))).trans (oldProjectionSound2076 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8904 (1 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2211⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8904 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2211 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8904 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2211 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2211 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8904 (2 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw4472 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8904 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1801 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8904 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1801 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4472 hH))).trans (oldProjectionSound1801 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8904 (3 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw4470 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8904 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1751 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8904 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1751 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4470 hH))).trans (oldProjectionSound1751 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8904 (4 : Fin 5)) = (normalNode5134).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8904 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8887 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8904 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8887 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8887 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5129).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8904 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5129).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8904 (j : Fin 5)))
      1 720 1440 2 ![1440, 1440, 1440, 720, 720] ![1, 1, 1, 2, 2] reductionProjection8904 ![oldProjection2076, oldProjection2211, oldProjection1801, oldProjection1751, reductionProjection8887]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8905 : Integer.Sparse (Fin 1613) := [(0, 3), (81, -60), (94, 25), (590, 180), (669, 360), (697, -300), (698, 360), (700, 80), (704, 40), (1059, 180), (1142, 180), (1227, 180), (1251, -100), (1389, -240)]

def reductionPivot8905 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 1, -1, 2], ![0, -1, 2, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -2, 1]]

theorem reductionSound8905 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * (normalNode5130).moment H =
      Integer.Sparse.eval reductionProjection8905 (momentVector H) := by
  have heq : reductionPivot8905 = (fun u v => (normalNode5130).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5130).moment H = injectiveMoment H reductionPivot8905 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5130).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot8905 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8905 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 288, 288, 720, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8905 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2065, oldProjection2213, reductionProjection5867, reductionProjection5567, oldProjection1793] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8905 (0 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw4688 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8905 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2065 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8905 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2065 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4688 hH))).trans (oldProjectionSound2065 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8905 (1 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2213⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8905 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2213 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8905 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2213 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2213 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8905 (2 : Fin 5)) = (normalNode5137).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8905 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5867 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8905 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5867 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound5867 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8905 (3 : Fin 5)) = (normalNode5135).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8905 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5567 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8905 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5567 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound5567 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8905 (4 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw4473 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8905 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1793 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8905 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1793 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4473 hH))).trans (oldProjectionSound1793 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5130).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8905 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5130).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8905 (j : Fin 5)))
      1 360 1440 4 ![1440, 288, 288, 720, 288] ![1, 5, 5, 2, 5] reductionProjection8905 ![oldProjection2065, oldProjection2213, reductionProjection5867, reductionProjection5567, oldProjection1793]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8906 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 40), (93, -60), (94, -25), (243, -80), (696, 240), (698, -80), (1087, -720), (1137, -720), (1226, -80), (1251, -10), (1323, 480)]

def reductionPivot8906 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, -1, 0, 0], ![-2, 1, -1, 2], ![0, -1, 2, -1], ![0, 1, -3, 2], ![1, 0, 2, -3]]

theorem reductionSound8906 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5132).moment H =
      Integer.Sparse.eval reductionProjection8906 (momentVector H) := by
  have heq : reductionPivot8906 = (fun u v => (normalNode5132).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5132).moment H = injectiveMoment H reductionPivot8906 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5132).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot8906 0 = Pi.single (0 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8906 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1, 9, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8906 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1210, reductionProjection225, reductionProjection704, reductionProjection8670] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8906 (0 : Fin 4)) = canonicalInput20213.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8906 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1210 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8906 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1210 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20213 hH))).trans (oldProjectionSound1210 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8906 (1 : Fin 4)) = canonicalInput10339.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8906 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection225 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8906 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection225 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10339 hH))).trans (reductionSound225 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8906 (2 : Fin 4)) = canonicalInput10159.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8906 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection704 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8906 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection704 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10159 hH))).trans (reductionSound704 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8906 (3 : Fin 4)) = canonicalInput10154.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8906 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8670 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8906 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8670 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10154 hH))).trans (reductionSound8670 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5132).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8906 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5132).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8906 (j : Fin 4)))
      2 1440 1440 2 ![720, 1, 9, 1] ![2, 1440, 160, 1440] reductionProjection8906 ![oldProjection1210, reductionProjection225, reductionProjection704, reductionProjection8670]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8907 : Integer.Sparse (Fin 1613) := [(0, -2), (19, -28), (81, -48), (94, 15), (104, 32), (241, 48), (243, 16), (247, 16), (682, -48), (690, -48), (691, -144), (694, -48), (697, -96), (698, 144), (700, 64), (704, 80), (775, 144), (794, 144), (808, 144), (1050, -96), (1052, -48), (1058, -144), (1059, 32), (1116, 144), (1226, 16), (1250, 12), (1251, 5)]

def reductionPivot8907 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, 1, -1, 2], ![0, -1, 3, -2], ![0, 0, -2, 2], ![1, -1, 0, 0], ![1, 0, 0, -1]]

theorem reductionSound8907 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode5138).moment H =
      Integer.Sparse.eval reductionProjection8907 (momentVector H) := by
  have heq : reductionPivot8907 = (fun u v => (normalNode5138).entries (OAI.MUB6.Certificate.PairSemantics.permutation241 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5138).moment H = injectiveMoment H reductionPivot8907 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5138).entries OAI.MUB6.Certificate.PairSemantics.permutation241)).symm
  have hshape : reductionPivot8907 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8907 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 288, 1440, 360, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8907 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2350, oldProjection2852, oldProjection2210, reductionProjection8754, reductionProjection8896] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8907 (0 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw5312 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8907 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2350 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8907 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2350 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5312 hH))).trans (oldProjectionSound2350 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8907 (1 : Fin 5)) = canonicalInput10295.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8907 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2852 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8907 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2852 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10295 hH))).trans (oldProjectionSound2852 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8907 (2 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2210⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8907 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection2210 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8907 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection2210 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2210 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8907 (3 : Fin 5)) = canonicalInput10163.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8907 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8754 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8907 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8754 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10163 hH))).trans (reductionSound8754 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8907 (4 : Fin 5)) = (normalNode5140).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8907 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8896 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8907 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8896 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8896 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5138).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8907 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5138).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8907 (j : Fin 5)))
      1 288 1440 5 ![720, 288, 1440, 360, 1440] ![2, 5, 1, 4, 1] reductionProjection8907 ![oldProjection2350, oldProjection2852, oldProjection2210, reductionProjection8754, reductionProjection8896]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8908 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 10), (81, 120), (94, -10), (243, -40), (682, 120), (698, -120), (700, -120), (704, -80), (1059, -40), (1116, -360), (1226, -40), (1251, -5)]

def reductionPivot8908 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, 1, -1, 2], ![0, -1, 3, -2], ![1, -1, -2, 2], ![1, 0, 0, -1]]

theorem reductionSound8908 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode5144).moment H =
      Integer.Sparse.eval reductionProjection8908 (momentVector H) := by
  have heq : reductionPivot8908 = (fun u v => (normalNode5144).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5144).moment H = injectiveMoment H reductionPivot8908 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5144).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot8908 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8908 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 72, 720, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8908 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection824, oldProjection1337, oldProjection1049, reductionProjection1303] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8908 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5313 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8908 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection824 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8908 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection824 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5313 hH))).trans (oldProjectionSound824 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8908 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4601 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8908 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1337 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8908 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1337 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4601 hH))).trans (oldProjectionSound1337 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8908 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4486 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8908 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1049 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8908 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1049 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4486 hH))).trans (oldProjectionSound1049 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8908 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1116).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8908 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1303 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8908 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1303 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1303 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5144).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8908 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5144).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8908 (j : Fin 4)))
      2 720 720 2 ![144, 72, 720, 1] ![5, 10, 1, 720] reductionProjection8908 ![oldProjection824, oldProjection1337, oldProjection1049, reductionProjection1303]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8909 : Integer.Sparse (Fin 1613) := [(0, -4), (19, -60), (20, 15), (81, -480), (94, 95), (243, 240), (635, 720), (682, -240), (698, 1360), (700, 640), (704, 320), (1058, -480), (1059, 400), (1089, 720), (1116, 720), (1117, 1440), (1226, 160), (1227, 240), (1251, -100), (1321, -480), (1389, -480)]

def reductionPivot8909 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 1, -1, 2], ![0, -1, 3, -2], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, 0, 0, -1]]

theorem reductionSound8909 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5142).moment H =
      Integer.Sparse.eval reductionProjection8909 (momentVector H) := by
  have heq : reductionPivot8909 = (fun u v => (normalNode5142).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5142).moment H = injectiveMoment H reductionPivot8909 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5142).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot8909 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8909 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 1440, 720, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8909 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2176, oldProjection1801, oldProjection2211, reductionProjection8908, oldProjection2212] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8909 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2176⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8909 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2176 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8909 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2176 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2176 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8909 (1 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw4472 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8909 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1801 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8909 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1801 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4472 hH))).trans (oldProjectionSound1801 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8909 (2 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2211⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8909 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection2211 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8909 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection2211 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2211 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8909 (3 : Fin 5)) = (normalNode5144).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8909 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8908 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8909 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8908 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8908 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8909 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2212⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8909 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2212 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8909 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2212 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2212 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5142).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8909 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5142).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8909 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 1440, 720, 288] ![1, 1, 1, 2, 5] reductionProjection8909 ![oldProjection2176, oldProjection1801, oldProjection2211, reductionProjection8908, oldProjection2212]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8910 : Integer.Sparse (Fin 1613) := [(0, 4), (81, 240), (94, 5), (243, -160), (698, -560), (700, -400), (1058, 480), (1059, -320), (1226, -80), (1227, -160), (1251, 45)]

def reductionPivot8910 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 1, -1, 2], ![0, -1, 3, -2], ![0, 1, 0, -1], ![2, -1, -1, 0]]

theorem reductionSound8910 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5143).moment H =
      Integer.Sparse.eval reductionProjection8910 (momentVector H) := by
  have heq : reductionPivot8910 = (fun u v => (normalNode5143).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5143).moment H = injectiveMoment H reductionPivot8910 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5143).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot8910 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8910 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 720, 720, 72] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8910 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1215, oldProjection1058, oldProjection975, reductionProjection1305] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8910 (0 : Fin 4)) = canonicalInput9839.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8910 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1215 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8910 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1215 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9839 hH))).trans (oldProjectionSound1215 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8910 (1 : Fin 4)) = canonicalInput10157.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8910 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1058 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8910 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1058 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10157 hH))).trans (oldProjectionSound1058 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8910 (2 : Fin 4)) = canonicalInput10168.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8910 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection975 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8910 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection975 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10168 hH))).trans (oldProjectionSound975 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8910 (3 : Fin 4)) = canonicalInput10170.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8910 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1305 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8910 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1305 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10170 hH))).trans (reductionSound1305 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5143).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8910 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5143).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8910 (j : Fin 4)))
      2 1440 1440 2 ![144, 720, 720, 72] ![10, 2, 2, 20] reductionProjection8910 ![oldProjection1215, oldProjection1058, oldProjection975, reductionProjection1305]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8911 : Integer.Sparse (Fin 1613) := [(19, -4), (20, -1), (94, -1), (317, -144), (692, 48), (1052, 48), (1118, -144), (1223, 96)]

def reductionPivot8911 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, -1, 0, 0], ![-2, 1, -1, 2], ![0, -1, 4, -3], ![0, 0, -2, 2], ![1, 1, -1, -1]]

theorem reductionSound8911 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode5146).moment H =
      Integer.Sparse.eval reductionProjection8911 (momentVector H) := by
  have heq : reductionPivot8911 = (fun u v => (normalNode5146).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5146).moment H = injectiveMoment H reductionPivot8911 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5146).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot8911 0 = Pi.single (0 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8911 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 1, 1, 3] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8911 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1108, reductionProjection2503, reductionProjection8763, oldProjection1179] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8911 (0 : Fin 4)) = canonicalInput20220.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8911 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1108 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8911 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1108 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20220 hH))).trans (oldProjectionSound1108 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8911 (1 : Fin 4)) = canonicalInput10343.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8911 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2503 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8911 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2503 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10343 hH))).trans (reductionSound2503 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8911 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1118).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8911 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8763 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8911 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8763 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8763 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8911 (3 : Fin 4)) = canonicalInput10173.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8911 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1179 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8911 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1179 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10173 hH))).trans (oldProjectionSound1179 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5146).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8911 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5146).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8911 (j : Fin 4)))
      2 288 288 2 ![144, 1, 1, 3] ![2, 288, 288, 96] reductionProjection8911 ![oldProjection1108, reductionProjection2503, reductionProjection8763, oldProjection1179]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8912 : Integer.Sparse (Fin 1613) := [(0, -1), (3, -40), (19, -140), (20, 55), (37, -240), (45, -240), (94, 80), (104, 240), (108, 80), (241, 240), (243, 320), (244, 80), (247, 80), (285, 720), (317, 720), (332, 720), (682, -240), (690, -240), (692, -720), (694, -240), (698, 160), (700, 160), (701, 240), (703, 160), (704, 560), (1040, -240), (1052, -480), (1053, -240), (1118, 720), (1223, -720), (1251, 30)]

def reductionPivot8912 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, 1, -1, 2], ![0, -1, 4, -3], ![0, 0, -2, 2], ![1, -1, 0, 0], ![1, 0, -1, 0]]

theorem reductionSound8912 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5145).moment H =
      Integer.Sparse.eval reductionProjection8912 (momentVector H) := by
  have heq : reductionPivot8912 = (fun u v => (normalNode5145).entries (OAI.MUB6.Certificate.PairSemantics.permutation241 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5145).moment H = injectiveMoment H reductionPivot8912 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5145).entries OAI.MUB6.Certificate.PairSemantics.permutation241)).symm
  have hshape : reductionPivot8912 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8912 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 288, 1440, 72, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8912 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection6018, reductionProjection8853, oldProjection2322, reductionProjection8760, reductionProjection8911] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8912 (0 : Fin 5)) = canonicalInput12009.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8912 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6018 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8912 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6018 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12009 hH))).trans (reductionSound6018 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8912 (1 : Fin 5)) = canonicalInput10303.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8912 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8853 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8912 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8853 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10303 hH))).trans (reductionSound8853 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8912 (2 : Fin 5)) = canonicalInput10174.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8912 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection2322 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8912 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection2322 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10174 hH))).trans (oldProjectionSound2322 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8912 (3 : Fin 5)) = canonicalInput10172.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8912 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8760 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8912 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8760 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10172 hH))).trans (reductionSound8760 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8912 (4 : Fin 5)) = (normalNode5146).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8912 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8911 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8912 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8911 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8911 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5145).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8912 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5145).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8912 (j : Fin 5)))
      1 1440 1440 1 ![288, 288, 1440, 72, 288] ![5, 5, 1, 20, 5] reductionProjection8912 ![reductionProjection6018, reductionProjection8853, oldProjection2322, reductionProjection8760, reductionProjection8911]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8913 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 80), (20, -5), (94, -45), (247, -80), (320, -720), (330, -720), (332, -720), (704, -80), (1251, -45)]

def reductionPivot8913 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, 0, -1], ![-2, 1, -1, 2], ![0, -1, 4, -3], ![0, 1, -2, 1], ![1, -1, -1, 1]]

theorem reductionSound8913 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5150).moment H =
      Integer.Sparse.eval reductionProjection8913 (momentVector H) := by
  have heq : reductionPivot8913 = (fun u v => (normalNode5150).entries (OAI.MUB6.Certificate.PairSemantics.permutation128 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5150).moment H = injectiveMoment H reductionPivot8913 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5150).entries OAI.MUB6.Certificate.PairSemantics.permutation128)).symm
  have hshape : reductionPivot8913 0 = Pi.single (0 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8913 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8913 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1341, reductionProjection2506, oldProjection467, oldProjection468] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8913 (0 : Fin 4)) = canonicalInput22765.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8913 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1341 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8913 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1341 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22765 hH))).trans (oldProjectionSound1341 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8913 (1 : Fin 4)) = canonicalInput10353.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8913 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2506 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8913 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2506 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10353 hH))).trans (reductionSound2506 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8913 (2 : Fin 4)) = canonicalInput10185.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8913 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection467 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8913 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection467 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10185 hH))).trans (oldProjectionSound467 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8913 (3 : Fin 4)) = canonicalInput10175.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8913 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection468 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8913 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection468 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10175 hH))).trans (oldProjectionSound468 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5150).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8913 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5150).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8913 (j : Fin 4)))
      2 1440 1440 2 ![720, 1, 1, 1] ![2, 1440, 1440, 1440] reductionProjection8913 ![oldProjection1341, reductionProjection2506, oldProjection467, oldProjection468]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8914 : Integer.Sparse (Fin 1613) := [(19, -8), (20, 3), (94, 1), (243, 16), (700, 16), (701, 16), (703, 16), (704, 16), (1251, 2)]

def reductionPivot8914 : Matrix (Fin 4) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, 0, -3, 4], ![0, 1, 2, -3], ![1, -2, 2, -1]]

theorem reductionSound8914 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode9754).moment H =
      Integer.Sparse.eval reductionProjection8914 (momentVector H) := by
  have heq : reductionPivot8914 = (fun u v => (normalNode9754).entries (OAI.MUB6.Certificate.PairSemantics.permutation15 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9754).moment H = injectiveMoment H reductionPivot8914 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9754).entries OAI.MUB6.Certificate.PairSemantics.permutation15)).symm
  have hshape : reductionPivot8914 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot8914 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![48, 3, 24] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot8914 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection82, oldProjection83, oldProjection243] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8914 (0 : Fin 3)) = canonicalInput22510.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8914 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection82 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8914 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection82 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22510 hH))).trans (oldProjectionSound82 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8914 (1 : Fin 3)) = canonicalInput19345.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8914 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection83 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8914 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection83 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19345 hH))).trans (oldProjectionSound83 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8914 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw7035 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8914 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection243 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8914 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection243 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7035 hH))).trans (oldProjectionSound243 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode9754).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot8914 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9754).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot8914 (j : Fin 3)))
      3 144 144 3 ![48, 3, 24] ![3, 48, 6] reductionProjection8914 ![oldProjection82, oldProjection83, oldProjection243]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8915 : Integer.Sparse (Fin 1613) := [(19, 16), (20, -3), (227, 48), (229, 48), (243, -48), (700, -48), (701, -16), (703, -16), (704, -48), (1118, -144), (1251, -5)]

def reductionPivot8915 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, 1, -1, 2], ![0, -1, 4, -3], ![1, -1, -2, 2], ![1, 0, 0, -1]]

theorem reductionSound8915 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode5151).moment H =
      Integer.Sparse.eval reductionProjection8915 (momentVector H) := by
  have heq : reductionPivot8915 = (fun u v => (normalNode5151).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5151).moment H = injectiveMoment H reductionPivot8915 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5151).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot8915 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8915 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 72, 144, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8915 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection8758, oldProjection1337, reductionProjection8914, reductionProjection8763] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8915 (0 : Fin 4)) = canonicalInput11878.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8915 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8758 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8915 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8758 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11878 hH))).trans (reductionSound8758 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8915 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4601 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8915 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1337 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8915 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1337 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4601 hH))).trans (oldProjectionSound1337 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8915 (2 : Fin 4)) = canonicalInput10181.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8915 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8914 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8915 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8914 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10181 hH))).trans (reductionSound8914 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8915 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1118).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8915 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8763 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8915 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8763 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8763 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5151).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8915 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5151).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8915 (j : Fin 4)))
      2 288 288 2 ![144, 72, 144, 1] ![2, 4, 2, 288] reductionProjection8915 ![reductionProjection8758, oldProjection1337, reductionProjection8914, reductionProjection8763]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8916 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 60), (20, -15), (94, -45), (229, 240), (330, -720), (698, -160), (700, -240), (701, -80), (704, -240), (1251, -55), (1321, 240)]

def reductionPivot8916 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, 1, 2, -1], ![0, -1, -3, 4], ![1, -1, 1, -1], ![1, 0, 0, -1]]

theorem reductionSound8916 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5664).moment H =
      Integer.Sparse.eval reductionProjection8916 (momentVector H) := by
  have heq : reductionPivot8916 = (fun u v => (normalNode5664).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5664).moment H = injectiveMoment H reductionPivot8916 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5664).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot8916 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8916 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 720, 144, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8916 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1504, oldProjection937, oldProjection767, oldProjection467] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8916 (0 : Fin 4)) = canonicalInput12261.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8916 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1504 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8916 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1504 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12261 hH))).trans (reductionSound1504 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8916 (1 : Fin 4)) = canonicalInput11647.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8916 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection937 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8916 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection937 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11647 hH))).trans (oldProjectionSound937 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8916 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5060 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8916 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection767 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8916 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection767 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5060 hH))).trans (oldProjectionSound767 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8916 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5059 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8916 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection467 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8916 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection467 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5059 hH))).trans (oldProjectionSound467 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5664).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8916 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5664).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8916 (j : Fin 4)))
      2 1440 1440 2 ![144, 720, 144, 1] ![10, 2, 10, 1440] reductionProjection8916 ![reductionProjection1504, oldProjection937, oldProjection767, oldProjection467]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8917 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -64), (20, 13), (94, 32), (227, -48), (229, -96), (243, 80), (244, 16), (246, 16), (247, 16), (320, 144), (330, 288), (332, 144), (698, 112), (700, 144), (701, 32), (703, 16), (704, 176), (1058, -48), (1059, 32), (1060, -48), (1090, 144), (1117, 144), (1118, 144), (1251, 28), (1292, -48), (1321, -96)]

def reductionPivot8917 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 1, -1, 2], ![0, -1, 4, -3], ![0, 1, -1, 0], ![1, -1, -1, 1], ![1, 0, 0, -1]]

theorem reductionSound8917 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode5147).moment H =
      Integer.Sparse.eval reductionProjection8917 (momentVector H) := by
  have heq : reductionPivot8917 = (fun u v => (normalNode5147).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5147).moment H = injectiveMoment H reductionPivot8917 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5147).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot8917 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8917 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 1440, 1440, 288, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8917 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection6905, oldProjection2211, reductionProjection8913, reductionProjection8915, reductionProjection8916] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8917 (0 : Fin 5)) = (normalNode4924).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8917 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6905 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8917 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6905 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6905 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8917 (1 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2211⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8917 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2211 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8917 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2211 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2211 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8917 (2 : Fin 5)) = (normalNode5150).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8917 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8913 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8917 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8913 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8913 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8917 (3 : Fin 5)) = (normalNode5151).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8917 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8915 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8917 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8915 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8915 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8917 (4 : Fin 5)) = canonicalInput10176.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8917 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8916 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8917 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8916 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10176 hH))).trans (reductionSound8916 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5147).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8917 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5147).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8917 (j : Fin 5)))
      1 288 1440 5 ![288, 1440, 1440, 288, 1440] ![5, 1, 1, 5, 1] reductionProjection8917 ![reductionProjection6905, oldProjection2211, reductionProjection8913, reductionProjection8915, reductionProjection8916]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8918 : Integer.Sparse (Fin 1613) := [(19, 12), (20, -4), (94, -11), (243, -32), (244, -16), (682, 48), (698, -16), (700, -16), (701, -32), (704, -64), (1040, 48), (1118, -144), (1251, -7)]

def reductionPivot8918 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, 1, -1, 2], ![0, -1, 4, -3], ![1, -1, -2, 2], ![1, 0, -1, 0]]

theorem reductionSound8918 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode5152).moment H =
      Integer.Sparse.eval reductionProjection8918 (momentVector H) := by
  have heq : reductionPivot8918 = (fun u v => (normalNode5152).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5152).moment H = injectiveMoment H reductionPivot8918 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5152).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot8918 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8918 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 144, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8918 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection758, reductionProjection8785, oldProjection767, reductionProjection8763] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8918 (0 : Fin 4)) = canonicalInput12011.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8918 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection758 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8918 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection758 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12011 hH))).trans (oldProjectionSound758 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8918 (1 : Fin 4)) = canonicalInput10306.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8918 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8785 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8918 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8785 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10306 hH))).trans (reductionSound8785 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8918 (2 : Fin 4)) = canonicalInput10182.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8918 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection767 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8918 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection767 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10182 hH))).trans (oldProjectionSound767 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8918 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1118).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8918 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8763 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8918 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8763 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8763 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5152).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8918 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5152).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8918 (j : Fin 4)))
      2 288 288 2 ![144, 144, 144, 1] ![2, 2, 2, 288] reductionProjection8918 ![oldProjection758, reductionProjection8785, oldProjection767, reductionProjection8763]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8919 : Integer.Sparse (Fin 1613) := [(19, 20), (20, -4), (94, -11), (293, -144), (330, -144), (698, -16), (700, -16), (701, -32), (704, -48), (1061, 48), (1251, -7)]

def reductionPivot8919 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, 1, -1, 2], ![0, -1, 4, -3], ![1, -1, -1, 1], ![1, 0, -2, 1]]

theorem reductionSound8919 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode5153).moment H =
      Integer.Sparse.eval reductionProjection8919 (momentVector H) := by
  have heq : reductionPivot8919 = (fun u v => (normalNode5153).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5153).moment H = injectiveMoment H reductionPivot8919 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5153).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot8919 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8919 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 144, 144, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8919 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection453, reductionProjection8783, oldProjection767, oldProjection467] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8919 (0 : Fin 4)) = canonicalInput12012.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8919 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection453 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8919 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection453 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12012 hH))).trans (oldProjectionSound453 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8919 (1 : Fin 4)) = canonicalInput10307.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8919 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8783 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8919 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8783 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10307 hH))).trans (reductionSound8783 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8919 (2 : Fin 4)) = canonicalInput10183.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8919 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection767 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8919 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection767 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10183 hH))).trans (oldProjectionSound767 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8919 (3 : Fin 4)) = canonicalInput10179.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8919 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection467 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8919 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection467 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10179 hH))).trans (oldProjectionSound467 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5153).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8919 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5153).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8919 (j : Fin 4)))
      2 288 288 2 ![1, 144, 144, 1] ![288, 2, 2, 288] reductionProjection8919 ![oldProjection453, reductionProjection8783, oldProjection767, oldProjection467]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8920 : Integer.Sparse (Fin 1613) := [(0, -6), (19, -320), (20, 45), (81, -240), (94, 170), (229, -480), (243, 240), (244, 240), (293, 720), (330, 1440), (682, -240), (698, 560), (700, 720), (701, 480), (704, 960), (1040, -240), (1059, 80), (1061, -240), (1090, 720), (1117, 720), (1118, 720), (1251, 155), (1321, -480), (1389, -240)]

def reductionPivot8920 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 1, -1, 2], ![0, -1, 4, -3], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, 0, -1, 0]]

theorem reductionSound8920 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5148).moment H =
      Integer.Sparse.eval reductionProjection8920 (momentVector H) := by
  have heq : reductionPivot8920 = (fun u v => (normalNode5148).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5148).moment H = injectiveMoment H reductionPivot8920 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5148).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot8920 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8920 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![144, 288, 1440, 288, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8920 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection6908, oldProjection2212, reductionProjection8916, reductionProjection8918, reductionProjection8919] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8920 (0 : Fin 5)) = (normalNode4925).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8920 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6908 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8920 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6908 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6908 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8920 (1 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2212⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8920 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2212 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8920 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2212 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2212 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8920 (2 : Fin 5)) = canonicalInput10176.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8920 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8916 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8920 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8916 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10176 hH))).trans (reductionSound8916 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8920 (3 : Fin 5)) = (normalNode5152).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8920 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8918 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8920 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8918 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8918 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8920 (4 : Fin 5)) = (normalNode5153).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8920 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8919 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8920 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8919 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8919 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5148).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8920 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5148).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8920 (j : Fin 5)))
      1 1440 1440 1 ![144, 288, 1440, 288, 288] ![10, 5, 1, 5, 5] reductionProjection8920 ![reductionProjection6908, oldProjection2212, reductionProjection8916, reductionProjection8918, reductionProjection8919]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8921 : Integer.Sparse (Fin 1613) := [(19, 20), (20, -3), (45, 48), (94, -11), (229, 48), (240, 48), (698, -32), (700, -64), (701, -32), (704, -80), (1251, -8)]

def reductionPivot8921 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, 1, 2, -1], ![0, -1, -3, 4], ![1, -1, 0, 0], ![1, 0, 1, -2]]

theorem reductionSound8921 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode5663).moment H =
      Integer.Sparse.eval reductionProjection8921 (momentVector H) := by
  have heq : reductionPivot8921 = (fun u v => (normalNode5663).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5663).moment H = injectiveMoment H reductionPivot8921 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5663).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot8921 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8921 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 72, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8921 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1014, oldProjection1015, oldProjection767, oldProjection1157] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8921 (0 : Fin 4)) = canonicalInput12260.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8921 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1014 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8921 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1014 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12260 hH))).trans (oldProjectionSound1014 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8921 (1 : Fin 4)) = canonicalInput11646.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8921 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1015 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8921 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1015 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11646 hH))).trans (oldProjectionSound1015 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8921 (2 : Fin 4)) = canonicalInput11607.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8921 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection767 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8921 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection767 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11607 hH))).trans (oldProjectionSound767 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8921 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5058 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8921 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1157 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8921 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1157 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5058 hH))).trans (oldProjectionSound1157 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5663).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8921 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5663).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8921 (j : Fin 4)))
      2 288 288 2 ![144, 72, 144, 144] ![2, 4, 2, 2] reductionProjection8921 ![oldProjection1014, oldProjection1015, oldProjection767, oldProjection1157]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8922 : Integer.Sparse (Fin 1613) := [(19, 12), (20, -5), (37, 48), (45, 48), (94, -3), (243, -32), (244, -16), (700, -32), (701, -48), (703, -32), (704, -48), (1040, 48), (1251, -6)]

def reductionPivot8922 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, 1, -1, 2], ![0, -1, 4, -3], ![1, -1, 0, 0], ![1, 0, -3, 2]]

theorem reductionSound8922 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode5154).moment H =
      Integer.Sparse.eval reductionProjection8922 (momentVector H) := by
  have heq : reductionPivot8922 = (fun u v => (normalNode5154).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5154).moment H = injectiveMoment H reductionPivot8922 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5154).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot8922 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8922 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 144, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8922 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1154, reductionProjection7516, reductionProjection8914, oldProjection1157] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8922 (0 : Fin 4)) = canonicalInput12013.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8922 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1154 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8922 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1154 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12013 hH))).trans (oldProjectionSound1154 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8922 (1 : Fin 4)) = canonicalInput10308.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8922 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection7516 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8922 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection7516 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10308 hH))).trans (reductionSound7516 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8922 (2 : Fin 4)) = canonicalInput10184.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8922 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8914 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8922 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8914 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10184 hH))).trans (reductionSound8914 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8922 (3 : Fin 4)) = canonicalInput10180.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8922 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1157 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8922 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1157 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10180 hH))).trans (oldProjectionSound1157 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5154).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8922 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5154).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8922 (j : Fin 4)))
      2 288 288 2 ![72, 144, 144, 144] ![4, 2, 2, 2] reductionProjection8922 ![oldProjection1154, reductionProjection7516, reductionProjection8914, oldProjection1157]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8923 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -72), (20, 15), (37, -48), (45, -96), (81, -48), (94, 39), (229, -96), (240, -96), (242, -48), (243, 80), (244, 64), (246, 32), (293, 144), (330, 144), (697, -96), (698, 128), (700, 208), (701, 128), (703, 32), (704, 240), (1040, -48), (1059, 32), (1061, -48), (1251, 29)]

def reductionPivot8923 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 1, -1, 2], ![0, -1, 4, -3], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -2, 1]]

theorem reductionSound8923 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode5149).moment H =
      Integer.Sparse.eval reductionProjection8923 (momentVector H) := by
  have heq : reductionPivot8923 = (fun u v => (normalNode5149).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5149).moment H = injectiveMoment H reductionPivot8923 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5149).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot8923 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8923 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 288, 288, 288, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8923 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection6913, oldProjection2213, reductionProjection8921, reductionProjection8919, reductionProjection8922] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8923 (0 : Fin 5)) = (normalNode4926).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8923 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6913 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8923 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6913 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6913 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8923 (1 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2213⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8923 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2213 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8923 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2213 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2213 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8923 (2 : Fin 5)) = canonicalInput10177.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8923 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8921 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8923 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8921 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10177 hH))).trans (reductionSound8921 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8923 (3 : Fin 5)) = (normalNode5153).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8923 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8919 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8923 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8919 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8919 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8923 (4 : Fin 5)) = (normalNode5154).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8923 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8922 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8923 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8922 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8922 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5149).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8923 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5149).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8923 (j : Fin 5)))
      1 288 288 1 ![288, 288, 288, 288, 288] ![1, 1, 1, 1, 1] reductionProjection8923 ![reductionProjection6913, oldProjection2213, reductionProjection8921, reductionProjection8919, reductionProjection8922]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8924 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -5), (690, 240), (1050, 240), (1125, -720), (1128, -720), (1250, -60), (1251, 10), (1266, -720)]

def reductionPivot8924 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, 1, -1, 2], ![0, 0, -2, 2], ![0, 0, 2, -2], ![2, -2, 1, -1]]

theorem reductionSound8924 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5166).moment H =
      Integer.Sparse.eval reductionProjection8924 (momentVector H) := by
  have heq : reductionPivot8924 = (fun u v => (normalNode5166).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5166).moment H = injectiveMoment H reductionPivot8924 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5166).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot8924 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8924 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8924 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection719, oldProjection683, reductionProjection1030, oldProjection1377] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8924 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node719⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8924 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection719 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8924 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection719 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound719 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8924 (1 : Fin 4)) = canonicalInput10316.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8924 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection683 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8924 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection683 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10316 hH))).trans (oldProjectionSound683 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8924 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1125).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8924 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1030 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8924 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1030 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1030 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8924 (3 : Fin 4)) = canonicalInput10188.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8924 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1377 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8924 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1377 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10188 hH))).trans (oldProjectionSound1377 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5166).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8924 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5166).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8924 (j : Fin 4)))
      2 1440 1440 2 ![1, 1, 1, 720] ![1440, 1440, 1440, 2] reductionProjection8924 ![oldProjection719, oldProjection683, reductionProjection1030, oldProjection1377]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8925 : Integer.Sparse (Fin 1613) := [(0, 3), (94, -10), (668, -720), (697, 240), (698, -80), (1059, -80), (1124, -720), (1125, -720), (1251, 35)]

def reductionPivot8925 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 1, -1, 2], ![0, 0, -2, 2], ![0, 1, 1, -2], ![2, -2, 1, -1]]

theorem reductionSound8925 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5161).moment H =
      Integer.Sparse.eval reductionProjection8925 (momentVector H) := by
  have heq : reductionPivot8925 = (fun u v => (normalNode5161).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5161).moment H = injectiveMoment H reductionPivot8925 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5161).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot8925 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8925 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 720, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8925 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection521, oldProjection1346, reductionProjection1030, oldProjection681] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8925 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4737 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8925 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection521 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8925 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection521 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4737 hH))).trans (oldProjectionSound521 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8925 (1 : Fin 4)) = canonicalInput10235.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8925 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1346 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8925 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1346 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10235 hH))).trans (oldProjectionSound1346 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8925 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1125).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8925 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1030 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8925 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1030 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1030 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8925 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node681⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8925 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection681 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8925 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection681 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound681 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5161).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8925 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5161).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8925 (j : Fin 4)))
      2 1440 1440 2 ![1, 720, 1, 1] ![1440, 2, 1440, 1440] reductionProjection8925 ![oldProjection521, oldProjection1346, reductionProjection1030, oldProjection681]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8926 : Integer.Sparse (Fin 1613) := [(0, -3), (19, -60), (94, 90), (104, 80), (241, 240), (668, 1440), (690, -480), (694, -240), (697, -480), (698, 480), (1050, -720), (1055, -480), (1059, 240), (1124, 1440), (1125, 1440), (1128, 720), (1221, -240), (1227, 80), (1250, 300), (1251, -115), (1266, 720)]

def reductionPivot8926 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 1, -1, 2], ![0, 0, -2, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![2, -2, 1, -1]]

theorem reductionSound8926 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5155).moment H =
      Integer.Sparse.eval reductionProjection8926 (momentVector H) := by
  have heq : reductionPivot8926 = (fun u v => (normalNode5155).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5155).moment H = injectiveMoment H reductionPivot8926 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5155).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot8926 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8926 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 1440, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8926 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1840, oldProjection1737, reductionProjection8924, reductionProjection8925, oldProjection2214] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8926 (0 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw4729 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8926 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1840 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8926 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1840 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4729 hH))).trans (oldProjectionSound1840 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8926 (1 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw4518 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8926 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1737 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8926 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1737 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4518 hH))).trans (oldProjectionSound1737 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8926 (2 : Fin 5)) = (normalNode5166).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8926 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8924 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8926 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8924 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8924 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8926 (3 : Fin 5)) = (normalNode5161).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8926 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8925 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8926 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8925 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8925 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8926 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2214⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8926 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2214 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8926 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2214 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2214 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5155).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8926 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5155).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8926 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 1440, 1440, 1440] ![1, 1, 1, 1, 1] reductionProjection8926 ![oldProjection1840, oldProjection1737, reductionProjection8924, reductionProjection8925, oldProjection2214]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8927 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 20), (94, -20), (241, -80), (694, 240), (698, -80), (1126, -720), (1127, -720), (1137, -720), (1251, 15)]

def reductionPivot8927 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, 1, -1, 2], ![0, 0, -2, 2], ![1, -2, 2, -1], ![1, 0, 2, -3]]

theorem reductionSound8927 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5171).moment H =
      Integer.Sparse.eval reductionProjection8927 (momentVector H) := by
  have heq : reductionPivot8927 = (fun u v => (normalNode5171).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5171).moment H = injectiveMoment H reductionPivot8927 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5171).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot8927 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8927 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 720, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8927 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection7706, reductionProjection225, oldProjection1366, oldProjection682] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8927 (0 : Fin 4)) = canonicalInput11884.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8927 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection7706 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8927 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection7706 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11884 hH))).trans (reductionSound7706 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8927 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1137).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8927 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection225 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8927 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection225 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound225 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8927 (2 : Fin 4)) = canonicalInput10196.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8927 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1366 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8927 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1366 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10196 hH))).trans (oldProjectionSound1366 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8927 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node682⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8927 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection682 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8927 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection682 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound682 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5171).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8927 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5171).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8927 (j : Fin 4)))
      2 1440 1440 2 ![1, 1, 720, 1] ![1440, 1440, 2, 1440] reductionProjection8927 ![reductionProjection7706, reductionProjection225, oldProjection1366, oldProjection682]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization
