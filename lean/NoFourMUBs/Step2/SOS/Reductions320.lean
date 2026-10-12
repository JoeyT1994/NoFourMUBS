import NoFourMUBs.Step2.SOS.Canonical009
import NoFourMUBs.Step2.SOS.Canonical027
import NoFourMUBs.Step2.SOS.Canonical148
import NoFourMUBs.Step2.SOS.Canonical150
import NoFourMUBs.Step2.SOS.Canonical194
import NoFourMUBs.Step2.SOS.Canonical209
import NoFourMUBs.Step2.SOS.Canonical210
import NoFourMUBs.Step2.SOS.Canonical211
import NoFourMUBs.Step2.SOS.Canonical213
import NoFourMUBs.Step2.SOS.Canonical215
import NoFourMUBs.Step2.SOS.Canonical216
import NoFourMUBs.Step2.SOS.Canonical282
import NoFourMUBs.Step2.SOS.Canonical285
import NoFourMUBs.Step2.SOS.Canonical372
import NoFourMUBs.Step2.SOS.Canonical374
import NoFourMUBs.Step2.SOS.Canonical379
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes20
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes002
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.OldProjections001
import NoFourMUBs.Step2.SOS.OldProjections002
import NoFourMUBs.Step2.SOS.OldProjections007
import NoFourMUBs.Step2.SOS.OldProjections008
import NoFourMUBs.Step2.SOS.OldProjections009
import NoFourMUBs.Step2.SOS.OldProjections010
import NoFourMUBs.Step2.SOS.OldProjections011
import NoFourMUBs.Step2.SOS.OldProjections012
import NoFourMUBs.Step2.SOS.OldProjections013
import NoFourMUBs.Step2.SOS.OldProjections014
import NoFourMUBs.Step2.SOS.OldProjections015
import NoFourMUBs.Step2.SOS.OldProjections016
import NoFourMUBs.Step2.SOS.OldProjections017
import NoFourMUBs.Step2.SOS.OldProjections018
import NoFourMUBs.Step2.SOS.OldProjections019
import NoFourMUBs.Step2.SOS.OldProjections023
import NoFourMUBs.Step2.SOS.OldProjections024
import NoFourMUBs.Step2.SOS.OldProjections028
import NoFourMUBs.Step2.SOS.OldProjections032
import NoFourMUBs.Step2.SOS.OldProjections033
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions009
import NoFourMUBs.Step2.SOS.Reductions033
import NoFourMUBs.Step2.SOS.Reductions040
import NoFourMUBs.Step2.SOS.Reductions079
import NoFourMUBs.Step2.SOS.Reductions086
import NoFourMUBs.Step2.SOS.Reductions093
import NoFourMUBs.Step2.SOS.Reductions094
import NoFourMUBs.Step2.SOS.Reductions101
import NoFourMUBs.Step2.SOS.Reductions105
import NoFourMUBs.Step2.SOS.Reductions128
import NoFourMUBs.Step2.SOS.Reductions129
import NoFourMUBs.Step2.SOS.Reductions136
import NoFourMUBs.Step2.SOS.Reductions138
import NoFourMUBs.Step2.SOS.Reductions139
import NoFourMUBs.Step2.SOS.Reductions154
import NoFourMUBs.Step2.SOS.Reductions172
import NoFourMUBs.Step2.SOS.Reductions174
import NoFourMUBs.Step2.SOS.Reductions184
import NoFourMUBs.Step2.SOS.Reductions187
import NoFourMUBs.Step2.SOS.Reductions241
import NoFourMUBs.Step2.SOS.Reductions256
import NoFourMUBs.Step2.SOS.Reductions275
import NoFourMUBs.Step2.SOS.Reductions306
import NoFourMUBs.Step2.SOS.Reductions307
import NoFourMUBs.Step2.SOS.Reductions319
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical177
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical191
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical192
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical193
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical194
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes39
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection10240 : Integer.Sparse (Fin 1613) := [(0, 3), (42, -80), (56, 240), (60, -80), (81, 240), (90, -240), (94, -25), (698, -480), (700, -560), (1059, -160), (1226, -160)]

def reductionPivot10240 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, -2, 0, 3], ![0, -1, 3, -2], ![0, 1, 0, -1], ![1, 1, -2, 0]]

theorem reductionSound10240 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6708).moment H =
      Integer.Sparse.eval reductionProjection10240 (momentVector H) := by
  have heq : reductionPivot10240 = (fun u v => (normalNode6708).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6708).moment H = injectiveMoment H reductionPivot10240 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6708).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot10240 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10240 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 360, 9, 72] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10240 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection950, oldProjection802, reductionProjection4126, reductionProjection10239] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10240 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node950⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10240 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection950 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10240 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection950 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound950 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10240 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5691 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10240 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection802 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10240 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection802 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5691 hH))).trans (oldProjectionSound802 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10240 (2 : Fin 4)) = (normalNode6714).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10240 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4126 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10240 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4126 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4126 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10240 (3 : Fin 4)) = canonicalInput13502.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10240 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10239 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10240 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10239 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13502 hH))).trans (reductionSound10239 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6708).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10240 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6708).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10240 (j : Fin 4)))
      2 1440 1440 2 ![720, 360, 9, 72] ![2, 4, 160, 20] reductionProjection10240 ![oldProjection950, oldProjection802, reductionProjection4126, reductionProjection10239]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10241 : Integer.Sparse (Fin 1613) := [(0, -3), (42, 40), (56, -240), (60, 40), (81, -480), (90, 240), (94, 35), (489, 360), (547, 360), (603, 720), (683, -120), (697, -120), (698, 880), (700, 720), (1059, 400), (1117, 360), (1219, -120), (1226, 160), (1227, 120), (1251, -70), (1304, 360)]

def reductionPivot10241 : Matrix (Fin 6) (Fin 4) ℤ := ![![-1, 0, 1, 0], ![-1, -2, 0, 3], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 2, -2], ![1, 1, -2, 0]]

theorem reductionSound10241 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode6663).moment H =
      Integer.Sparse.eval reductionProjection10241 (momentVector H) := by
  have heq : reductionPivot10241 = (fun u v => (normalNode6663).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6663).moment H = injectiveMoment H reductionPivot10241 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6663).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot10241 0 = Pi.single (2 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10241 2 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 360, 2, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10241 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection1085, reductionProjection5515, reductionProjection10238, reductionProjection10240, oldProjection2441] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10241 (0 : Fin 5)) = (normalNode713).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10241 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1085 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10241 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1085 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1085 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10241 (1 : Fin 5)) = canonicalInput13438.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10241 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5515 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10241 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5515 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13438 hH))).trans (reductionSound5515 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10241 (2 : Fin 5)) = canonicalInput13532.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10241 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10238 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10241 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10238 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13532 hH))).trans (reductionSound10238 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10241 (3 : Fin 5)) = canonicalInput13535.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10241 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10240 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10241 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10240 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13535 hH))).trans (reductionSound10240 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10241 (4 : Fin 5)) = canonicalInput13536.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10241 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2441 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10241 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2441 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13536 hH))).trans (oldProjectionSound2441 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode6663).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10241 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6663).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10241 (j : Fin 5)))
      1 720 1440 2 ![720, 360, 2, 1440, 1440] ![2, 4, 720, 1, 1] reductionProjection10241 ![reductionProjection1085, reductionProjection5515, reductionProjection10238, reductionProjection10240, oldProjection2441]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10242 : Integer.Sparse (Fin 1613) := [(0, 1), (56, 240), (81, 240), (90, -160), (94, -10), (547, -720), (603, -720), (698, -320), (700, -80), (1226, -160), (1227, -80), (1251, 5)]

def reductionPivot10242 : Matrix (Fin 5) (Fin 4) ℤ := ![![-1, 0, 1, 0], ![-1, -2, 0, 3], ![0, 2, -1, -1], ![1, -1, 2, -2], ![1, 1, -2, 0]]

theorem reductionSound10242 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6664).moment H =
      Integer.Sparse.eval reductionProjection10242 (momentVector H) := by
  have heq : reductionPivot10242 = (fun u v => (normalNode6664).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6664).moment H = injectiveMoment H reductionPivot10242 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6664).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10242 0 = Pi.single (2 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10242 2 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 9, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10242 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1083, oldProjection511, reductionProjection4126, oldProjection836] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10242 (0 : Fin 4)) = canonicalInput1736.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10242 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1083 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10242 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1083 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1736 hH))).trans (reductionSound1083 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10242 (1 : Fin 4)) = canonicalInput13466.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10242 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection511 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10242 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection511 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13466 hH))).trans (oldProjectionSound511 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10242 (2 : Fin 4)) = canonicalInput13541.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10242 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4126 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10242 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4126 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13541 hH))).trans (reductionSound4126 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10242 (3 : Fin 4)) = canonicalInput13542.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10242 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection836 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10242 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection836 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13542 hH))).trans (oldProjectionSound836 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6664).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10242 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6664).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10242 (j : Fin 4)))
      2 1440 1440 2 ![1, 1, 9, 720] ![1440, 1440, 160, 2] reductionProjection10242 ![reductionProjection1083, oldProjection511, reductionProjection4126, oldProjection836]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10243 : Integer.Sparse (Fin 1613) := [(0, 1), (90, -320), (94, -5), (493, -720), (698, -400), (700, -160), (782, -720), (1226, -240), (1251, -10)]

def reductionPivot10243 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-1, -2, 0, 3], ![-1, 0, 2, -1], ![0, 3, -2, -1], ![1, -1, 1, -1]]

theorem reductionSound10243 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6668).moment H =
      Integer.Sparse.eval reductionProjection10243 (momentVector H) := by
  have heq : reductionPivot10243 = (fun u v => (normalNode6668).entries (OAI.MUB6.Certificate.PairSemantics.permutation128 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6668).moment H = injectiveMoment H reductionPivot10243 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6668).entries OAI.MUB6.Certificate.PairSemantics.permutation128)).symm
  have hshape : reductionPivot10243 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10243 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 720, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10243 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1018, oldProjection950, oldProjection492, oldProjection590] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10243 (0 : Fin 4)) = canonicalInput23980.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10243 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1018 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10243 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1018 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23980 hH))).trans (oldProjectionSound1018 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10243 (1 : Fin 4)) = canonicalInput13521.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10243 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection950 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10243 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection950 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13521 hH))).trans (oldProjectionSound950 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10243 (2 : Fin 4)) = canonicalInput13425.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10243 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection492 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10243 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection492 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13425 hH))).trans (oldProjectionSound492 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10243 (3 : Fin 4)) = canonicalInput13418.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10243 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection590 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10243 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection590 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13418 hH))).trans (oldProjectionSound590 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6668).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10243 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6668).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10243 (j : Fin 4)))
      2 1440 1440 2 ![9, 720, 1, 1] ![160, 2, 1440, 1440] reductionProjection10243 ![oldProjection1018, oldProjection950, oldProjection492, oldProjection590]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10244 : Integer.Sparse (Fin 1613) := [(0, -3), (19, -20), (20, 5), (42, 80), (62, -240), (88, 80), (90, 480), (94, -10), (243, 400), (426, 720), (493, 720), (698, 880), (699, -240), (700, 800), (701, 80), (704, 160), (782, 1440), (934, 720), (1058, -480), (1059, 320), (1187, 720), (1226, 640), (1227, 80)]

def reductionPivot10244 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-1, -2, 0, 3], ![-1, 0, 2, -1], ![0, 3, -2, -1], ![1, 0, -1, 0], ![1, 0, 0, -1]]

theorem reductionSound10244 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6665).moment H =
      Integer.Sparse.eval reductionProjection10244 (momentVector H) := by
  have heq : reductionPivot10244 = (fun u v => (normalNode6665).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6665).moment H = injectiveMoment H reductionPivot10244 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6665).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot10244 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10244 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 18, 1440, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10244 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection9812, reductionProjection10216, oldProjection1647, reductionProjection2764, reductionProjection10243] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10244 (0 : Fin 5)) = (normalNode6043).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10244 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9812 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10244 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9812 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9812 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10244 (1 : Fin 5)) = (normalNode6660).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10244 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10216 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10244 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10216 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10216 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10244 (2 : Fin 5)) = canonicalInput13413.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10244 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1647 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10244 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1647 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13413 hH))).trans (oldProjectionSound1647 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10244 (3 : Fin 5)) = canonicalInput13416.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10244 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2764 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10244 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2764 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13416 hH))).trans (reductionSound2764 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10244 (4 : Fin 5)) = canonicalInput13417.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10244 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10243 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10244 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10243 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13417 hH))).trans (reductionSound10243 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode6665).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10244 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6665).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10244 (j : Fin 5)))
      1 1440 1440 1 ![288, 18, 1440, 1440, 1440] ![5, 80, 1, 1, 1] reductionProjection10244 ![reductionProjection9812, reductionProjection10216, oldProjection1647, reductionProjection2764, reductionProjection10243]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10245 : Integer.Sparse (Fin 1613) := [(42, -3), (56, 3), (60, -1), (90, -1), (698, -3), (700, -3), (1002, -9), (1059, -1)]

def reductionPivot10245 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, -1, 0, 0], ![-1, -2, 0, 3], ![-1, 0, 3, -2], ![0, 3, -2, -1], ![1, 0, -1, 0]]

theorem reductionSound10245 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode6674).moment H =
      Integer.Sparse.eval reductionProjection10245 (momentVector H) := by
  have heq : reductionPivot10245 = (fun u v => (normalNode6674).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6674).moment H = injectiveMoment H reductionPivot10245 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6674).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot10245 0 = Pi.single (0 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10245 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 9, 9, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10245 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection4477, reductionProjection4446, reductionProjection4357, reductionProjection8207] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10245 (0 : Fin 4)) = canonicalInput23831.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10245 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4477 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10245 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4477 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23831 hH))).trans (reductionSound4477 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10245 (1 : Fin 4)) = (normalNode6718).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10245 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4446 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10245 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4446 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4446 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10245 (2 : Fin 4)) = canonicalInput13437.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10245 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4357 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10245 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4357 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13437 hH))).trans (reductionSound4357 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10245 (3 : Fin 4)) = canonicalInput13432.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10245 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8207 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10245 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8207 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13432 hH))).trans (reductionSound8207 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6674).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10245 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6674).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10245 (j : Fin 4)))
      2 18 18 2 ![9, 9, 9, 1] ![2, 2, 2, 18] reductionProjection10245 ![reductionProjection4477, reductionProjection4446, reductionProjection4357, reductionProjection8207]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10246 : Integer.Sparse (Fin 1613) := [(0, -7), (42, 240), (56, -240), (60, 80), (90, 480), (94, 25), (243, 400), (493, 720), (697, -240), (698, 1040), (700, 720), (704, 160), (782, 1440), (1002, 720), (1005, 720), (1058, -480), (1059, 320), (1205, 720), (1226, 400), (1251, -60)]

def reductionPivot10246 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, -2, 0, 3], ![-1, 0, 2, -1], ![0, 3, -2, -1], ![1, -1, 0, 0], ![1, 0, -1, 0]]

theorem reductionSound10246 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6666).moment H =
      Integer.Sparse.eval reductionProjection10246 (momentVector H) := by
  have heq : reductionPivot10246 = (fun u v => (normalNode6666).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6666).moment H = injectiveMoment H reductionPivot10246 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6666).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot10246 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10246 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 18, 1440, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10246 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection8817, reductionProjection10245, reductionProjection2752, reductionProjection10243, reductionProjection2764] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10246 (0 : Fin 5)) = canonicalInput13685.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10246 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8817 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10246 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8817 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13685 hH))).trans (reductionSound8817 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10246 (1 : Fin 5)) = (normalNode6674).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10246 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10245 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10246 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10245 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10245 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10246 (2 : Fin 5)) = canonicalInput13419.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10246 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2752 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10246 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2752 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13419 hH))).trans (reductionSound2752 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10246 (3 : Fin 5)) = (normalNode6668).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10246 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10243 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10246 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10243 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10243 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10246 (4 : Fin 5)) = canonicalInput13416.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10246 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2764 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10246 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2764 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13416 hH))).trans (reductionSound2764 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode6666).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10246 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6666).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10246 (j : Fin 5)))
      1 1440 1440 1 ![1440, 18, 1440, 1440, 1440] ![1, 80, 1, 1, 1] reductionProjection10246 ![reductionProjection8817, reductionProjection10245, reductionProjection2752, reductionProjection10243, reductionProjection2764]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10247 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -25), (698, -560), (1117, -720), (1226, -400), (1227, -320), (1251, 50)]

def reductionPivot10247 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, -1, 0, 0], ![-1, -1, 1, 1], ![-1, 1, -1, 1], ![0, 1, 2, -3], ![1, 0, -2, 1]]

theorem reductionSound10247 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode9332).moment H =
      Integer.Sparse.eval reductionProjection10247 (momentVector H) := by
  have heq : reductionPivot10247 = (fun u v => (normalNode9332).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9332).moment H = injectiveMoment H reductionPivot10247 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9332).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot10247 0 = Pi.single (0 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10247 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 720, 360, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10247 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1249, oldProjection1116, oldProjection1123, oldProjection680] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10247 (0 : Fin 4)) = canonicalInput24259.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10247 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1249 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10247 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1249 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24259 hH))).trans (oldProjectionSound1249 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10247 (1 : Fin 4)) = canonicalInput18246.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10247 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1116 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10247 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1116 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound18246 hH))).trans (oldProjectionSound1116 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10247 (2 : Fin 4)) = canonicalInput18104.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10247 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1123 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10247 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1123 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound18104 hH))).trans (oldProjectionSound1123 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10247 (3 : Fin 4)) = canonicalInput18095.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10247 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection680 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10247 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection680 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound18095 hH))).trans (oldProjectionSound680 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9332).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10247 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9332).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10247 (j : Fin 4)))
      2 1440 1440 2 ![144, 720, 360, 1] ![10, 2, 4, 1440] reductionProjection10247 ![oldProjection1249, oldProjection1116, oldProjection1123, oldProjection680]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10248 : Integer.Sparse (Fin 1613) := [(0, -2), (90, 320), (94, 45), (426, 720), (493, 720), (618, 720), (698, 1520), (700, 240), (782, 720), (1015, 720), (1058, -240), (1059, 160), (1117, 720), (1226, 1040), (1227, 720), (1251, -125), (1302, -1440)]

def reductionPivot10248 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, -2, 0, 3], ![-1, 0, 2, -1], ![0, 2, -1, -1], ![1, -1, 1, -1], ![1, 0, -1, 0]]

theorem reductionSound10248 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6667).moment H =
      Integer.Sparse.eval reductionProjection10248 (momentVector H) := by
  have heq : reductionPivot10248 = (fun u v => (normalNode6667).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6667).moment H = injectiveMoment H reductionPivot10248 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6667).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot10248 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10248 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 1440, 1440, 1] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10248 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2074, reductionProjection10247, reductionProjection10243, oldProjection1647, reductionProjection5910] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10248 (0 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw6139 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10248 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2074 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10248 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2074 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6139 hH))).trans (oldProjectionSound2074 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10248 (1 : Fin 5)) = canonicalInput13445.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10248 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10247 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10248 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10247 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13445 hH))).trans (reductionSound10247 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10248 (2 : Fin 5)) = (normalNode6668).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10248 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10243 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10248 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10243 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10243 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10248 (3 : Fin 5)) = canonicalInput13414.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10248 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1647 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10248 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1647 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13414 hH))).trans (oldProjectionSound1647 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10248 (4 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code1302).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10248 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5910 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10248 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5910 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound5910 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode6667).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10248 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6667).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10248 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 1440, 1440, 1] ![1, 1, 1, 1, 1440] reductionProjection10248 ![oldProjection2074, reductionProjection10247, reductionProjection10243, oldProjection1647, reductionProjection5910]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10249 : Integer.Sparse (Fin 1613) := [(56, 6), (60, -1), (90, -1), (438, -9), (446, -9), (698, -2), (700, -6), (1059, -2)]

def reductionPivot10249 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, -1, 0, 0], ![-1, -2, 0, 3], ![-1, 0, 3, -2], ![0, 2, -2, 0], ![1, 1, -1, -1]]

theorem reductionSound10249 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode6672).moment H =
      Integer.Sparse.eval reductionProjection10249 (momentVector H) := by
  have heq : reductionPivot10249 = (fun u v => (normalNode6672).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6672).moment H = injectiveMoment H reductionPivot10249 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6672).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot10249 0 = Pi.single (0 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10249 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 9, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10249 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection4421, reductionProjection4357, reductionProjection4118, reductionProjection3372] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10249 (0 : Fin 4)) = canonicalInput23829.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10249 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4421 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10249 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4421 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23829 hH))).trans (reductionSound4421 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10249 (1 : Fin 4)) = (normalNode6713).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10249 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4357 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10249 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4357 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4357 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10249 (2 : Fin 4)) = canonicalInput13435.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10249 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4118 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10249 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4118 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13435 hH))).trans (reductionSound4118 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10249 (3 : Fin 4)) = canonicalInput13429.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10249 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3372 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10249 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3372 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13429 hH))).trans (reductionSound3372 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6672).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10249 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6672).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10249 (j : Fin 4)))
      2 18 18 2 ![9, 9, 1, 1] ![2, 2, 18, 18] reductionProjection10249 ![reductionProjection4421, reductionProjection4357, reductionProjection4118, reductionProjection3372]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10250 : Integer.Sparse (Fin 1613) := [(42, 2), (56, -3), (60, 1), (90, 1), (700, 2)]

def reductionPivot10250 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-2, 0, 3, -1], ![0, 3, -2, -1], ![3, -3, -1, 1]]

theorem reductionSound10250 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * (normalNode6795).moment H =
      Integer.Sparse.eval reductionProjection10250 (momentVector H) := by
  have heq : reductionPivot10250 = (fun u v => (normalNode6795).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6795).moment H = injectiveMoment H reductionPivot10250 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode6795).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode6795).entries)).symm
  have hshape : reductionPivot10250 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot10250 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![3, 3, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot10250 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection92, oldProjection95, oldProjection97] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10250 (0 : Fin 3)) = canonicalInput613.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10250 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection92 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10250 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection92 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound613 hH))).trans (oldProjectionSound92 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10250 (1 : Fin 3)) = canonicalInput9499.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10250 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection95 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10250 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection95 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9499 hH))).trans (oldProjectionSound95 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10250 (2 : Fin 3)) = canonicalInput9600.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10250 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection97 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10250 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection97 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9600 hH))).trans (oldProjectionSound97 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode6795).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot10250 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6795).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot10250 (j : Fin 3)))
      3 9 9 3 ![3, 3, 1] ![3, 3, 9] reductionProjection10250 ![oldProjection92, oldProjection95, oldProjection97]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10251 : Integer.Sparse (Fin 1613) := [(42, -16), (56, 48), (60, -8), (81, 24), (90, -40), (94, -1), (698, -48), (700, -64), (1059, -16), (1226, -16), (1251, -1)]

def reductionPivot10251 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, -2, 0, 3], ![-1, 0, 3, -2], ![1, -1, 0, 0], ![1, 2, -2, -1]]

theorem reductionSound10251 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode6671).moment H =
      Integer.Sparse.eval reductionProjection10251 (momentVector H) := by
  have heq : reductionPivot10251 = (fun u v => (normalNode6671).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6671).moment H = injectiveMoment H reductionPivot10251 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6671).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot10251 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10251 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 72, 9, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10251 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1018, reductionProjection1305, reductionProjection4357, reductionProjection10250] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10251 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw6157 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10251 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1018 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10251 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1018 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6157 hH))).trans (oldProjectionSound1018 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10251 (1 : Fin 4)) = canonicalInput13459.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10251 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1305 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10251 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1305 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13459 hH))).trans (reductionSound1305 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10251 (2 : Fin 4)) = canonicalInput13434.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10251 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4357 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10251 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4357 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13434 hH))).trans (reductionSound4357 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10251 (3 : Fin 4)) = canonicalInput13433.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10251 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10250 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10251 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10250 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13433 hH))).trans (reductionSound10250 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6671).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10251 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6671).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10251 (j : Fin 4)))
      2 144 144 2 ![9, 72, 9, 9] ![16, 2, 16, 16] reductionProjection10251 ![oldProjection1018, reductionProjection1305, reductionProjection4357, reductionProjection10250]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10252 : Integer.Sparse (Fin 1613) := [(0, -14), (42, 160), (56, -1200), (60, 160), (81, -960), (90, 960), (94, 85), (438, 720), (446, 1440), (698, 2160), (700, 1600), (1059, 480), (1226, 800), (1227, 160), (1251, -65)]

def reductionPivot10252 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, -2, 0, 3], ![-1, 0, 3, -2], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 1, -1, -1]]

theorem reductionSound10252 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6669).moment H =
      Integer.Sparse.eval reductionProjection10252 (momentVector H) := by
  have heq : reductionPivot10252 = (fun u v => (normalNode6669).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6669).moment H = injectiveMoment H reductionPivot10252 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6669).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot10252 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10252 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 18, 1440, 144] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10252 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2517, reductionProjection5595, reductionProjection10249, reductionProjection4360, reductionProjection10251] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10252 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2517⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10252 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2517 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10252 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2517 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2517 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10252 (1 : Fin 5)) = canonicalInput13450.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10252 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5595 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10252 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5595 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13450 hH))).trans (reductionSound5595 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10252 (2 : Fin 5)) = (normalNode6672).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10252 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10249 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10252 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10249 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10249 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10252 (3 : Fin 5)) = canonicalInput13426.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10252 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4360 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10252 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4360 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13426 hH))).trans (reductionSound4360 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10252 (4 : Fin 5)) = (normalNode6671).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10252 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10251 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10252 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10251 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10251 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode6669).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10252 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6669).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10252 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 18, 1440, 144] ![1, 1, 80, 1, 10] reductionProjection10252 ![oldProjection2517, reductionProjection5595, reductionProjection10249, reductionProjection4360, reductionProjection10251]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10253 : Integer.Sparse (Fin 1613) := [(56, 48), (58, 24), (81, 24), (90, -8), (94, -1), (437, -72), (446, -72), (698, -16), (700, -8), (1226, -8), (1251, -1)]

def reductionPivot10253 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, -1, 0, 0], ![-1, -2, 0, 3], ![-1, 0, 3, -2], ![0, 2, -1, -1], ![1, 1, -2, 0]]

theorem reductionSound10253 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode6673).moment H =
      Integer.Sparse.eval reductionProjection10253 (momentVector H) := by
  have heq : reductionPivot10253 = (fun u v => (normalNode6673).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6673).moment H = injectiveMoment H reductionPivot10253 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6673).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot10253 0 = Pi.single (0 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10253 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 9, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10253 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection3239, reductionProjection4126, reductionProjection4118, reductionProjection3240] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10253 (0 : Fin 4)) = canonicalInput23830.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10253 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3239 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10253 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3239 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23830 hH))).trans (reductionSound3239 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10253 (1 : Fin 4)) = (normalNode6714).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10253 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4126 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10253 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4126 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4126 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10253 (2 : Fin 4)) = canonicalInput13436.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10253 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4118 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10253 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4118 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13436 hH))).trans (reductionSound4118 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10253 (3 : Fin 4)) = canonicalInput13431.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10253 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3240 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10253 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3240 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13431 hH))).trans (reductionSound3240 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6673).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10253 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6673).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10253 (j : Fin 4)))
      2 144 144 2 ![72, 9, 1, 1] ![2, 16, 144, 144] reductionProjection10253 ![reductionProjection3239, reductionProjection4126, reductionProjection4118, reductionProjection3240]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10254 : Integer.Sparse (Fin 1613) := [(0, -6), (42, 240), (56, -960), (58, -240), (60, 80), (81, -480), (90, 560), (94, 45), (243, 160), (437, 1440), (446, 720), (698, 720), (700, 960), (704, 80), (1002, 720), (1004, 720), (1005, 720), (1059, 320), (1226, 320), (1227, 80), (1251, -25)]

def reductionPivot10254 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, -2, 0, 3], ![-1, 0, 3, -2], ![0, 2, -1, -1], ![1, -1, 0, 0], ![1, 0, -1, 0]]

theorem reductionSound10254 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6670).moment H =
      Integer.Sparse.eval reductionProjection10254 (momentVector H) := by
  have heq : reductionPivot10254 = (fun u v => (normalNode6670).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6670).moment H = injectiveMoment H reductionPivot10254 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6670).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot10254 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10254 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 720, 18, 1440, 144] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10254 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2075, reductionProjection3001, reductionProjection10245, reductionProjection4358, reductionProjection10253] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10254 (0 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw6155 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10254 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2075 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10254 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2075 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6155 hH))).trans (oldProjectionSound2075 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10254 (1 : Fin 5)) = canonicalInput13458.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10254 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3001 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10254 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3001 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13458 hH))).trans (reductionSound3001 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10254 (2 : Fin 5)) = (normalNode6674).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10254 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10245 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10254 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10245 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10245 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10254 (3 : Fin 5)) = canonicalInput13430.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10254 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4358 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10254 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4358 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13430 hH))).trans (reductionSound4358 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10254 (4 : Fin 5)) = (normalNode6673).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10254 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10253 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10254 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10253 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10253 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode6670).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10254 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6670).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10254 (j : Fin 5)))
      1 1440 1440 1 ![1440, 720, 18, 1440, 144] ![1, 2, 80, 1, 10] reductionProjection10254 ![oldProjection2075, reductionProjection3001, reductionProjection10245, reductionProjection4358, reductionProjection10253]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10255 : Integer.Sparse (Fin 1613) := [(0, 1), (81, 120), (94, -10), (446, -180), (662, -180), (698, -60), (700, -20), (1059, -20), (1251, -5)]

def reductionPivot10255 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-1, -2, 0, 3], ![-1, 1, 2, -2], ![1, 1, -2, 0], ![1, 1, -1, -1]]

theorem reductionSound10255 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * (normalNode6682).moment H =
      Integer.Sparse.eval reductionProjection10255 (momentVector H) := by
  have heq : reductionPivot10255 = (fun u v => (normalNode6682).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6682).moment H = injectiveMoment H reductionPivot10255 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6682).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot10255 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10255 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 720, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10255 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection6002, reductionProjection4118, oldProjection1013, oldProjection1098] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10255 (0 : Fin 4)) = canonicalInput12439.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10255 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6002 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10255 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6002 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12439 hH))).trans (reductionSound6002 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10255 (1 : Fin 4)) = canonicalInput13435.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10255 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4118 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10255 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4118 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13435 hH))).trans (reductionSound4118 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10255 (2 : Fin 4)) = canonicalInput13461.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10255 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1013 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10255 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1013 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13461 hH))).trans (oldProjectionSound1013 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10255 (3 : Fin 4)) = canonicalInput13463.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10255 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1098 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10255 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1098 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13463 hH))).trans (oldProjectionSound1098 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6682).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10255 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6682).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10255 (j : Fin 4)))
      2 360 720 4 ![1, 1, 720, 720] ![720, 720, 1, 1] reductionProjection10255 ![reductionProjection6002, reductionProjection4118, oldProjection1013, oldProjection1098]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10256 : Integer.Sparse (Fin 1613) := [(0, 3), (38, 240), (56, 240), (90, -80), (94, -20), (698, -480), (700, -720), (1059, -240), (1251, 25)]

def reductionPivot10256 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-1, -2, 0, 3], ![0, 0, 2, -2], ![0, 2, -2, 0], ![1, 1, -1, -1]]

theorem reductionSound10256 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6691).moment H =
      Integer.Sparse.eval reductionProjection10256 (momentVector H) := by
  have heq : reductionPivot10256 = (fun u v => (normalNode6691).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6691).moment H = injectiveMoment H reductionPivot10256 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6691).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10256 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10256 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 9, 720, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10256 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection726, reductionProjection4357, oldProjection805, oldProjection806] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10256 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node726⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10256 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection726 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10256 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection726 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound726 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10256 (1 : Fin 4)) = (normalNode6713).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10256 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4357 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10256 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4357 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4357 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10256 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node805⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10256 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection805 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10256 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection805 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound805 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10256 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node806⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10256 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection806 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10256 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection806 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound806 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6691).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10256 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6691).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10256 (j : Fin 4)))
      2 1440 1440 2 ![9, 9, 720, 9] ![160, 160, 2, 160] reductionProjection10256 ![oldProjection726, reductionProjection4357, oldProjection805, oldProjection806]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10257 : Integer.Sparse (Fin 1613) := [(0, 3), (38, 240), (56, 240), (81, 480), (90, -80), (94, -30), (698, -240), (700, -320), (1059, -240), (1226, -80), (1251, 15)]

def reductionPivot10257 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-1, -2, 0, 3], ![0, 0, 2, -2], ![0, 2, -1, -1], ![1, 1, -2, 0]]

theorem reductionSound10257 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6692).moment H =
      Integer.Sparse.eval reductionProjection10257 (momentVector H) := by
  have heq : reductionPivot10257 = (fun u v => (normalNode6692).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6692).moment H = injectiveMoment H reductionPivot10257 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6692).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10257 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10257 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 9, 360, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10257 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection2546, reductionProjection4126, oldProjection802, oldProjection807] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10257 (0 : Fin 4)) = (normalNode6121).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10257 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2546 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10257 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2546 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2546 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10257 (1 : Fin 4)) = (normalNode6714).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10257 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4126 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10257 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4126 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4126 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10257 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5691 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10257 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection802 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10257 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection802 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5691 hH))).trans (oldProjectionSound802 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10257 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node807⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10257 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection807 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10257 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection807 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound807 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6692).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10257 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6692).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10257 (j : Fin 4)))
      2 1440 1440 2 ![72, 9, 360, 720] ![20, 160, 4, 2] reductionProjection10257 ![reductionProjection2546, reductionProjection4126, oldProjection802, oldProjection807]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10258 : Integer.Sparse (Fin 1613) := [(0, -2), (38, -48), (56, -48), (81, -96), (90, 16), (94, 15), (446, 216), (486, 144), (662, 72), (698, 160), (700, 160), (1059, 104), (1226, 8), (1251, -11)]

def reductionPivot10258 : Matrix (Fin 6) (Fin 4) ℤ := ![![-1, 1, 0, 0], ![-1, -2, 0, 3], ![0, -1, 1, 0], ![0, 0, 2, -2], ![1, 1, -2, 0], ![1, 1, -1, -1]]

theorem reductionSound10258 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode6675).moment H =
      Integer.Sparse.eval reductionProjection10258 (momentVector H) := by
  have heq : reductionPivot10258 = (fun u v => (normalNode6675).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6675).moment H = injectiveMoment H reductionPivot10258 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6675).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot10258 0 = Pi.single (1 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10258 1 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 288, 360, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10258 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection4368, reductionProjection4368, reductionProjection10255, reductionProjection10256, reductionProjection10257] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10258 (0 : Fin 5)) = (normalNode1793).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10258 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4368 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10258 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4368 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4368 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10258 (1 : Fin 5)) = canonicalInput13404.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10258 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4368 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10258 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4368 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13404 hH))).trans (reductionSound4368 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10258 (2 : Fin 5)) = canonicalInput13484.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10258 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10255 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10258 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10255 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13484 hH))).trans (reductionSound10255 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10258 (3 : Fin 5)) = (normalNode6691).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10258 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10256 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10258 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10256 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10256 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10258 (4 : Fin 5)) = canonicalInput13486.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10258 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10257 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10258 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10257 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13486 hH))).trans (reductionSound10257 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode6675).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10258 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6675).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10258 (j : Fin 5)))
      1 144 1440 10 ![288, 288, 360, 1440, 1440] ![5, 5, 4, 1, 1] reductionProjection10258 ![reductionProjection4368, reductionProjection4368, reductionProjection10255, reductionProjection10256, reductionProjection10257]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10259 : Integer.Sparse (Fin 1613) := [(0, 1), (56, 48), (81, 48), (90, -16), (94, -2), (697, 48), (698, -96), (700, -32), (1052, 48), (1059, -48), (1219, 48), (1226, -16), (1227, -32), (1251, 13)]

def reductionPivot10259 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, -2, 0, 3], ![0, -1, 2, -1], ![0, 2, -2, 0], ![1, 1, -1, -1]]

theorem reductionSound10259 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode6696).moment H =
      Integer.Sparse.eval reductionProjection10259 (momentVector H) := by
  have heq : reductionPivot10259 = (fun u v => (normalNode6696).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6696).moment H = injectiveMoment H reductionPivot10259 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6696).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot10259 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10259 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 9, 720, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10259 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1346, reductionProjection4357, oldProjection1208, oldProjection1190] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10259 (0 : Fin 4)) = canonicalInput13849.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10259 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1346 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10259 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1346 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13849 hH))).trans (oldProjectionSound1346 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10259 (1 : Fin 4)) = (normalNode6713).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10259 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4357 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10259 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4357 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4357 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10259 (2 : Fin 4)) = canonicalInput13496.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10259 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1208 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10259 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1208 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13496 hH))).trans (oldProjectionSound1208 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10259 (3 : Fin 4)) = canonicalInput13495.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10259 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1190 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10259 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1190 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13495 hH))).trans (oldProjectionSound1190 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6696).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10259 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6696).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10259 (j : Fin 4)))
      2 288 1440 10 ![720, 9, 720, 720] ![2, 160, 2, 2] reductionProjection10259 ![oldProjection1346, reductionProjection4357, oldProjection1208, oldProjection1190]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10260 : Integer.Sparse (Fin 1613) := [(0, 2), (56, 240), (81, 240), (90, -80), (94, -5), (697, 240), (698, -400), (1052, 240), (1219, 240), (1221, 240), (1226, -240), (1227, -240), (1251, 45), (1389, 240)]

def reductionPivot10260 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, -2, 0, 3], ![0, -1, 2, -1], ![0, 2, -1, -1], ![1, 1, -2, 0]]

theorem reductionSound10260 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6697).moment H =
      Integer.Sparse.eval reductionProjection10260 (momentVector H) := by
  have heq : reductionPivot10260 = (fun u v => (normalNode6697).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6697).moment H = injectiveMoment H reductionPivot10260 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6697).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot10260 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10260 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 9, 144, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10260 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1276, reductionProjection4126, oldProjection1223, oldProjection1208] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10260 (0 : Fin 4)) = canonicalInput13850.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10260 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1276 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10260 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1276 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13850 hH))).trans (oldProjectionSound1276 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10260 (1 : Fin 4)) = (normalNode6714).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10260 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4126 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10260 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4126 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4126 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10260 (2 : Fin 4)) = canonicalInput13497.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10260 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1223 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10260 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1223 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13497 hH))).trans (oldProjectionSound1223 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10260 (3 : Fin 4)) = canonicalInput13496.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10260 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1208 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10260 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1208 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13496 hH))).trans (oldProjectionSound1208 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6697).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10260 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6697).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10260 (j : Fin 4)))
      2 1440 1440 2 ![720, 9, 144, 720] ![2, 160, 10, 2] reductionProjection10260 ![oldProjection1276, reductionProjection4126, oldProjection1223, oldProjection1208]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10261 : Integer.Sparse (Fin 1613) := [(0, -7), (56, -480), (81, -480), (90, 160), (94, 15), (433, 1440), (434, 1440), (446, 1440), (669, 1440), (697, -480), (698, 880), (700, 160), (1052, -480), (1059, 240), (1219, -480), (1221, -240), (1226, 320), (1227, 400), (1251, -110), (1303, -1440), (1389, -240)]

def reductionPivot10261 : Matrix (Fin 6) (Fin 4) ℤ := ![![-1, 1, 0, 0], ![-1, -2, 0, 3], ![0, -1, 2, -1], ![0, 0, 1, -1], ![1, 1, -2, 0], ![1, 1, -1, -1]]

theorem reductionSound10261 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6676).moment H =
      Integer.Sparse.eval reductionProjection10261 (momentVector H) := by
  have heq : reductionPivot10261 = (fun u v => (normalNode6676).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6676).moment H = injectiveMoment H reductionPivot10261 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6676).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot10261 0 = Pi.single (1 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10261 1 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![2, 2, 1, 288, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10261 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection4449, reductionProjection4449, reductionProjection5899, reductionProjection10259, reductionProjection10260] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10261 (0 : Fin 5)) = (normalNode1852).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10261 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4449 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10261 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4449 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4449 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10261 (1 : Fin 5)) = canonicalInput13406.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10261 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4449 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10261 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4449 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13406 hH))).trans (reductionSound4449 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10261 (2 : Fin 5)) = canonicalInput13490.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10261 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5899 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10261 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5899 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13490 hH))).trans (reductionSound5899 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10261 (3 : Fin 5)) = (normalNode6696).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10261 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10259 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10261 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10259 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10259 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10261 (4 : Fin 5)) = canonicalInput13492.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10261 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10260 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10261 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10260 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13492 hH))).trans (reductionSound10260 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode6676).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10261 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6676).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10261 (j : Fin 5)))
      1 1440 1440 1 ![2, 2, 1, 288, 1440] ![720, 720, 1440, 5, 1] reductionProjection10261 ![reductionProjection4449, reductionProjection4449, reductionProjection5899, reductionProjection10259, reductionProjection10260]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10262 : Integer.Sparse (Fin 1613) := [(0, 3), (81, -480), (94, 120), (433, 720), (434, 720), (446, 720), (483, 720), (489, 720), (549, 720), (662, 720), (669, 720), (698, 560), (700, 80), (1059, 80), (1227, 160), (1251, -115), (1303, -1440), (1333, 720), (1389, -480)]

def reductionPivot10262 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-1, -2, 0, 3], ![-1, 1, 1, -1], ![0, 0, 1, -1], ![1, 1, -2, 0], ![1, 1, -1, -1]]

theorem reductionSound10262 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6677).moment H =
      Integer.Sparse.eval reductionProjection10262 (momentVector H) := by
  have heq : reductionPivot10262 = (fun u v => (normalNode6677).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6677).moment H = injectiveMoment H reductionPivot10262 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6677).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot10262 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10262 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![2, 2, 1, 360, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10262 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection9846, reductionProjection4449, reductionProjection5899, oldProjection1683, oldProjection1685] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10262 (0 : Fin 5)) = (normalNode6055).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10262 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9846 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10262 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9846 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9846 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10262 (1 : Fin 5)) = canonicalInput13406.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10262 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4449 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10262 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4449 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13406 hH))).trans (reductionSound4449 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10262 (2 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code1303).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10262 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5899 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10262 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5899 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound5899 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10262 (3 : Fin 5)) = canonicalInput13440.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10262 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1683 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10262 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1683 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13440 hH))).trans (oldProjectionSound1683 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10262 (4 : Fin 5)) = canonicalInput13441.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10262 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1685 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10262 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1685 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13441 hH))).trans (oldProjectionSound1685 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode6677).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10262 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6677).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10262 (j : Fin 5)))
      1 1440 1440 1 ![2, 2, 1, 360, 1440] ![720, 720, 1440, 4, 1] reductionProjection10262 ![reductionProjection9846, reductionProjection4449, reductionProjection5899, oldProjection1683, oldProjection1685]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10263 : Integer.Sparse (Fin 1613) := [(0, -12), (19, -20), (56, -240), (81, -960), (90, 160), (94, 55), (446, 720), (662, 720), (682, -240), (683, -240), (698, 1280), (700, 640), (704, 80), (1059, 240), (1226, 480), (1227, 160), (1251, -45)]

def reductionPivot10263 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-1, -2, 0, 3], ![-1, 1, 2, -2], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 1, -1, -1]]

theorem reductionSound10263 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6679).moment H =
      Integer.Sparse.eval reductionProjection10263 (momentVector H) := by
  have heq : reductionPivot10263 = (fun u v => (normalNode6679).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6679).moment H = injectiveMoment H reductionPivot10263 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6679).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot10263 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10263 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 720, 1440, 360] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10263 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection9855, reductionProjection4360, oldProjection1013, reductionProjection5595, oldProjection1718] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10263 (0 : Fin 5)) = (normalNode6066).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10263 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9855 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10263 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9855 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9855 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10263 (1 : Fin 5)) = canonicalInput13426.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10263 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4360 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10263 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4360 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13426 hH))).trans (reductionSound4360 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10263 (2 : Fin 5)) = canonicalInput13448.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10263 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1013 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10263 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1013 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13448 hH))).trans (oldProjectionSound1013 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10263 (3 : Fin 5)) = canonicalInput13450.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10263 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5595 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10263 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5595 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13450 hH))).trans (reductionSound5595 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10263 (4 : Fin 5)) = canonicalInput13451.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10263 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1718 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10263 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1718 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13451 hH))).trans (oldProjectionSound1718 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode6679).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10263 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6679).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10263 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 720, 1440, 360] ![1, 1, 2, 1, 4] reductionProjection10263 ![reductionProjection9855, reductionProjection4360, oldProjection1013, reductionProjection5595, oldProjection1718]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10264 : Integer.Sparse (Fin 1613) := [(0, 1), (81, 240), (94, -10), (698, -160), (700, -80), (1059, -80), (1117, -720), (1175, -720), (1251, 5), (1304, -720)]

def reductionPivot10264 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, -2, 0, 3], ![-1, 1, 2, -2], ![1, -1, 1, -1], ![1, 1, -2, 0]]

theorem reductionSound10264 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6683).moment H =
      Integer.Sparse.eval reductionProjection10264 (momentVector H) := by
  have heq : reductionPivot10264 = (fun u v => (normalNode6683).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6683).moment H = injectiveMoment H reductionPivot10264 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6683).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot10264 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10264 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 720, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10264 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection680, oldProjection690, oldProjection1098, reductionProjection10237] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10264 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw6191 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10264 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection680 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10264 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection680 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6191 hH))).trans (oldProjectionSound680 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10264 (1 : Fin 4)) = canonicalInput13468.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10264 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection690 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10264 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection690 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13468 hH))).trans (oldProjectionSound690 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10264 (2 : Fin 4)) = canonicalInput13462.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10264 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1098 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10264 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1098 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13462 hH))).trans (oldProjectionSound1098 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10264 (3 : Fin 4)) = canonicalInput13460.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10264 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10237 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10264 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10237 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13460 hH))).trans (reductionSound10237 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6683).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10264 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6683).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10264 (j : Fin 4)))
      2 1440 1440 2 ![1, 1, 720, 1] ![1440, 1440, 2, 1440] reductionProjection10264 ![oldProjection680, oldProjection690, oldProjection1098, reductionProjection10237]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10265 : Integer.Sparse (Fin 1613) := [(0, -6), (42, 80), (56, -240), (60, 80), (81, -720), (90, 240), (94, 25), (243, 80), (446, 720), (662, 720), (682, -240), (683, -240), (698, 880), (700, 720), (1059, 240), (1117, 720), (1175, 720), (1226, 400), (1227, 80), (1251, -5), (1304, 720)]

def reductionPivot10265 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-1, -2, 0, 3], ![-1, 1, 2, -2], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 1, -2, 0]]

theorem reductionSound10265 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6680).moment H =
      Integer.Sparse.eval reductionProjection10265 (momentVector H) := by
  have heq : reductionPivot10265 = (fun u v => (normalNode6680).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6680).moment H = injectiveMoment H reductionPivot10265 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6680).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot10265 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10265 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 720, 1440, 360] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10265 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection9854, reductionProjection4127, oldProjection1098, reductionProjection10264, oldProjection1718] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10265 (0 : Fin 5)) = (normalNode6067).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10265 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9854 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10265 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9854 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9854 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10265 (1 : Fin 5)) = canonicalInput13427.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10265 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4127 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10265 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4127 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13427 hH))).trans (reductionSound4127 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10265 (2 : Fin 5)) = canonicalInput13449.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10265 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1098 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10265 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1098 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13449 hH))).trans (oldProjectionSound1098 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10265 (3 : Fin 5)) = (normalNode6683).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10265 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10264 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10265 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10264 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10264 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10265 (4 : Fin 5)) = canonicalInput13452.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10265 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1718 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10265 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1718 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13452 hH))).trans (oldProjectionSound1718 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode6680).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10265 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6680).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10265 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 720, 1440, 360] ![1, 1, 2, 1, 4] reductionProjection10265 ![reductionProjection9854, reductionProjection4127, oldProjection1098, reductionProjection10264, oldProjection1718]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10266 : Integer.Sparse (Fin 1613) := [(0, 1), (81, 480), (94, -20), (698, -240), (700, -320), (895, -720), (1059, -160), (1251, -5), (1304, -720)]

def reductionPivot10266 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-1, -2, 0, 3], ![-1, 1, 2, -2], ![0, 2, -2, 0], ![1, -1, 1, -1]]

theorem reductionSound10266 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6684).moment H =
      Integer.Sparse.eval reductionProjection10266 (momentVector H) := by
  have heq : reductionPivot10266 = (fun u v => (normalNode6684).entries (OAI.MUB6.Certificate.PairSemantics.permutation128 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6684).moment H = injectiveMoment H reductionPivot10266 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6684).entries OAI.MUB6.Certificate.PairSemantics.permutation128)).symm
  have hshape : reductionPivot10266 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10266 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 720, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10266 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1305, oldProjection1098, reductionProjection10237, reductionProjection3031] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10266 (0 : Fin 4)) = canonicalInput23989.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10266 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1305 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10266 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1305 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23989 hH))).trans (reductionSound1305 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10266 (1 : Fin 4)) = canonicalInput13537.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10266 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1098 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10266 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1098 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13537 hH))).trans (oldProjectionSound1098 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10266 (2 : Fin 4)) = canonicalInput13464.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10266 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10237 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10266 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10237 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13464 hH))).trans (reductionSound10237 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10266 (3 : Fin 4)) = canonicalInput13457.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10266 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3031 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10266 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3031 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13457 hH))).trans (reductionSound3031 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6684).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10266 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6684).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10266 (j : Fin 4)))
      2 1440 1440 2 ![72, 720, 1, 1] ![20, 2, 1440, 1440] reductionProjection10266 ![reductionProjection1305, oldProjection1098, reductionProjection10237, reductionProjection3031]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10267 : Integer.Sparse (Fin 1613) := [(0, -3), (42, 40), (56, -120), (60, 40), (81, -600), (90, 120), (94, 40), (243, 40), (438, 360), (659, 360), (683, -120), (698, 640), (700, 720), (704, 40), (895, 720), (1059, 240), (1226, 80), (1227, 40), (1251, 15), (1304, 360)]

def reductionPivot10267 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-1, -2, 0, 3], ![-1, 1, 2, -2], ![0, 2, -2, 0], ![1, 0, -1, 0], ![1, 0, 0, -1]]

theorem reductionSound10267 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode6681).moment H =
      Integer.Sparse.eval reductionProjection10267 (momentVector H) := by
  have heq : reductionPivot10267 = (fun u v => (normalNode6681).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6681).moment H = injectiveMoment H reductionPivot10267 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6681).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot10267 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10267 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![72, 18, 360, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10267 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection9850, reductionProjection4422, oldProjection1718, reductionProjection3032, reductionProjection10266] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10267 (0 : Fin 5)) = (normalNode6072).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10267 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9850 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10267 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9850 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9850 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10267 (1 : Fin 5)) = canonicalInput13428.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10267 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4422 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10267 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4422 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13428 hH))).trans (reductionSound4422 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10267 (2 : Fin 5)) = canonicalInput13451.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10267 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1718 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10267 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1718 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13451 hH))).trans (oldProjectionSound1718 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10267 (3 : Fin 5)) = canonicalInput13455.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10267 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3032 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10267 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3032 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13455 hH))).trans (reductionSound3032 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10267 (4 : Fin 5)) = canonicalInput13456.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10267 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10266 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10267 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10266 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13456 hH))).trans (reductionSound10266 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode6681).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10267 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6681).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10267 (j : Fin 5)))
      1 720 1440 2 ![72, 18, 360, 1440, 1440] ![20, 80, 4, 1, 1] reductionProjection10267 ![reductionProjection9850, reductionProjection4422, oldProjection1718, reductionProjection3032, reductionProjection10266]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10268 : Integer.Sparse (Fin 1613) := [(42, -1), (88, -1), (90, -1), (441, -9), (698, -5), (700, -3), (1226, -4)]

def reductionPivot10268 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-1, -2, 0, 3], ![-1, 3, -1, -1], ![0, -1, 3, -2], ![1, 0, -1, 0]]

theorem reductionSound10268 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode6686).moment H =
      Integer.Sparse.eval reductionProjection10268 (momentVector H) := by
  have heq : reductionPivot10268 = (fun u v => (normalNode6686).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6686).moment H = injectiveMoment H reductionPivot10268 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6686).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot10268 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10268 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 9, 9, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10268 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection4145, reductionProjection4446, oldProjection1018, reductionProjection310] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10268 (0 : Fin 4)) = canonicalInput23992.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10268 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4145 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10268 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4145 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23992 hH))).trans (reductionSound4145 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10268 (1 : Fin 4)) = canonicalInput13544.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10268 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4446 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10268 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4446 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13544 hH))).trans (reductionSound4446 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10268 (2 : Fin 4)) = canonicalInput13482.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10268 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1018 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10268 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1018 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13482 hH))).trans (oldProjectionSound1018 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10268 (3 : Fin 4)) = canonicalInput13479.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10268 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection310 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10268 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection310 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13479 hH))).trans (reductionSound310 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6686).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10268 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6686).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10268 (j : Fin 4)))
      2 18 18 2 ![9, 9, 9, 1] ![2, 2, 2, 18] reductionProjection10268 ![reductionProjection4145, reductionProjection4446, oldProjection1018, reductionProjection310]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10269 : Integer.Sparse (Fin 1613) := [(0, -3), (42, 40), (88, 40), (90, 280), (243, 160), (441, 360), (698, 560), (700, 200), (704, 40), (919, 360), (998, 360), (1004, 720), (1226, 280), (1227, 160), (1251, -65)]

def reductionPivot10269 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, -2, 0, 3], ![-1, 3, -1, -1], ![0, -1, 2, -1], ![1, 0, -1, 0], ![1, 0, -1, 0]]

theorem reductionSound10269 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode6685).moment H =
      Integer.Sparse.eval reductionProjection10269 (momentVector H) := by
  have heq : reductionPivot10269 = (fun u v => (normalNode6685).entries (OAI.MUB6.Certificate.PairSemantics.permutation241 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6685).moment H = injectiveMoment H reductionPivot10269 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6685).entries OAI.MUB6.Certificate.PairSemantics.permutation241)).symm
  have hshape : reductionPivot10269 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10269 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 36, 18, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10269 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection4936, reductionProjection7737, reductionProjection10268, oldProjection2075, oldProjection2075] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10269 (0 : Fin 5)) = canonicalInput13814.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10269 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4936 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10269 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4936 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13814 hH))).trans (reductionSound4936 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10269 (1 : Fin 5)) = canonicalInput13483.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10269 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7737 (momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10269 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7737 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13483 hH))).trans (reductionSound7737 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10269 (2 : Fin 5)) = (normalNode6686).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10269 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10268 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10269 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10268 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10268 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10269 (3 : Fin 5)) = canonicalInput13478.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10269 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2075 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10269 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2075 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13478 hH))).trans (oldProjectionSound2075 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10269 (4 : Fin 5)) = canonicalInput13477.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10269 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2075 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10269 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2075 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13477 hH))).trans (oldProjectionSound2075 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode6685).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10269 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6685).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10269 (j : Fin 5)))
      1 720 1440 2 ![720, 36, 18, 1440, 1440] ![2, 40, 80, 1, 1] reductionProjection10269 ![reductionProjection4936, reductionProjection7737, reductionProjection10268, oldProjection2075, oldProjection2075]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10270 : Integer.Sparse (Fin 1613) := [(42, 1), (90, 2), (698, 2), (700, 2), (1059, 1), (1226, 1)]

def reductionPivot10270 : Matrix (Fin 4) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, -2, 0, 3], ![0, -1, 3, -2], ![1, 2, -2, -1]]

theorem reductionSound10270 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * (normalNode6710).moment H =
      Integer.Sparse.eval reductionProjection10270 (momentVector H) := by
  have heq : reductionPivot10270 = (fun u v => (normalNode6710).entries (OAI.MUB6.Certificate.PairSemantics.permutation21 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6710).moment H = injectiveMoment H reductionPivot10270 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6710).entries OAI.MUB6.Certificate.PairSemantics.permutation21)).symm
  have hshape : reductionPivot10270 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot10270 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![3, 3, 3] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot10270 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection109, oldProjection177, oldProjection95] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10270 (0 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw6232 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10270 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection109 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10270 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection109 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6232 hH))).trans (oldProjectionSound109 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10270 (1 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw5695 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10270 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection177 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10270 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection177 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5695 hH))).trans (oldProjectionSound177 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10270 (2 : Fin 3)) = canonicalInput13504.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10270 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection95 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10270 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection95 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13504 hH))).trans (oldProjectionSound95 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode6710).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot10270 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6710).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot10270 (j : Fin 3)))
      3 9 9 3 ![3, 3, 3] ![3, 3, 3] reductionProjection10270 ![oldProjection109, oldProjection177, oldProjection95]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10271 : Integer.Sparse (Fin 1613) := [(0, 1), (42, -16), (90, -32), (94, -2), (243, -32), (698, -144), (700, -48), (704, -16), (1059, -32), (1226, -64), (1227, -48), (1251, 13)]

def reductionPivot10271 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, -2, 0, 3], ![0, -1, 2, -1], ![0, 1, -1, 0], ![1, 2, -2, -1]]

theorem reductionSound10271 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode6695).moment H =
      Integer.Sparse.eval reductionProjection10271 (momentVector H) := by
  have heq : reductionPivot10271 = (fun u v => (normalNode6695).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6695).moment H = injectiveMoment H reductionPivot10271 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6695).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot10271 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10271 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 9, 720, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10271 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1336, reductionProjection10270, oldProjection971, oldProjection1204] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10271 (0 : Fin 4)) = canonicalInput13847.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10271 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1336 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10271 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1336 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13847 hH))).trans (oldProjectionSound1336 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10271 (1 : Fin 4)) = (normalNode6710).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10271 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10270 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10271 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10270 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10270 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10271 (2 : Fin 4)) = canonicalInput13494.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10271 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection971 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10271 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection971 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13494 hH))).trans (oldProjectionSound971 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10271 (3 : Fin 4)) = canonicalInput13493.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10271 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1204 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10271 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1204 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13493 hH))).trans (oldProjectionSound1204 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6695).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10271 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6695).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10271 (j : Fin 4)))
      2 288 1440 10 ![720, 9, 720, 720] ![2, 160, 2, 2] reductionProjection10271 ![oldProjection1336, reductionProjection10270, oldProjection971, oldProjection1204]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization
