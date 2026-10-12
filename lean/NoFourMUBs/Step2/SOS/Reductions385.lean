import NoFourMUBs.Step2.SOS.Canonical327
import NoFourMUBs.Step2.SOS.Canonical328
import NoFourMUBs.Step2.SOS.Canonical351
import NoFourMUBs.Step2.SOS.Canonical353
import NoFourMUBs.Step2.SOS.Canonical354
import NoFourMUBs.Step2.SOS.Canonical355
import NoFourMUBs.Step2.SOS.Canonical364
import NoFourMUBs.Step2.SOS.Canonical365
import NoFourMUBs.Step2.SOS.Canonical366
import NoFourMUBs.Step2.SOS.Canonical383
import NoFourMUBs.Step2.SOS.Canonical384
import NoFourMUBs.Step2.SOS.Canonical386
import NoFourMUBs.Step2.SOS.Canonical398
import NoFourMUBs.Step2.SOS.Canonical403
import NoFourMUBs.Step2.SOS.Canonical407
import NoFourMUBs.Step2.SOS.Canonical429
import NoFourMUBs.Step2.SOS.Canonical437
import NoFourMUBs.Step2.SOS.Canonical440
import NoFourMUBs.Step2.SOS.Canonical441
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import NoFourMUBs.Step2.SOS.OldProjections004
import NoFourMUBs.Step2.SOS.OldProjections011
import NoFourMUBs.Step2.SOS.OldProjections012
import NoFourMUBs.Step2.SOS.OldProjections013
import NoFourMUBs.Step2.SOS.OldProjections015
import NoFourMUBs.Step2.SOS.OldProjections016
import NoFourMUBs.Step2.SOS.OldProjections017
import NoFourMUBs.Step2.SOS.OldProjections018
import NoFourMUBs.Step2.SOS.OldProjections019
import NoFourMUBs.Step2.SOS.OldProjections020
import NoFourMUBs.Step2.SOS.OldProjections032
import NoFourMUBs.Step2.SOS.OldProjections034
import NoFourMUBs.Step2.SOS.OldProjections035
import NoFourMUBs.Step2.SOS.OldProjections037
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions021
import NoFourMUBs.Step2.SOS.Reductions024
import NoFourMUBs.Step2.SOS.Reductions069
import NoFourMUBs.Step2.SOS.Reductions081
import NoFourMUBs.Step2.SOS.Reductions085
import NoFourMUBs.Step2.SOS.Reductions221
import NoFourMUBs.Step2.SOS.Reductions234
import NoFourMUBs.Step2.SOS.Reductions243
import NoFourMUBs.Step2.SOS.Reductions246
import NoFourMUBs.Step2.SOS.Reductions268
import NoFourMUBs.Step2.SOS.Reductions269
import NoFourMUBs.Step2.SOS.Reductions274
import NoFourMUBs.Step2.SOS.Reductions276
import NoFourMUBs.Step2.SOS.Reductions277
import NoFourMUBs.Step2.SOS.Reductions281
import NoFourMUBs.Step2.SOS.Reductions285
import NoFourMUBs.Step2.SOS.Reductions286
import NoFourMUBs.Step2.SOS.Reductions293
import NoFourMUBs.Step2.SOS.Reductions299
import NoFourMUBs.Step2.SOS.Reductions300
import NoFourMUBs.Step2.SOS.Reductions304
import NoFourMUBs.Step2.SOS.Reductions365
import NoFourMUBs.Step2.SOS.Reductions372
import NoFourMUBs.Step2.SOS.Reductions378
import NoFourMUBs.Step2.SOS.Reductions380
import NoFourMUBs.Step2.SOS.Reductions381
import NoFourMUBs.Step2.SOS.Reductions382
import NoFourMUBs.Step2.SOS.Reductions383
import NoFourMUBs.Step2.SOS.Reductions384
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical243
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical244
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical245
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical248
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical265
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes21
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes44
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection12320 : Integer.Sparse (Fin 1613) := [(19, -4), (20, 4), (94, 5), (106, -16), (243, -48), (244, -32), (698, -16), (700, -16), (701, -16), (704, -16), (1061, 48), (1214, 48), (1225, -16), (1226, -16), (1251, 1)]

def reductionPivot12320 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, 1, -2, 2], ![0, 0, 4, -4], ![0, 1, -1, 0], ![1, -2, 0, 1]]

theorem reductionSound12320 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode11064).moment H =
      Integer.Sparse.eval reductionProjection12320 (momentVector H) := by
  have heq : reductionPivot12320 = (fun u v => (normalNode11064).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode11064).moment H = injectiveMoment H reductionPivot12320 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode11064).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot12320 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot12320 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![36, 144, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot12320 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection9152, oldProjection1231, oldProjection1338, reductionProjection8785] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot12320 (0 : Fin 4)) = canonicalInput22594.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12320 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9152 (momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12320 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9152 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22594 hH))).trans (reductionSound9152 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12320 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw7825 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12320 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1231 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12320 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1231 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7825 hH))).trans (oldProjectionSound1231 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12320 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1338⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12320 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1338 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12320 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1338 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1338 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12320 (3 : Fin 4)) = (normalNode11073).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12320 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8785 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12320 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8785 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8785 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode11064).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot12320 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode11064).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot12320 (j : Fin 4)))
      2 288 288 2 ![36, 144, 144, 144] ![8, 2, 2, 2] reductionProjection12320 ![reductionProjection9152, oldProjection1231, oldProjection1338, reductionProjection8785]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection12321 : Integer.Sparse (Fin 1613) := [(0, -3), (3, -80), (4, 10), (19, -220), (20, 30), (94, 85), (106, 80), (108, 80), (243, 320), (244, 240), (246, 80), (247, 80), (698, 80), (700, 80), (701, 160), (704, 320), (1061, -240), (1214, -240), (1225, 80), (1226, 80), (1251, 100)]

def reductionPivot12321 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-1, 1, -2, 2], ![0, 0, -1, 1], ![0, 0, 4, -4], ![0, 1, -1, 0], ![1, -1, 0, 0]]

theorem reductionSound12321 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode11028).moment H =
      Integer.Sparse.eval reductionProjection12321 (momentVector H) := by
  have heq : reductionPivot12321 = (fun u v => (normalNode11028).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode11028).moment H = injectiveMoment H reductionPivot12321 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode11028).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot12321 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot12321 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 288, 1440, 1440, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot12321 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection11920, reductionProjection12316, reductionProjection12162, reductionProjection12319, reductionProjection12320] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot12321 (0 : Fin 5)) = (normalNode9956).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12321 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11920 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12321 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11920 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound11920 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12321 (1 : Fin 5)) = (normalNode11025).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12321 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection12316 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12321 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection12316 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound12316 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12321 (2 : Fin 5)) = canonicalInput22652.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12321 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection12162 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12321 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection12162 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22652 hH))).trans (reductionSound12162 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12321 (3 : Fin 5)) = canonicalInput22657.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12321 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection12319 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12321 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection12319 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22657 hH))).trans (reductionSound12319 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12321 (4 : Fin 5)) = (normalNode11064).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12321 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection12320 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12321 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection12320 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound12320 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode11028).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot12321 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode11028).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot12321 (j : Fin 5)))
      1 1440 1440 1 ![288, 288, 1440, 1440, 288] ![5, 5, 1, 1, 5] reductionProjection12321 ![reductionProjection11920, reductionProjection12316, reductionProjection12162, reductionProjection12319, reductionProjection12320]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection12322 : Integer.Sparse (Fin 1613) := [(0, 1), (3, 4), (19, 16), (20, -1), (94, -11), (104, -16), (108, -16), (240, 48), (241, -32), (247, -32), (697, 48), (698, -16), (1250, -12), (1251, 1)]

def reductionPivot12322 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, 1, -2, 2], ![0, 0, -2, 2], ![0, 1, 0, -1], ![1, -2, 3, -2]]

theorem reductionSound12322 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode11045).moment H =
      Integer.Sparse.eval reductionProjection12322 (momentVector H) := by
  have heq : reductionPivot12322 = (fun u v => (normalNode11045).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode11045).moment H = injectiveMoment H reductionPivot12322 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode11045).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot12322 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot12322 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 720, 72, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot12322 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1083, oldProjection1216, reductionProjection8584, reductionProjection2598] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot12322 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw7844 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12322 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1083 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12322 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1083 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7844 hH))).trans (oldProjectionSound1083 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12322 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw7818 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12322 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1216 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12322 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1216 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7818 hH))).trans (oldProjectionSound1216 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12322 (2 : Fin 4)) = (normalNode11051).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12322 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8584 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12322 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8584 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8584 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12322 (3 : Fin 4)) = canonicalInput22649.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12322 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2598 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12322 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2598 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22649 hH))).trans (reductionSound2598 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode11045).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot12322 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode11045).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot12322 (j : Fin 4)))
      2 288 1440 10 ![720, 720, 72, 144] ![2, 2, 20, 10] reductionProjection12322 ![oldProjection1083, oldProjection1216, reductionProjection8584, reductionProjection2598]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection12323 : Integer.Sparse (Fin 1613) := [(19, -8), (93, -12), (94, 7), (691, 48), (1047, 48), (1052, 48), (1057, 48), (1219, 48), (1223, 48), (1251, 7)]

def reductionPivot12323 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-1, 1, -2, 2], ![0, 0, -2, 2], ![0, 0, 3, -3], ![1, -2, 1, 0]]

theorem reductionSound12323 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode11048).moment H =
      Integer.Sparse.eval reductionProjection12323 (momentVector H) := by
  have heq : reductionPivot12323 = (fun u v => (normalNode11048).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode11048).moment H = injectiveMoment H reductionPivot12323 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode11048).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot12323 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot12323 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 72, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot12323 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1376, oldProjection1369, reductionProjection701, reductionProjection11699] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot12323 (0 : Fin 4)) = canonicalInput23470.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12323 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1376 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12323 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1376 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23470 hH))).trans (oldProjectionSound1376 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12323 (1 : Fin 4)) = canonicalInput22680.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12323 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1369 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12323 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1369 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22680 hH))).trans (oldProjectionSound1369 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12323 (2 : Fin 4)) = (normalNode11053).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12323 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection701 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12323 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection701 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound701 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12323 (3 : Fin 4)) = (normalNode11049).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12323 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection11699 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12323 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection11699 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound11699 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode11048).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot12323 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode11048).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot12323 (j : Fin 4)))
      2 288 288 2 ![144, 144, 72, 144] ![2, 2, 4, 2] reductionProjection12323 ![oldProjection1376, oldProjection1369, reductionProjection701, reductionProjection11699]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection12324 : Integer.Sparse (Fin 1613) := [(0, 14), (3, -80), (4, 5), (19, -180), (20, 25), (94, 105), (104, 80), (108, 160), (240, -240), (241, 160), (246, 80), (247, 320), (697, -240), (698, 320), (704, 240), (1227, 80), (1250, 60), (1251, 15)]

def reductionPivot12324 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, 1, -2, 2], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -2, 3, -2]]

theorem reductionSound12324 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode11055).moment H =
      Integer.Sparse.eval reductionProjection12324 (momentVector H) := by
  have heq : reductionPivot12324 = (fun u v => (normalNode11055).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode11055).moment H = injectiveMoment H reductionPivot12324 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode11055).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot12324 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot12324 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 288, 720, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot12324 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection12224, reductionProjection12322, oldProjection1216, reductionProjection8617, reductionProjection12206] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot12324 (0 : Fin 5)) = (normalNode10992).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12324 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection12224 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12324 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection12224 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound12224 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12324 (1 : Fin 5)) = (normalNode11045).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12324 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection12322 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12324 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection12322 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound12322 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12324 (2 : Fin 5)) = canonicalInput22653.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12324 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1216 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12324 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1216 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22653 hH))).trans (oldProjectionSound1216 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12324 (3 : Fin 5)) = canonicalInput22654.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12324 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8617 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12324 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8617 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22654 hH))).trans (reductionSound8617 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12324 (4 : Fin 5)) = (normalNode11059).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12324 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection12206 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12324 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection12206 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound12206 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode11055).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot12324 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode11055).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot12324 (j : Fin 5)))
      1 1440 1440 1 ![1440, 288, 720, 1440, 1440] ![1, 5, 2, 1, 1] reductionProjection12324 ![reductionProjection12224, reductionProjection12322, oldProjection1216, reductionProjection8617, reductionProjection12206]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection12325 : Integer.Sparse (Fin 1613) := [(0, -3), (19, 20), (94, -10), (241, -160), (243, -80), (698, -480), (1059, -80), (1226, -160), (1227, -160), (1251, 45)]

def reductionPivot12325 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, 1, -2, 2], ![0, 0, 2, -2], ![0, 1, 0, -1], ![1, -2, 1, 0]]

theorem reductionSound12325 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode11062).moment H =
      Integer.Sparse.eval reductionProjection12325 (momentVector H) := by
  have heq : reductionPivot12325 = (fun u v => (normalNode11062).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode11062).moment H = injectiveMoment H reductionPivot12325 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode11062).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot12325 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot12325 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![36, 720, 360, 360] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot12325 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection803, oldProjection1047, oldProjection1316, oldProjection840] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot12325 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw7782 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12325 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection803 (momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12325 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection803 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7782 hH))).trans (oldProjectionSound803 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12325 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw7822 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12325 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1047 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12325 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1047 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7822 hH))).trans (oldProjectionSound1047 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12325 (2 : Fin 4)) = canonicalInput22671.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12325 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1316 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12325 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1316 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22671 hH))).trans (oldProjectionSound1316 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12325 (3 : Fin 4)) = canonicalInput22672.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12325 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection840 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12325 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection840 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22672 hH))).trans (oldProjectionSound840 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode11062).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot12325 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode11062).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot12325 (j : Fin 4)))
      2 1440 1440 2 ![36, 720, 360, 360] ![40, 2, 4, 4] reductionProjection12325 ![oldProjection803, oldProjection1047, oldProjection1316, oldProjection840]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection12326 : Integer.Sparse (Fin 1613) := [(0, -1), (3, -20), (19, -40), (20, 20), (93, 60), (94, -70), (105, 240), (106, 80), (241, 320), (243, 1120), (691, -240), (698, 1040), (700, 480), (704, 80), (1047, -480), (1052, -240), (1057, -240), (1059, 160), (1219, -480), (1223, -240), (1225, 240), (1226, 640), (1227, 240), (1251, -65)]

def reductionPivot12326 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, 1, -2, 2], ![0, 0, -1, 1], ![0, 0, 3, -3], ![0, 1, 0, -1], ![1, -2, 1, 0]]

theorem reductionSound12326 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode11056).moment H =
      Integer.Sparse.eval reductionProjection12326 (momentVector H) := by
  have heq : reductionPivot12326 = (fun u v => (normalNode11056).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode11056).moment H = injectiveMoment H reductionPivot12326 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode11056).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot12326 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot12326 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![72, 288, 1440, 720, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot12326 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection12304, reductionProjection12323, reductionProjection12325, reductionProjection9728, reductionProjection12317] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot12326 (0 : Fin 5)) = (normalNode10995).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12326 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection12304 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12326 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection12304 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound12304 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12326 (1 : Fin 5)) = (normalNode11048).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12326 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection12323 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12326 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection12323 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound12323 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12326 (2 : Fin 5)) = (normalNode11062).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12326 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection12325 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12326 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection12325 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound12325 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12326 (3 : Fin 5)) = canonicalInput22656.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12326 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9728 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12326 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9728 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22656 hH))).trans (reductionSound9728 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12326 (4 : Fin 5)) = (normalNode11063).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12326 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection12317 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12326 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection12317 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound12317 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode11056).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot12326 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode11056).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot12326 (j : Fin 5)))
      1 1440 1440 1 ![72, 288, 1440, 720, 1440] ![20, 5, 1, 2, 1] reductionProjection12326 ![reductionProjection12304, reductionProjection12323, reductionProjection12325, reductionProjection9728, reductionProjection12317]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection12327 : Integer.Sparse (Fin 1613) := [(0, 3), (19, 20), (94, -20), (243, -80), (697, 240), (698, -320), (700, -160), (704, -80), (1058, 240), (1059, -160), (1226, -80), (1250, -60), (1251, 25)]

def reductionPivot12327 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, 1, -2, 2], ![0, 0, 2, -2], ![0, 1, 0, -1], ![1, -2, -1, 2]]

theorem reductionSound12327 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode11068).moment H =
      Integer.Sparse.eval reductionProjection12327 (momentVector H) := by
  have heq : reductionPivot12327 = (fun u v => (normalNode11068).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode11068).moment H = injectiveMoment H reductionPivot12327 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode11068).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot12327 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot12327 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 72, 720, 360] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot12327 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection837, oldProjection1337, reductionProjection776, oldProjection840] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot12327 (0 : Fin 4)) = canonicalInput22778.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12327 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection837 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12327 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection837 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22778 hH))).trans (oldProjectionSound837 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12327 (1 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1337⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12327 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1337 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12327 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1337 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1337 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12327 (2 : Fin 4)) = (normalNode11072).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12327 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection776 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12327 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection776 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound776 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12327 (3 : Fin 4)) = canonicalInput22672.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12327 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection840 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12327 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection840 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22672 hH))).trans (oldProjectionSound840 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode11068).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot12327 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode11068).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot12327 (j : Fin 4)))
      2 1440 1440 2 ![144, 72, 720, 360] ![10, 20, 2, 4] reductionProjection12327 ![oldProjection837, oldProjection1337, reductionProjection776, oldProjection840]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection12328 : Integer.Sparse (Fin 1613) := [(0, 2), (19, -12), (94, 33), (243, 48), (697, -144), (698, 336), (700, 64), (704, 48), (1058, -144), (1059, 96), (1226, 96), (1227, 144), (1250, 36), (1251, -69)]

def reductionPivot12328 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, 1, -2, 2], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -2, -1, 2]]

theorem reductionSound12328 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode11066).moment H =
      Integer.Sparse.eval reductionProjection12328 (momentVector H) := by
  have heq : reductionPivot12328 = (fun u v => (normalNode11066).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode11066).moment H = injectiveMoment H reductionPivot12328 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode11066).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot12328 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot12328 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 1440, 1440, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot12328 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2647, reductionProjection12327, reductionProjection12327, reductionProjection9604, oldProjection2450] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot12328 (0 : Fin 5)) = canonicalInput22773.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12328 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2647 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12328 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2647 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22773 hH))).trans (oldProjectionSound2647 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12328 (1 : Fin 5)) = canonicalInput22668.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12328 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection12327 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12328 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection12327 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22668 hH))).trans (reductionSound12327 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12328 (2 : Fin 5)) = (normalNode11068).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12328 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection12327 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12328 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection12327 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound12327 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12328 (3 : Fin 5)) = (normalNode11067).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12328 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9604 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12328 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9604 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9604 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12328 (4 : Fin 5)) = canonicalInput22663.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12328 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2450 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12328 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2450 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22663 hH))).trans (oldProjectionSound2450 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode11066).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot12328 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode11066).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot12328 (j : Fin 5)))
      1 288 1440 5 ![288, 1440, 1440, 1440, 1440] ![5, 1, 1, 1, 1] reductionProjection12328 ![oldProjection2647, reductionProjection12327, reductionProjection12327, reductionProjection9604, oldProjection2450]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection12329 : Integer.Sparse (Fin 1613) := [(19, 16), (20, -3), (94, -9), (243, -32), (700, -16), (704, -16), (1226, -16), (1251, -2)]

def reductionPivot12329 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-1, 1, -1, 1], ![0, -1, -2, 3], ![0, 0, 3, -3], ![1, -1, 0, 0]]

theorem reductionSound12329 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode11085).moment H =
      Integer.Sparse.eval reductionProjection12329 (momentVector H) := by
  have heq : reductionPivot12329 = (fun u v => (normalNode11085).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode11085).moment H = injectiveMoment H reductionPivot12329 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode11085).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot12329 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot12329 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 144, 72] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot12329 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1355, oldProjection1345, oldProjection1340, reductionProjection7777] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot12329 (0 : Fin 4)) = canonicalInput23483.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12329 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1355 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12329 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1355 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23483 hH))).trans (oldProjectionSound1355 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12329 (1 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1345⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12329 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1345 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12329 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1345 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1345 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12329 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1340⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12329 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1340 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12329 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1340 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1340 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12329 (3 : Fin 4)) = canonicalInput22741.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12329 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection7777 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12329 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection7777 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22741 hH))).trans (reductionSound7777 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode11085).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot12329 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode11085).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot12329 (j : Fin 4)))
      2 288 288 2 ![144, 144, 144, 72] ![2, 2, 2, 4] reductionProjection12329 ![oldProjection1355, oldProjection1345, oldProjection1340, reductionProjection7777]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection12330 : Integer.Sparse (Fin 1613) := [(3, 4), (19, 4), (20, 3), (94, 5), (243, -16), (244, -16), (701, -16), (703, -16), (704, -16), (1251, -2)]

def reductionPivot12330 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, 1, -1, 1], ![0, -1, -2, 3], ![0, 0, 4, -4], ![1, -1, 0, 0]]

theorem reductionSound12330 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode11086).moment H =
      Integer.Sparse.eval reductionProjection12330 (momentVector H) := by
  have heq : reductionPivot12330 = (fun u v => (normalNode11086).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode11086).moment H = injectiveMoment H reductionPivot12330 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode11086).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot12330 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot12330 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 36, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot12330 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection7516, reductionProjection9402, oldProjection1340, oldProjection1228] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot12330 (0 : Fin 4)) = canonicalInput23466.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12330 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection7516 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12330 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection7516 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23466 hH))).trans (reductionSound7516 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12330 (1 : Fin 4)) = (normalNode11112).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12330 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9402 (momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12330 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9402 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9402 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12330 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1340⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12330 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1340 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12330 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1340 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1340 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12330 (3 : Fin 4)) = canonicalInput22742.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12330 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1228 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12330 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1228 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22742 hH))).trans (oldProjectionSound1228 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode11086).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot12330 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode11086).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot12330 (j : Fin 4)))
      2 288 288 2 ![144, 36, 144, 144] ![2, 8, 2, 2] reductionProjection12330 ![reductionProjection7516, reductionProjection9402, oldProjection1340, oldProjection1228]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection12331 : Integer.Sparse (Fin 1613) := [(0, 11), (19, -20), (20, 5), (94, 15), (243, 80), (698, 960), (1058, -240), (1226, 480), (1227, 480), (1251, -265)]

def reductionPivot12331 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-1, 1, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 2, -3], ![1, -1, 0, 0]]

theorem reductionSound12331 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode11098).moment H =
      Integer.Sparse.eval reductionProjection12331 (momentVector H) := by
  have heq : reductionPivot12331 = (fun u v => (normalNode11098).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode11098).moment H = injectiveMoment H reductionPivot12331 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode11098).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot12331 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot12331 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 1440, 1440, 1440, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot12331 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2708, oldProjection2627, oldProjection2627, oldProjection2842, oldProjection2844] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot12331 (0 : Fin 5)) = canonicalInput20947.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12331 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2708 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12331 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2708 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20947 hH))).trans (oldProjectionSound2708 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12331 (1 : Fin 5)) = canonicalInput22753.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12331 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2627 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12331 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2627 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22753 hH))).trans (oldProjectionSound2627 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12331 (2 : Fin 5)) = canonicalInput22768.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12331 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection2627 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12331 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection2627 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22768 hH))).trans (oldProjectionSound2627 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12331 (3 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2842⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12331 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2842 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12331 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2842 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2842 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12331 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2844⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12331 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2844 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12331 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2844 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2844 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode11098).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot12331 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode11098).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot12331 (j : Fin 5)))
      1 1440 1440 1 ![720, 1440, 1440, 1440, 288] ![2, 1, 1, 1, 5] reductionProjection12331 ![oldProjection2708, oldProjection2627, oldProjection2627, oldProjection2842, oldProjection2844]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection12332 : Integer.Sparse (Fin 1613) := [(0, -3), (3, -20), (19, -200), (20, 25), (94, -5), (105, 80), (108, 80), (241, 80), (243, 560), (698, 160), (700, 160), (704, 80), (1047, -240), (1225, 80), (1226, 320), (1251, -35)]

def reductionPivot12332 : Matrix (Fin 6) (Fin 4) ℤ := ![![-1, 1, 0, 0], ![0, -1, -2, 3], ![0, 0, -1, 1], ![0, 0, 3, -3], ![0, 1, 0, -1], ![1, -1, 0, 0]]

theorem reductionSound12332 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode11131).moment H =
      Integer.Sparse.eval reductionProjection12332 (momentVector H) := by
  have heq : reductionPivot12332 = (fun u v => (normalNode11131).entries (OAI.MUB6.Certificate.PairSemantics.permutation151 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode11131).moment H = injectiveMoment H reductionPivot12332 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode11131).entries OAI.MUB6.Certificate.PairSemantics.permutation151)).symm
  have hshape : reductionPivot12332 0 = Pi.single (1 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot12332 1 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 288, 1440, 288, 48] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot12332 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection11913, reductionProjection12329, reductionProjection12116, reductionProjection9169, oldProjection269] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot12332 (0 : Fin 5)) = (normalNode9955).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12332 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11913 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12332 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11913 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound11913 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12332 (1 : Fin 5)) = canonicalInput24574.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12332 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection12329 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12332 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection12329 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24574 hH))).trans (reductionSound12329 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12332 (2 : Fin 5)) = canonicalInput24603.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12332 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection12116 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12332 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection12116 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24603 hH))).trans (reductionSound12116 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12332 (3 : Fin 5)) = canonicalInput24607.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12332 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9169 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12332 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9169 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24607 hH))).trans (reductionSound9169 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12332 (4 : Fin 5)) = canonicalInput24608.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12332 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection269 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12332 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection269 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24608 hH))).trans (oldProjectionSound269 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode11131).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot12332 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode11131).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot12332 (j : Fin 5)))
      1 1440 1440 1 ![1440, 288, 1440, 288, 48] ![1, 5, 1, 5, 30] reductionProjection12332 ![reductionProjection11913, reductionProjection12329, reductionProjection12116, reductionProjection9169, oldProjection269]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection12333 : Integer.Sparse (Fin 1613) := [(3, -24), (4, 3), (19, -32), (20, -5), (94, -11), (106, 32), (108, 16), (243, 80), (244, 64), (246, 16), (700, 16), (701, 32), (703, 32), (704, 32), (1214, -48), (1225, 16), (1226, 16), (1251, 5)]

def reductionPivot12333 : Matrix (Fin 6) (Fin 4) ℤ := ![![-1, 1, 0, 0], ![0, -1, -2, 3], ![0, 0, -1, 1], ![0, 0, 4, -4], ![0, 1, -1, 0], ![1, -1, 0, 0]]

theorem reductionSound12333 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode11132).moment H =
      Integer.Sparse.eval reductionProjection12333 (momentVector H) := by
  have heq : reductionPivot12333 = (fun u v => (normalNode11132).entries (OAI.MUB6.Certificate.PairSemantics.permutation151 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode11132).moment H = injectiveMoment H reductionPivot12333 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode11132).entries OAI.MUB6.Certificate.PairSemantics.permutation151)).symm
  have hshape : reductionPivot12333 0 = Pi.single (1 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot12333 1 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 288, 144, 288, 48] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot12333 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection11920, reductionProjection12330, reductionProjection12288, reductionProjection9121, oldProjection270] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot12333 (0 : Fin 5)) = (normalNode9956).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12333 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11920 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12333 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11920 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound11920 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12333 (1 : Fin 5)) = canonicalInput24575.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12333 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection12330 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12333 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection12330 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24575 hH))).trans (reductionSound12330 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12333 (2 : Fin 5)) = canonicalInput24604.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12333 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection12288 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12333 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection12288 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24604 hH))).trans (reductionSound12288 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12333 (3 : Fin 5)) = canonicalInput24609.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12333 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9121 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12333 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9121 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24609 hH))).trans (reductionSound9121 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12333 (4 : Fin 5)) = canonicalInput24610.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12333 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection270 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12333 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection270 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24610 hH))).trans (oldProjectionSound270 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode11132).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot12333 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode11132).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot12333 (j : Fin 5)))
      1 288 288 1 ![288, 288, 144, 288, 48] ![1, 1, 2, 1, 6] reductionProjection12333 ![reductionProjection11920, reductionProjection12330, reductionProjection12288, reductionProjection9121, oldProjection270]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection12334 : Integer.Sparse (Fin 1613) := [(0, 3), (20, -5), (94, -35), (104, -80), (108, -80), (241, -80), (247, -80), (698, -80), (704, -80), (1251, -5)]

def reductionPivot12334 : Matrix (Fin 5) (Fin 4) ℤ := ![![-1, 1, 0, 0], ![0, -1, 0, 1], ![0, 0, 2, -2], ![0, 1, 1, -2], ![1, -1, -3, 3]]

theorem reductionSound12334 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode11141).moment H =
      Integer.Sparse.eval reductionProjection12334 (momentVector H) := by
  have heq : reductionPivot12334 = (fun u v => (normalNode11141).entries (OAI.MUB6.Certificate.PairSemantics.permutation33 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode11141).moment H = injectiveMoment H reductionPivot12334 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode11141).entries OAI.MUB6.Certificate.PairSemantics.permutation33)).symm
  have hshape : reductionPivot12334 0 = Pi.single (1 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot12334 1 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 720, 144, 48] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot12334 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1252, oldProjection1367, oldProjection1317, oldProjection280] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot12334 (0 : Fin 4)) = canonicalInput21005.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12334 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1252 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12334 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1252 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound21005 hH))).trans (oldProjectionSound1252 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12334 (1 : Fin 4)) = canonicalInput25532.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12334 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1367 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12334 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1367 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25532 hH))).trans (oldProjectionSound1367 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12334 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw8490 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12334 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1317 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12334 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1317 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical8490 hH))).trans (oldProjectionSound1317 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12334 (3 : Fin 4)) = canonicalInput26076.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12334 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection280 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12334 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection280 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26076 hH))).trans (oldProjectionSound280 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode11141).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot12334 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode11141).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot12334 (j : Fin 4)))
      2 1440 1440 2 ![720, 720, 144, 48] ![2, 2, 10, 30] reductionProjection12334 ![oldProjection1252, oldProjection1367, oldProjection1317, oldProjection280]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection12335 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -12), (20, 5), (94, -2), (104, 16), (108, 16), (241, 16), (243, 16), (247, 16), (691, -48), (698, 32), (700, 32), (704, 48), (1047, -48), (1052, -48), (1058, -48), (1219, -48), (1223, -48), (1251, -2)]

def reductionPivot12335 : Matrix (Fin 6) (Fin 4) ℤ := ![![-1, 1, 0, 0], ![0, -1, -1, 2], ![0, 0, -2, 2], ![0, 0, 3, -3], ![0, 1, 0, -1], ![1, -1, 0, 0]]

theorem reductionSound12335 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode11137).moment H =
      Integer.Sparse.eval reductionProjection12335 (momentVector H) := by
  have heq : reductionPivot12335 = (fun u v => (normalNode11137).entries (OAI.MUB6.Certificate.PairSemantics.permutation151 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode11137).moment H = injectiveMoment H reductionPivot12335 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode11137).entries OAI.MUB6.Certificate.PairSemantics.permutation151)).symm
  have hshape : reductionPivot12335 0 = Pi.single (1 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot12335 1 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 1440, 6, 48] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot12335 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection7089, reductionProjection12315, reductionProjection12334, reductionProjection2726, oldProjection280] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot12335 (0 : Fin 5)) = (normalNode10315).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12335 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7089 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12335 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7089 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound7089 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12335 (1 : Fin 5)) = canonicalInput24708.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12335 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection12315 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12335 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection12315 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24708 hH))).trans (reductionSound12315 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12335 (2 : Fin 5)) = canonicalInput24746.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12335 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection12334 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12335 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection12334 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24746 hH))).trans (reductionSound12334 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12335 (3 : Fin 5)) = canonicalInput24749.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12335 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2726 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12335 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2726 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24749 hH))).trans (reductionSound2726 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12335 (4 : Fin 5)) = canonicalInput24750.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12335 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection280 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12335 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection280 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24750 hH))).trans (oldProjectionSound280 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode11137).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot12335 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode11137).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot12335 (j : Fin 5)))
      1 288 1440 5 ![1440, 1440, 1440, 6, 48] ![1, 1, 1, 240, 30] reductionProjection12335 ![reductionProjection7089, reductionProjection12315, reductionProjection12334, reductionProjection2726, oldProjection280]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection12336 : Integer.Sparse (Fin 1613) := [(3, 1), (19, 1), (105, -4), (106, -8), (243, -8), (244, -4), (1045, 24), (1225, -8)]

def reductionPivot12336 : Matrix (Fin 5) (Fin 4) ℤ := ![![-1, 1, 0, 0], ![0, 0, -4, 4], ![0, 0, 3, -3], ![0, 1, 0, -1], ![1, -2, 1, 0]]

theorem reductionSound12336 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * (normalNode11148).moment H =
      Integer.Sparse.eval reductionProjection12336 (momentVector H) := by
  have heq : reductionPivot12336 = (fun u v => (normalNode11148).entries (OAI.MUB6.Certificate.PairSemantics.permutation33 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode11148).moment H = injectiveMoment H reductionPivot12336 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode11148).entries OAI.MUB6.Certificate.PairSemantics.permutation33)).symm
  have hshape : reductionPivot12336 0 = Pi.single (1 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot12336 1 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![36, 36, 24, 8] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot12336 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection9020, reductionProjection9152, oldProjection1373, oldProjection290] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot12336 (0 : Fin 4)) = canonicalInput22506.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12336 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9020 (momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12336 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9020 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22506 hH))).trans (reductionSound9020 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12336 (1 : Fin 4)) = canonicalInput27498.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12336 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9152 (momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12336 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9152 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27498 hH))).trans (reductionSound9152 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12336 (2 : Fin 4)) = canonicalInput27517.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12336 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1373 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12336 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1373 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27517 hH))).trans (oldProjectionSound1373 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12336 (3 : Fin 4)) = canonicalInput27518.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((8 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12336 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection290 (momentVector H)
      have hh : (8 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12336 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection290 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (8 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27518 hH))).trans (oldProjectionSound290 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode11148).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot12336 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode11148).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot12336 (j : Fin 4)))
      2 72 72 2 ![36, 36, 24, 8] ![2, 2, 3, 9] reductionProjection12336 ![reductionProjection9020, reductionProjection9152, oldProjection1373, oldProjection290]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection12337 : Integer.Sparse (Fin 1613) := [(3, -12), (4, 3), (19, -12), (20, -1), (94, -1), (105, 16), (106, 32), (243, 32), (244, 16), (1045, -48), (1225, 32), (1251, 3)]

def reductionPivot12337 : Matrix (Fin 6) (Fin 4) ℤ := ![![-1, 1, 0, 0], ![0, -1, 0, 1], ![0, 0, -3, 3], ![0, 0, 4, -4], ![0, 1, -1, 0], ![1, -1, 0, 0]]

theorem reductionSound12337 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode11138).moment H =
      Integer.Sparse.eval reductionProjection12337 (momentVector H) := by
  have heq : reductionPivot12337 = (fun u v => (normalNode11138).entries (OAI.MUB6.Certificate.PairSemantics.permutation151 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode11138).moment H = injectiveMoment H reductionPivot12337 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode11138).entries OAI.MUB6.Certificate.PairSemantics.permutation151)).symm
  have hshape : reductionPivot12337 0 = Pi.single (1 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot12337 1 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 288, 288, 72, 8] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot12337 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection12218, reductionProjection12124, reductionProjection12287, reductionProjection12336, oldProjection290] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot12337 (0 : Fin 5)) = (normalNode10676).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12337 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection12218 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12337 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection12218 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound12218 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12337 (1 : Fin 5)) = canonicalInput25507.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12337 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection12124 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12337 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection12124 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25507 hH))).trans (reductionSound12124 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12337 (2 : Fin 5)) = canonicalInput25805.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12337 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection12287 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12337 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection12287 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25805 hH))).trans (reductionSound12287 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12337 (3 : Fin 5)) = canonicalInput25808.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12337 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection12336 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12337 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection12336 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25808 hH))).trans (reductionSound12336 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12337 (4 : Fin 5)) = canonicalInput25809.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((8 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12337 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection290 (momentVector H)
      have hh : (8 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12337 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection290 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (8 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25809 hH))).trans (oldProjectionSound290 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode11138).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot12337 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode11138).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot12337 (j : Fin 5)))
      1 144 288 2 ![288, 288, 288, 72, 8] ![1, 1, 1, 4, 36] reductionProjection12337 ![reductionProjection12218, reductionProjection12124, reductionProjection12287, reductionProjection12336, oldProjection290]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection12338 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 20), (20, -5), (94, -20), (106, -80), (243, -160), (244, -320), (692, 240), (698, -80), (700, -480), (701, -240), (1053, 240), (1059, -80), (1251, -20)]

def reductionPivot12338 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, 2, -2, 1], ![0, 0, -1, 1], ![0, 0, 4, -4], ![1, -2, 0, 1]]

theorem reductionSound12338 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode11208).moment H =
      Integer.Sparse.eval reductionProjection12338 (momentVector H) := by
  have heq : reductionPivot12338 = (fun u v => (normalNode11208).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode11208).moment H = injectiveMoment H reductionPivot12338 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode11208).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot12338 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot12338 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 720, 72] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot12338 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection8625, reductionProjection2226, oldProjection938, reductionProjection8835] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot12338 (0 : Fin 4)) = canonicalInput23462.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12338 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8625 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12338 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8625 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23462 hH))).trans (reductionSound8625 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12338 (1 : Fin 4)) = (normalNode11207).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12338 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2226 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12338 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2226 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2226 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12338 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw7962 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12338 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection938 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12338 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection938 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7962 hH))).trans (oldProjectionSound938 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12338 (3 : Fin 4)) = (normalNode11210).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12338 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8835 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12338 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8835 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8835 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode11208).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot12338 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode11208).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot12338 (j : Fin 4)))
      2 1440 1440 2 ![144, 144, 720, 72] ![10, 10, 2, 20] reductionProjection12338 ![reductionProjection8625, reductionProjection2226, oldProjection938, reductionProjection8835]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection12339 : Integer.Sparse (Fin 1613) := [(0, -2), (3, -40), (4, 5), (19, -320), (20, 45), (94, 140), (104, 80), (106, 80), (241, 80), (243, 480), (244, 640), (246, 160), (692, -240), (698, 400), (700, 800), (701, 720), (703, 160), (704, 800), (1053, -240), (1059, 80), (1061, -480), (1251, 90)]

def reductionPivot12339 : Matrix (Fin 6) (Fin 4) ℤ := ![![-1, 1, 0, 0], ![0, 0, -4, 4], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -2, 2, -1]]

theorem reductionSound12339 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode11143).moment H =
      Integer.Sparse.eval reductionProjection12339 (momentVector H) := by
  have heq : reductionPivot12339 = (fun u v => (normalNode11143).entries (OAI.MUB6.Certificate.PairSemantics.permutation151 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode11143).moment H = injectiveMoment H reductionPivot12339 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode11143).entries OAI.MUB6.Certificate.PairSemantics.permutation151)).symm
  have hshape : reductionPivot12339 0 = Pi.single (1 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot12339 1 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 1440, 1440, 480] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot12339 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection12232, reductionProjection8882, reductionProjection8882, reductionProjection12338, oldProjection1150] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot12339 (0 : Fin 5)) = (normalNode10937).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12339 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection12232 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12339 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection12232 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound12232 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12339 (1 : Fin 5)) = canonicalInput27492.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12339 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8882 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12339 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8882 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27492 hH))).trans (reductionSound8882 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12339 (2 : Fin 5)) = canonicalInput27505.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12339 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8882 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12339 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8882 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27505 hH))).trans (reductionSound8882 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12339 (3 : Fin 5)) = canonicalInput27509.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12339 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection12338 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12339 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection12338 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27509 hH))).trans (reductionSound12338 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12339 (4 : Fin 5)) = canonicalInput27510.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12339 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1150 (momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12339 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1150 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27510 hH))).trans (oldProjectionSound1150 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode11143).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot12339 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode11143).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot12339 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 1440, 1440, 480] ![1, 1, 1, 1, 3] reductionProjection12339 ![reductionProjection12232, reductionProjection8882, reductionProjection8882, reductionProjection12338, oldProjection1150]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection12340 : Integer.Sparse (Fin 1613) := [(0, 19), (94, 105), (697, -720), (698, 1440), (700, 320), (704, 240), (1059, 720), (1227, 720), (1251, -390)]

def reductionPivot12340 : Matrix (Fin 6) (Fin 4) ℤ := ![![-1, 1, 0, 0], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 1, -2], ![1, -2, 2, -1]]

theorem reductionSound12340 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode11161).moment H =
      Integer.Sparse.eval reductionProjection12340 (momentVector H) := by
  have heq : reductionPivot12340 = (fun u v => (normalNode11161).entries (OAI.MUB6.Certificate.PairSemantics.permutation151 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode11161).moment H = injectiveMoment H reductionPivot12340 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode11161).entries OAI.MUB6.Certificate.PairSemantics.permutation151)).symm
  have hshape : reductionPivot12340 0 = Pi.single (1 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot12340 1 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 1440, 144, 120] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot12340 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection8841, reductionProjection8841, reductionProjection8841, reductionProjection8884, oldProjection1153] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot12340 (0 : Fin 5)) = (normalNode11120).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12340 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8841 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12340 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8841 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8841 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12340 (1 : Fin 5)) = canonicalInput28031.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12340 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8841 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12340 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8841 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28031 hH))).trans (reductionSound8841 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12340 (2 : Fin 5)) = canonicalInput28206.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12340 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8841 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12340 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8841 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28206 hH))).trans (reductionSound8841 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12340 (3 : Fin 5)) = canonicalInput28248.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12340 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8884 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12340 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8884 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28248 hH))).trans (reductionSound8884 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12340 (4 : Fin 5)) = canonicalInput28265.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((120 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12340 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1153 (momentVector H)
      have hh : (120 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12340 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1153 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28265 hH))).trans (oldProjectionSound1153 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode11161).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot12340 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode11161).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot12340 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 1440, 144, 120] ![1, 1, 1, 10, 12] reductionProjection12340 ![reductionProjection8841, reductionProjection8841, reductionProjection8841, reductionProjection8884, oldProjection1153]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection12341 : Integer.Sparse (Fin 1613) := [(19, 6), (94, -5), (104, -8), (241, -16), (694, 24), (698, -24), (704, -8), (1055, 24), (1227, -8), (1250, -6), (1251, 3)]

def reductionPivot12341 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, 1, 2, -2], ![0, 0, -2, 2], ![0, 1, 0, -1], ![1, -2, -1, 2]]

theorem reductionSound12341 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode11183).moment H =
      Integer.Sparse.eval reductionProjection12341 (momentVector H) := by
  have heq : reductionPivot12341 = (fun u v => (normalNode11183).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode11183).moment H = injectiveMoment H reductionPivot12341 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode11183).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot12341 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot12341 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 720, 720, 360] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot12341 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1317, oldProjection1261, oldProjection1370, oldProjection1316] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot12341 (0 : Fin 4)) = canonicalInput23449.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12341 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1317 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12341 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1317 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23449 hH))).trans (oldProjectionSound1317 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12341 (1 : Fin 4)) = canonicalInput23406.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12341 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1261 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12341 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1261 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23406 hH))).trans (oldProjectionSound1261 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12341 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1370⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12341 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1370 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12341 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1370 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1370 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12341 (3 : Fin 4)) = canonicalInput23402.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12341 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1316 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12341 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1316 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23402 hH))).trans (oldProjectionSound1316 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode11183).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot12341 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode11183).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot12341 (j : Fin 4)))
      2 144 720 10 ![144, 720, 720, 360] ![5, 1, 1, 2] reductionProjection12341 ![oldProjection1317, oldProjection1261, oldProjection1370, oldProjection1316]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection12342 : Integer.Sparse (Fin 1613) := [(0, 8), (3, -20), (19, -140), (20, 20), (94, 85), (104, 80), (108, 80), (241, 160), (247, 240), (694, -240), (698, 400), (704, 160), (1055, -240), (1227, 160), (1250, 60), (1251, -15)]

def reductionPivot12342 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, 1, 2, -2], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -2, -1, 2]]

theorem reductionSound12342 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode11185).moment H =
      Integer.Sparse.eval reductionProjection12342 (momentVector H) := by
  have heq : reductionPivot12342 = (fun u v => (normalNode11185).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode11185).moment H = injectiveMoment H reductionPivot12342 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode11185).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot12342 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot12342 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 144, 720, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot12342 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2857, reductionProjection12341, oldProjection1261, reductionProjection12206, reductionProjection8617] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot12342 (0 : Fin 5)) = canonicalInput23351.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12342 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2857 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12342 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2857 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23351 hH))).trans (oldProjectionSound2857 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12342 (1 : Fin 5)) = (normalNode11183).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12342 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection12341 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12342 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection12341 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound12341 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12342 (2 : Fin 5)) = canonicalInput23404.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12342 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1261 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12342 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1261 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23404 hH))).trans (oldProjectionSound1261 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12342 (3 : Fin 5)) = canonicalInput23405.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12342 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection12206 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12342 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection12206 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23405 hH))).trans (reductionSound12206 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12342 (4 : Fin 5)) = (normalNode11187).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12342 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8617 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12342 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8617 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8617 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode11185).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot12342 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode11185).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot12342 (j : Fin 5)))
      1 1440 1440 1 ![720, 144, 720, 1440, 1440] ![2, 10, 2, 1, 1] reductionProjection12342 ![oldProjection2857, reductionProjection12341, oldProjection1261, reductionProjection12206, reductionProjection8617]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection12343 : Integer.Sparse (Fin 1613) := [(0, 2), (19, 60), (20, -10), (94, -15), (104, -80), (105, -80), (241, -240), (243, -240), (698, -320), (704, -80), (1226, -160), (1227, -80), (1251, 25)]

def reductionPivot12343 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, 1, 3, -3], ![0, 0, -2, 2], ![0, 1, 0, -1], ![1, -2, 0, 1]]

theorem reductionSound12343 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode11192).moment H =
      Integer.Sparse.eval reductionProjection12343 (momentVector H) := by
  have heq : reductionPivot12343 = (fun u v => (normalNode11192).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode11192).moment H = injectiveMoment H reductionPivot12343 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode11192).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot12343 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot12343 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![360, 72, 36, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot12343 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1316, reductionProjection7895, oldProjection803, oldProjection1317] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot12343 (0 : Fin 4)) = canonicalInput23402.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12343 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1316 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12343 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1316 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23402 hH))).trans (oldProjectionSound1316 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12343 (1 : Fin 4)) = (normalNode11191).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12343 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection7895 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12343 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection7895 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound7895 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12343 (2 : Fin 4)) = canonicalInput23448.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12343 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection803 (momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12343 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection803 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23448 hH))).trans (oldProjectionSound803 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12343 (3 : Fin 4)) = canonicalInput23449.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12343 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1317 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12343 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1317 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23449 hH))).trans (oldProjectionSound1317 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode11192).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot12343 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode11192).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot12343 (j : Fin 4)))
      2 1440 1440 2 ![360, 72, 36, 144] ![4, 20, 40, 10] reductionProjection12343 ![oldProjection1316, reductionProjection7895, oldProjection803, oldProjection1317]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection12344 : Integer.Sparse (Fin 1613) := [(0, 3), (3, -4), (19, -64), (20, 9), (94, 31), (104, 48), (105, 32), (241, 144), (243, 128), (698, 288), (704, 96), (1226, 96), (1227, 96), (1251, -45)]

def reductionPivot12344 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, 1, 3, -3], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -2, 0, 1]]

theorem reductionSound12344 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode11195).moment H =
      Integer.Sparse.eval reductionProjection12344 (momentVector H) := by
  have heq : reductionPivot12344 = (fun u v => (normalNode11195).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode11195).moment H = injectiveMoment H reductionPivot12344 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode11195).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot12344 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot12344 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 1440, 1440, 1440, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot12344 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2831, reductionProjection12343, reductionProjection12343, oldProjection2836, reductionProjection9597] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot12344 (0 : Fin 5)) = canonicalInput23403.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12344 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2831 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12344 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2831 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23403 hH))).trans (oldProjectionSound2831 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12344 (1 : Fin 5)) = (normalNode11192).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12344 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection12343 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12344 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection12343 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound12343 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12344 (2 : Fin 5)) = canonicalInput23450.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12344 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection12343 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12344 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection12343 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23450 hH))).trans (reductionSound12343 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12344 (3 : Fin 5)) = canonicalInput23451.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12344 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2836 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12344 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2836 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23451 hH))).trans (oldProjectionSound2836 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12344 (4 : Fin 5)) = (normalNode11196).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12344 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9597 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12344 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9597 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9597 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode11195).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot12344 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode11195).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot12344 (j : Fin 5)))
      1 288 1440 5 ![288, 1440, 1440, 1440, 288] ![5, 1, 1, 1, 5] reductionProjection12344 ![oldProjection2831, reductionProjection12343, reductionProjection12343, oldProjection2836, reductionProjection9597]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization
