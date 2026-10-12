import NoFourMUBs.Step2.SOS.Canonical226
import NoFourMUBs.Step2.SOS.Canonical228
import NoFourMUBs.Step2.SOS.Canonical304
import NoFourMUBs.Step2.SOS.Canonical305
import NoFourMUBs.Step2.SOS.Canonical306
import NoFourMUBs.Step2.SOS.Canonical307
import NoFourMUBs.Step2.SOS.Canonical314
import NoFourMUBs.Step2.SOS.Canonical352
import NoFourMUBs.Step2.SOS.Canonical353
import NoFourMUBs.Step2.SOS.Canonical384
import NoFourMUBs.Step2.SOS.Canonical417
import NoFourMUBs.Step2.SOS.Canonical420
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes21
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes018
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.OldProjections000
import NoFourMUBs.Step2.SOS.OldProjections003
import NoFourMUBs.Step2.SOS.OldProjections004
import NoFourMUBs.Step2.SOS.OldProjections009
import NoFourMUBs.Step2.SOS.OldProjections013
import NoFourMUBs.Step2.SOS.OldProjections014
import NoFourMUBs.Step2.SOS.OldProjections015
import NoFourMUBs.Step2.SOS.OldProjections016
import NoFourMUBs.Step2.SOS.OldProjections017
import NoFourMUBs.Step2.SOS.OldProjections018
import NoFourMUBs.Step2.SOS.OldProjections019
import NoFourMUBs.Step2.SOS.OldProjections023
import NoFourMUBs.Step2.SOS.OldProjections024
import NoFourMUBs.Step2.SOS.OldProjections025
import NoFourMUBs.Step2.SOS.OldProjections029
import NoFourMUBs.Step2.SOS.OldProjections030
import NoFourMUBs.Step2.SOS.OldProjections033
import NoFourMUBs.Step2.SOS.OldProjections035
import NoFourMUBs.Step2.SOS.OldProjections036
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions008
import NoFourMUBs.Step2.SOS.Reductions032
import NoFourMUBs.Step2.SOS.Reductions043
import NoFourMUBs.Step2.SOS.Reductions061
import NoFourMUBs.Step2.SOS.Reductions085
import NoFourMUBs.Step2.SOS.Reductions086
import NoFourMUBs.Step2.SOS.Reductions087
import NoFourMUBs.Step2.SOS.Reductions125
import NoFourMUBs.Step2.SOS.Reductions243
import NoFourMUBs.Step2.SOS.Reductions246
import NoFourMUBs.Step2.SOS.Reductions247
import NoFourMUBs.Step2.SOS.Reductions256
import NoFourMUBs.Step2.SOS.Reductions257
import NoFourMUBs.Step2.SOS.Reductions267
import NoFourMUBs.Step2.SOS.Reductions268
import NoFourMUBs.Step2.SOS.Reductions269
import NoFourMUBs.Step2.SOS.Reductions270
import NoFourMUBs.Step2.SOS.Reductions290
import NoFourMUBs.Step2.SOS.Reductions305
import NoFourMUBs.Step2.SOS.Reductions323
import NoFourMUBs.Step2.SOS.Reductions337
import NoFourMUBs.Step2.SOS.Reductions344
import NoFourMUBs.Step2.SOS.Reductions347
import NoFourMUBs.Step2.SOS.Reductions348
import NoFourMUBs.Step2.SOS.Reductions363
import NoFourMUBs.Step2.SOS.Reductions368
import NoFourMUBs.Step2.SOS.Reductions369
import NoFourMUBs.Step2.SOS.Reductions370
import NoFourMUBs.Step2.SOS.Reductions371
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical193
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical219
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical220
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical221
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical223
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical242
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical243
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes33
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes34
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes42
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection11904 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 10), (94, 10), (243, -40), (1226, -40), (1251, 35)]

def reductionPivot11904 : Matrix (Fin 5) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 1, 0], ![0, 1, 0, -1], ![0, 1, 2, -3], ![1, -1, -3, 3]]

theorem reductionSound11904 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode10647).moment H =
      Integer.Sparse.eval reductionProjection11904 (momentVector H) := by
  have heq : reductionPivot11904 = (fun u v => (normalNode10647).entries (OAI.MUB6.Certificate.PairSemantics.permutation33 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10647).moment H = injectiveMoment H reductionPivot11904 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10647).entries OAI.MUB6.Certificate.PairSemantics.permutation33)).symm
  have hshape : reductionPivot11904 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11904 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 72, 720, 24] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11904 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1128, reductionProjection7777, oldProjection1217, oldProjection243] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11904 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1128⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11904 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1128 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11904 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1128 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1128 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11904 (1 : Fin 4)) = canonicalInput26698.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11904 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection7777 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11904 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection7777 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26698 hH))).trans (reductionSound7777 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11904 (2 : Fin 4)) = canonicalInput26892.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11904 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1217 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11904 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1217 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26892 hH))).trans (oldProjectionSound1217 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11904 (3 : Fin 4)) = canonicalInput26894.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11904 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection243 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11904 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection243 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26894 hH))).trans (oldProjectionSound243 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10647).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11904 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10647).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11904 (j : Fin 4)))
      2 720 720 2 ![144, 72, 720, 24] ![5, 10, 1, 30] reductionProjection11904 ![oldProjection1128, reductionProjection7777, oldProjection1217, oldProjection243]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11905 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 40), (20, -5), (94, 80), (243, -80), (1226, -80), (1251, 20)]

def reductionPivot11905 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-1, 0, -2, 3], ![0, 0, 3, -3], ![0, 1, 0, -1], ![1, 0, -1, 0]]

theorem reductionSound11905 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode9902).moment H =
      Integer.Sparse.eval reductionProjection11905 (momentVector H) := by
  have heq : reductionPivot11905 = (fun u v => (normalNode9902).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9902).moment H = injectiveMoment H reductionPivot11905 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9902).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot11905 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11905 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 720, 16, 72] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11905 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection919, oldProjection1212, oldProjection58, reductionProjection7777] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11905 (0 : Fin 4)) = canonicalInput14607.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11905 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection919 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11905 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection919 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14607 hH))).trans (oldProjectionSound919 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11905 (1 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1212⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11905 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1212 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11905 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1212 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1212 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11905 (2 : Fin 4)) = canonicalInput19654.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((16 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11905 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection58 (momentVector H)
      have hh : (16 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11905 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection58 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19654 hH))).trans (oldProjectionSound58 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11905 (3 : Fin 4)) = (normalNode9973).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11905 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection7777 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11905 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection7777 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound7777 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9902).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11905 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9902).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11905 (j : Fin 4)))
      2 1440 1440 2 ![144, 720, 16, 72] ![10, 2, 90, 20] reductionProjection11905 ![oldProjection919, oldProjection1212, oldProjection58, reductionProjection7777]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11906 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -28), (94, -23), (243, 144), (698, 32), (700, 16), (704, 16), (1058, -48), (1206, 144), (1223, -48), (1225, 48), (1226, 96), (1250, 12), (1251, -18), (1321, -48), (1323, -48)]

def reductionPivot11906 : Matrix (Fin 6) (Fin 4) ℤ := ![![-1, 1, 0, 0], ![-1, 0, -2, 3], ![0, -1, 0, 1], ![0, 1, 0, -1], ![1, -1, 3, -3], ![1, 0, -1, 0]]

theorem reductionSound11906 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode9806).moment H =
      Integer.Sparse.eval reductionProjection11906 (momentVector H) := by
  have heq : reductionPivot11906 = (fun u v => (normalNode9806).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9806).moment H = injectiveMoment H reductionPivot11906 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9806).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot11906 0 = Pi.single (1 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11906 1 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![72, 720, 288, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11906 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection8547, reductionProjection11904, reductionProjection8219, reductionProjection11905, reductionProjection11867] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11906 (0 : Fin 5)) = (normalNode4858).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11906 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8547 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11906 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8547 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8547 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11906 (1 : Fin 5)) = canonicalInput19456.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11906 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11904 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11906 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11904 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19456 hH))).trans (reductionSound11904 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11906 (2 : Fin 5)) = canonicalInput19567.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11906 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8219 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11906 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8219 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19567 hH))).trans (reductionSound8219 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11906 (3 : Fin 5)) = canonicalInput19571.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11906 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11905 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11906 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11905 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19571 hH))).trans (reductionSound11905 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11906 (4 : Fin 5)) = canonicalInput19572.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11906 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11867 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11906 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11867 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19572 hH))).trans (reductionSound11867 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode9806).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11906 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9806).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11906 (j : Fin 5)))
      1 288 1440 5 ![72, 720, 288, 1440, 1440] ![20, 2, 5, 1, 1] reductionProjection11906 ![reductionProjection8547, reductionProjection11904, reductionProjection8219, reductionProjection11905, reductionProjection11867]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11907 : Integer.Sparse (Fin 1613) := [(0, 3), (19, 20), (20, -5), (94, 30), (698, -160), (1226, -80), (1227, -80), (1251, 20)]

def reductionPivot11907 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, 0, -2, 3], ![0, -1, 2, -1], ![0, 1, -1, 0], ![1, 0, 0, -1]]

theorem reductionSound11907 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode9928).moment H =
      Integer.Sparse.eval reductionProjection11907 (momentVector H) := by
  have heq : reductionPivot11907 = (fun u v => (normalNode9928).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9928).moment H = injectiveMoment H reductionPivot11907 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9928).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot11907 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11907 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 720, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11907 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1245, oldProjection1211, oldProjection974, oldProjection1206] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11907 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1245⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11907 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1245 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11907 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1245 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1245 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11907 (1 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1211⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11907 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1211 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11907 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1211 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1211 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11907 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw7081 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11907 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection974 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11907 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection974 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7081 hH))).trans (oldProjectionSound974 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11907 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1206⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11907 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1206 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11907 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1206 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1206 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9928).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11907 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9928).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11907 (j : Fin 4)))
      2 1440 1440 2 ![144, 144, 720, 720] ![10, 10, 2, 2] reductionProjection11907 ![oldProjection1245, oldProjection1211, oldProjection974, oldProjection1206]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11908 : Integer.Sparse (Fin 1613) := [(0, 1), (19, -120), (20, 5), (94, 115), (241, 80), (247, 240), (549, 720), (694, -240), (698, 880), (704, 80), (1055, -240), (1139, 720), (1204, 720), (1219, -480), (1226, 320), (1227, 560), (1251, -55), (1319, -240)]

def reductionPivot11908 : Matrix (Fin 6) (Fin 4) ℤ := ![![-1, 1, 0, 0], ![-1, 0, -2, 3], ![0, -1, 2, -1], ![0, 1, -1, 0], ![1, -1, 1, -1], ![1, 0, 0, -1]]

theorem reductionSound11908 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode9807).moment H =
      Integer.Sparse.eval reductionProjection11908 (momentVector H) := by
  have heq : reductionPivot11908 = (fun u v => (normalNode9807).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9807).moment H = injectiveMoment H reductionPivot11908 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9807).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot11908 0 = Pi.single (1 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11908 1 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 720, 288, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11908 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2169, oldProjection2772, reductionProjection2739, reductionProjection11907, reductionProjection11141] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11908 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2169⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11908 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2169 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11908 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2169 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2169 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11908 (1 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw7044 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11908 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2772 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11908 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2772 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7044 hH))).trans (oldProjectionSound2772 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11908 (2 : Fin 5)) = canonicalInput19590.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11908 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2739 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11908 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2739 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19590 hH))).trans (reductionSound2739 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11908 (3 : Fin 5)) = canonicalInput19592.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11908 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11907 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11908 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11907 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19592 hH))).trans (reductionSound11907 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11908 (4 : Fin 5)) = canonicalInput19593.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11908 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11141 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11908 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11141 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19593 hH))).trans (reductionSound11141 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode9807).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11908 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9807).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11908 (j : Fin 5)))
      1 1440 1440 1 ![1440, 720, 288, 1440, 1440] ![1, 2, 5, 1, 1] reductionProjection11908 ![oldProjection2169, oldProjection2772, reductionProjection2739, reductionProjection11907, reductionProjection11141]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11909 : Integer.Sparse (Fin 1613) := [(0, -3), (94, -5), (698, -40), (1226, -20), (1227, -20), (1251, 10)]

def reductionPivot11909 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, 0, -2, 3], ![0, -1, 2, -1], ![0, 1, 0, -1], ![1, 0, -1, 0]]

theorem reductionSound11909 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * (normalNode9929).moment H =
      Integer.Sparse.eval reductionProjection11909 (momentVector H) := by
  have heq : reductionPivot11909 = (fun u v => (normalNode9929).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9929).moment H = injectiveMoment H reductionPivot11909 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9929).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot11909 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11909 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 720, 720, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11909 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1246, oldProjection1212, oldProjection1207, oldProjection974] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11909 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1246⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11909 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1246 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11909 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1246 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1246 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11909 (1 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1212⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11909 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1212 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11909 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1212 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1212 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11909 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1207⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11909 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1207 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11909 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1207 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1207 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11909 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw7081 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11909 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection974 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11909 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection974 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7081 hH))).trans (oldProjectionSound974 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9929).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11909 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9929).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11909 (j : Fin 4)))
      2 360 720 4 ![144, 720, 720, 720] ![5, 1, 1, 1] reductionProjection11909 ![oldProjection1246, oldProjection1212, oldProjection1207, oldProjection974]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11910 : Integer.Sparse (Fin 1613) := [(0, 9), (19, -80), (94, 90), (241, 160), (247, 320), (426, 720), (434, 720), (549, 720), (698, 960), (700, 80), (1055, -240), (1219, -720), (1226, 400), (1227, 560), (1251, -135), (1388, -240)]

def reductionPivot11910 : Matrix (Fin 6) (Fin 4) ℤ := ![![-1, 1, 0, 0], ![-1, 0, -2, 3], ![0, -1, 2, -1], ![0, 1, 0, -1], ![1, -1, 1, -1], ![1, 0, -1, 0]]

theorem reductionSound11910 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode9808).moment H =
      Integer.Sparse.eval reductionProjection11910 (momentVector H) := by
  have heq : reductionPivot11910 = (fun u v => (normalNode9808).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9808).moment H = injectiveMoment H reductionPivot11910 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9808).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot11910 0 = Pi.single (1 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11910 1 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 720, 1440, 360, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11910 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2171, oldProjection2774, reductionProjection2793, reductionProjection11909, reductionProjection11141] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11910 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2171⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11910 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2171 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11910 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2171 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2171 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11910 (1 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw7045 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11910 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2774 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11910 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2774 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7045 hH))).trans (oldProjectionSound2774 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11910 (2 : Fin 5)) = canonicalInput19591.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11910 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2793 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11910 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2793 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19591 hH))).trans (reductionSound2793 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11910 (3 : Fin 5)) = canonicalInput19594.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11910 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11909 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11910 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11909 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19594 hH))).trans (reductionSound11909 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11910 (4 : Fin 5)) = canonicalInput19596.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11910 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11141 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11910 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11141 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19596 hH))).trans (reductionSound11141 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode9808).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11910 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9808).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11910 (j : Fin 5)))
      1 1440 1440 1 ![1440, 720, 1440, 360, 1440] ![1, 2, 1, 4, 1] reductionProjection11910 ![oldProjection2171, oldProjection2774, reductionProjection2793, reductionProjection11909, reductionProjection11141]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11911 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -16), (20, 4), (93, 12), (94, 1), (241, 32), (243, 96), (698, 128), (1047, -96), (1203, 144), (1251, -10), (1323, -48)]

def reductionPivot11911 : Matrix (Fin 6) (Fin 4) ℤ := ![![-1, 1, 0, 0], ![-1, 0, -2, 3], ![0, -1, 3, -2], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, 0, -1]]

theorem reductionSound11911 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode9809).moment H =
      Integer.Sparse.eval reductionProjection11911 (momentVector H) := by
  have heq : reductionPivot11911 = (fun u v => (normalNode9809).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9809).moment H = injectiveMoment H reductionPivot11911 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9809).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot11911 0 = Pi.single (1 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11911 1 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 1440, 288, 144, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11911 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2175, oldProjection2773, reductionProjection281, oldProjection1211, reductionProjection11104] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11911 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2175⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11911 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2175 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11911 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2175 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2175 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11911 (1 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw7048 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11911 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2773 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11911 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2773 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7048 hH))).trans (oldProjectionSound2773 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11911 (2 : Fin 5)) = canonicalInput19598.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11911 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection281 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11911 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection281 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19598 hH))).trans (reductionSound281 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11911 (3 : Fin 5)) = canonicalInput19600.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11911 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1211 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11911 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1211 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19600 hH))).trans (oldProjectionSound1211 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11911 (4 : Fin 5)) = canonicalInput19601.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11911 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11104 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11911 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11104 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19601 hH))).trans (reductionSound11104 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode9809).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11911 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9809).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11911 (j : Fin 5)))
      1 288 1440 5 ![720, 1440, 288, 144, 1440] ![2, 1, 5, 10, 1] reductionProjection11911 ![oldProjection2175, oldProjection2773, reductionProjection281, oldProjection1211, reductionProjection11104]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11912 : Integer.Sparse (Fin 1613) := [(0, -4), (19, -80), (20, 25), (94, -50), (243, 640), (698, 480), (700, 160), (1058, -480), (1205, 720), (1250, 60), (1251, 5), (1323, -240)]

def reductionPivot11912 : Matrix (Fin 6) (Fin 4) ℤ := ![![-1, 1, 0, 0], ![-1, 0, -2, 3], ![0, -1, 3, -2], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -1, 0]]

theorem reductionSound11912 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode9810).moment H =
      Integer.Sparse.eval reductionProjection11912 (momentVector H) := by
  have heq : reductionPivot11912 = (fun u v => (normalNode9810).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9810).moment H = injectiveMoment H reductionPivot11912 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9810).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot11912 0 = Pi.single (1 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11912 1 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 1440, 1440, 720, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11912 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2177, oldProjection2773, reductionProjection2752, oldProjection1212, reductionProjection11104] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11912 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2177⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11912 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2177 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11912 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2177 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2177 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11912 (1 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw7050 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11912 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2773 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11912 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2773 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7050 hH))).trans (oldProjectionSound2773 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11912 (2 : Fin 5)) = canonicalInput19599.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11912 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2752 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11912 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2752 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19599 hH))).trans (reductionSound2752 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11912 (3 : Fin 5)) = canonicalInput19602.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11912 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1212 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11912 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1212 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19602 hH))).trans (oldProjectionSound1212 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11912 (4 : Fin 5)) = canonicalInput19604.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11912 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11104 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11912 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11104 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19604 hH))).trans (reductionSound11104 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode9810).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11912 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9810).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11912 (j : Fin 5)))
      1 1440 1440 1 ![720, 1440, 1440, 720, 1440] ![2, 1, 1, 2, 1] reductionProjection11912 ![oldProjection2177, oldProjection2773, reductionProjection2752, oldProjection1212, reductionProjection11104]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11913 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 20), (20, 25), (94, -110), (1251, -20)]

def reductionPivot11913 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, 0, -2, 3], ![0, 0, 3, -3], ![0, 1, 0, -1], ![1, -1, 0, 0]]

theorem reductionSound11913 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode9955).moment H =
      Integer.Sparse.eval reductionProjection11913 (momentVector H) := by
  have heq : reductionPivot11913 = (fun u v => (normalNode9955).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9955).moment H = injectiveMoment H reductionPivot11913 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9955).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot11913 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11913 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 720, 144, 72] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11913 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1181, oldProjection1221, oldProjection1225, reductionProjection7777] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11913 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1181⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11913 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1181 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11913 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1181 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1181 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11913 (1 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1221⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11913 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1221 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11913 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1221 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1221 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11913 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1225⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11913 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1225 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11913 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1225 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1225 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11913 (3 : Fin 4)) = (normalNode9973).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11913 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection7777 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11913 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection7777 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound7777 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9955).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11913 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9955).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11913 (j : Fin 4)))
      2 1440 1440 2 ![144, 720, 144, 72] ![10, 2, 10, 20] reductionProjection11913 ![oldProjection1181, oldProjection1221, oldProjection1225, reductionProjection7777]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11914 : Integer.Sparse (Fin 1613) := [(0, -3), (3, -40), (19, -280), (20, 35), (93, 120), (94, 45), (108, 160), (243, 240), (698, 80), (704, 80), (1047, -480), (1058, -240), (1060, -240), (1206, 720), (1225, 80), (1226, 240), (1250, 60), (1251, 5), (1319, -240), (1321, -240)]

def reductionPivot11914 : Matrix (Fin 6) (Fin 4) ℤ := ![![-1, 1, 0, 0], ![-1, 0, -2, 3], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, -1, 3, -3]]

theorem reductionSound11914 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode9811).moment H =
      Integer.Sparse.eval reductionProjection11914 (momentVector H) := by
  have heq : reductionPivot11914 = (fun u v => (normalNode9811).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9811).moment H = injectiveMoment H reductionPivot11914 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9811).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot11914 0 = Pi.single (1 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11914 1 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 1440, 1440, 720, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11914 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection8597, reductionProjection11865, reductionProjection8227, reductionProjection11820, reductionProjection11913] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11914 (0 : Fin 5)) = (normalNode4956).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11914 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8597 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11914 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8597 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8597 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11914 (1 : Fin 5)) = (normalNode9802).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11914 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11865 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11914 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11865 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound11865 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11914 (2 : Fin 5)) = canonicalInput19614.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11914 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8227 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11914 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8227 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19614 hH))).trans (reductionSound8227 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11914 (3 : Fin 5)) = canonicalInput19621.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11914 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11820 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11914 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11820 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19621 hH))).trans (reductionSound11820 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11914 (4 : Fin 5)) = canonicalInput19623.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11914 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11913 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11914 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11913 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19623 hH))).trans (reductionSound11913 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode9811).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11914 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9811).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11914 (j : Fin 5)))
      1 1440 1440 1 ![720, 1440, 1440, 720, 1440] ![2, 1, 1, 2, 1] reductionProjection11914 ![reductionProjection8597, reductionProjection11865, reductionProjection8227, reductionProjection11820, reductionProjection11913]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11915 : Integer.Sparse (Fin 1613) := [(1394, 1)]

theorem reductionSound11915 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1394).moment H =
      Integer.Sparse.eval reductionProjection11915 (momentVector H) := by
  have hc : coordinates (1394 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1394) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection11915, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection11916 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 40), (20, -20), (94, 15), (704, -80), (1206, -720), (1251, -10), (1321, 480), (1394, -720)]

def reductionPivot11916 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, 0, -2, 3], ![-1, 1, 1, -1], ![1, -1, -1, 1], ![1, -1, 3, -3]]

theorem reductionSound11916 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode9820).moment H =
      Integer.Sparse.eval reductionProjection11916 (momentVector H) := by
  have heq : reductionPivot11916 = (fun u v => (normalNode9820).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9820).moment H = injectiveMoment H reductionPivot11916 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9820).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot11916 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11916 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 144, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11916 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection11915, reductionProjection1964, oldProjection1327, oldProjection1339] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11916 (0 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1394).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11916 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection11915 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11916 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection11915 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound11915 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11916 (1 : Fin 4)) = canonicalInput19534.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11916 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1964 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11916 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1964 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19534 hH))).trans (reductionSound1964 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11916 (2 : Fin 4)) = canonicalInput19501.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11916 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1327 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11916 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1327 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19501 hH))).trans (oldProjectionSound1327 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11916 (3 : Fin 4)) = canonicalInput19497.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11916 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1339 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11916 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1339 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19497 hH))).trans (oldProjectionSound1339 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9820).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11916 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9820).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11916 (j : Fin 4)))
      2 1440 1440 2 ![1, 1, 144, 720] ![1440, 1440, 10, 2] reductionProjection11916 ![reductionProjection11915, reductionProjection1964, oldProjection1327, oldProjection1339]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11917 : Integer.Sparse (Fin 1613) := [(3, 4), (4, -1), (19, 12), (20, 5), (94, 1), (1251, 3)]

def reductionPivot11917 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, 0, -2, 3], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, 3, -3]]

theorem reductionSound11917 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode9950).moment H =
      Integer.Sparse.eval reductionProjection11917 (momentVector H) := by
  have heq : reductionPivot11917 = (fun u v => (normalNode9950).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9950).moment H = injectiveMoment H reductionPivot11917 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9950).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot11917 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11917 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 48, 720, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11917 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection11800, oldProjection269, oldProjection1218, reductionProjection10347] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11917 (0 : Fin 4)) = (normalNode9740).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11917 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection11800 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11917 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection11800 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound11800 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11917 (1 : Fin 4)) = canonicalInput19628.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11917 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection269 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11917 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection269 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19628 hH))).trans (oldProjectionSound269 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11917 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1218⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11917 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1218 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11917 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1218 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1218 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11917 (3 : Fin 4)) = (normalNode9969).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11917 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10347 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11917 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10347 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10347 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9950).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11917 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9950).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11917 (j : Fin 4)))
      2 288 1440 10 ![144, 48, 720, 720] ![10, 30, 2, 2] reductionProjection11917 ![reductionProjection11800, oldProjection269, oldProjection1218, reductionProjection10347]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11918 : Integer.Sparse (Fin 1613) := [(0, 1), (20, 10), (94, -10), (1251, 35)]

def reductionPivot11918 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, 0, -2, 3], ![0, 0, 3, -3], ![0, 1, -1, 0], ![1, -1, -1, 1]]

theorem reductionSound11918 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode9964).moment H =
      Integer.Sparse.eval reductionProjection11918 (momentVector H) := by
  have heq : reductionPivot11918 = (fun u v => (normalNode9964).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9964).moment H = injectiveMoment H reductionPivot11918 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9964).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot11918 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11918 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![360, 144, 72, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11918 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1268, oldProjection1228, reductionProjection7777, oldProjection1225] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11918 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1268⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11918 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1268 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11918 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1268 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1268 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11918 (1 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1228⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11918 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1228 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11918 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1228 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1228 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11918 (2 : Fin 4)) = (normalNode9973).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11918 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection7777 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11918 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection7777 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound7777 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11918 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1225⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11918 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1225 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11918 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1225 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1225 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9964).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11918 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9964).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11918 (j : Fin 4)))
      2 720 720 2 ![360, 144, 72, 144] ![2, 5, 10, 5] reductionProjection11918 ![oldProjection1268, oldProjection1228, reductionProjection7777, oldProjection1225]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11919 : Integer.Sparse (Fin 1613) := [(0, -4), (3, -20), (4, 5), (19, -220), (20, 20), (93, 60), (94, 5), (243, 80), (246, 80), (483, 720), (698, 160), (704, 400), (1047, -240), (1148, 720), (1206, 1440), (1226, 80), (1251, -10), (1292, -240), (1321, -960), (1394, 720)]

def reductionPivot11919 : Matrix (Fin 6) (Fin 4) ℤ := ![![-1, 1, 0, 0], ![-1, 0, -2, 3], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, -1, 1], ![1, -1, 3, -3]]

theorem reductionSound11919 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode9812).moment H =
      Integer.Sparse.eval reductionProjection11919 (momentVector H) := by
  have heq : reductionPivot11919 = (fun u v => (normalNode9812).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9812).moment H = injectiveMoment H reductionPivot11919 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9812).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot11919 0 = Pi.single (1 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11919 1 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 288, 288, 720] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11919 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection8665, reductionProjection11916, reductionProjection9294, reductionProjection11917, reductionProjection11918] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11919 (0 : Fin 5)) = (normalNode4981).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11919 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8665 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11919 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8665 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8665 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11919 (1 : Fin 5)) = (normalNode9820).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11919 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11916 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11919 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11916 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound11916 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11919 (2 : Fin 5)) = canonicalInput19635.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11919 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9294 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11919 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9294 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19635 hH))).trans (reductionSound9294 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11919 (3 : Fin 5)) = canonicalInput19641.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11919 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11917 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11919 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11917 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19641 hH))).trans (reductionSound11917 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11919 (4 : Fin 5)) = canonicalInput19645.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11919 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11918 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11919 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11918 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19645 hH))).trans (reductionSound11918 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode9812).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11919 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9812).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11919 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 288, 288, 720] ![1, 1, 5, 5, 2] reductionProjection11919 ![reductionProjection8665, reductionProjection11916, reductionProjection9294, reductionProjection11917, reductionProjection11918]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11920 : Integer.Sparse (Fin 1613) := [(3, 4), (4, -1), (19, -20), (20, -3), (94, 3), (1251, 5)]

def reductionPivot11920 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, 0, -2, 3], ![0, 0, 4, -4], ![0, 1, -1, 0], ![1, -1, 0, 0]]

theorem reductionSound11920 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode9956).moment H =
      Integer.Sparse.eval reductionProjection11920 (momentVector H) := by
  have heq : reductionPivot11920 = (fun u v => (normalNode9956).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9956).moment H = injectiveMoment H reductionPivot11920 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9956).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot11920 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11920 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11920 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection10788, oldProjection1225, oldProjection1227, oldProjection1228] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11920 (0 : Fin 4)) = (normalNode9751).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11920 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10788 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11920 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10788 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10788 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11920 (1 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1225⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11920 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1225 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11920 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1225 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1225 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11920 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1227⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11920 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1227 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11920 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1227 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1227 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11920 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1228⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11920 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1228 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11920 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1228 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1228 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9956).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11920 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9956).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11920 (j : Fin 4)))
      2 288 288 2 ![144, 144, 144, 144] ![2, 2, 2, 2] reductionProjection11920 ![reductionProjection10788, oldProjection1225, oldProjection1227, oldProjection1228]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11921 : Integer.Sparse (Fin 1613) := [(3, -16), (4, 1), (19, -32), (20, -1), (37, -48), (94, -5), (108, 16), (243, 48), (244, 48), (246, 16), (701, 32), (703, 32), (704, 48), (1039, -48), (1040, -48), (1148, 144), (1199, 144), (1209, -48), (1214, -48), (1251, 5), (1292, -48)]

def reductionPivot11921 : Matrix (Fin 6) (Fin 4) ℤ := ![![-1, 1, 0, 0], ![-1, 0, -2, 3], ![0, 0, 4, -4], ![0, 1, -1, 0], ![1, -1, -1, 1], ![1, -1, 0, 0]]

theorem reductionSound11921 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode9813).moment H =
      Integer.Sparse.eval reductionProjection11921 (momentVector H) := by
  have heq : reductionPivot11921 = (fun u v => (normalNode9813).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9813).moment H = injectiveMoment H reductionPivot11921 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9813).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot11921 0 = Pi.single (1 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11921 1 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![144, 288, 288, 288, 144] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11921 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection8630, reductionProjection11779, reductionProjection9298, reductionProjection11920, oldProjection1228] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11921 (0 : Fin 5)) = (normalNode5000).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11921 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8630 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11921 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8630 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8630 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11921 (1 : Fin 5)) = (normalNode9839).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11921 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11779 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11921 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11779 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound11779 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11921 (2 : Fin 5)) = canonicalInput19657.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11921 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9298 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11921 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9298 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19657 hH))).trans (reductionSound9298 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11921 (3 : Fin 5)) = canonicalInput19659.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11921 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11920 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11921 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11920 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19659 hH))).trans (reductionSound11920 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11921 (4 : Fin 5)) = canonicalInput19660.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11921 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1228 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11921 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1228 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19660 hH))).trans (oldProjectionSound1228 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode9813).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11921 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9813).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11921 (j : Fin 5)))
      1 288 288 1 ![144, 288, 288, 288, 144] ![2, 1, 1, 1, 2] reductionProjection11921 ![reductionProjection8630, reductionProjection11779, reductionProjection9298, reductionProjection11920, oldProjection1228]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11922 : Integer.Sparse (Fin 1613) := [(0, 4), (20, -5), (94, 40), (698, -240), (1058, 240), (1226, -80), (1251, 65), (1321, 240)]

def reductionPivot11922 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, 0, -2, 3], ![-1, 1, 1, -1], ![1, -1, 0, 0], ![1, -1, 2, -2]]

theorem reductionSound11922 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode9821).moment H =
      Integer.Sparse.eval reductionProjection11922 (momentVector H) := by
  have heq : reductionPivot11922 = (fun u v => (normalNode9821).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9821).moment H = injectiveMoment H reductionPivot11922 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9821).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot11922 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11922 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 720, 360, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11922 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1339, oldProjection1347, oldProjection1334, oldProjection1099] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11922 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw7767 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11922 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1339 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11922 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1339 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7767 hH))).trans (oldProjectionSound1339 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11922 (1 : Fin 4)) = canonicalInput19535.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11922 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1347 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11922 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1347 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19535 hH))).trans (oldProjectionSound1347 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11922 (2 : Fin 4)) = canonicalInput19502.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11922 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1334 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11922 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1334 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19502 hH))).trans (oldProjectionSound1334 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11922 (3 : Fin 4)) = canonicalInput19498.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11922 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1099 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11922 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1099 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19498 hH))).trans (oldProjectionSound1099 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9821).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11922 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9821).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11922 (j : Fin 4)))
      2 1440 1440 2 ![720, 720, 360, 144] ![2, 2, 4, 10] reductionProjection11922 ![oldProjection1339, oldProjection1347, oldProjection1334, oldProjection1099]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11923 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -4), (20, 1), (94, 6), (433, 144), (483, 144), (489, 144), (698, 80), (704, 16), (1058, -48), (1226, 32), (1227, 16), (1251, -38), (1321, -48)]

def reductionPivot11923 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-1, 0, -2, 3], ![-1, 1, 1, -1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, 1, -2]]

theorem reductionSound11923 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode9818).moment H =
      Integer.Sparse.eval reductionProjection11923 (momentVector H) := by
  have heq : reductionPivot11923 = (fun u v => (normalNode9818).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9818).moment H = injectiveMoment H reductionPivot11923 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9818).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot11923 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11923 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 144, 144, 288, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11923 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2511, oldProjection2777, oldProjection1099, oldProjection2263, reductionProjection11922] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11923 (0 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw6177 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11923 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2511 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11923 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2511 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6177 hH))).trans (oldProjectionSound2511 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11923 (1 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw7043 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11923 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2777 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11923 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2777 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7043 hH))).trans (oldProjectionSound2777 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11923 (2 : Fin 5)) = canonicalInput19493.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11923 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1099 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11923 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1099 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19493 hH))).trans (oldProjectionSound1099 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11923 (3 : Fin 5)) = canonicalInput19495.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11923 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2263 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11923 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2263 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19495 hH))).trans (oldProjectionSound2263 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11923 (4 : Fin 5)) = (normalNode9821).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11923 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11922 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11923 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11922 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound11922 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode9818).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11923 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9818).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11923 (j : Fin 5)))
      1 288 1440 5 ![1440, 144, 144, 288, 1440] ![1, 10, 10, 5, 1] reductionProjection11923 ![oldProjection2511, oldProjection2777, oldProjection1099, oldProjection2263, reductionProjection11922]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11924 : Integer.Sparse (Fin 1613) := [(0, 6), (19, -20), (94, 155), (434, 720), (698, 880), (700, 80), (704, 160), (1058, -240), (1059, 160), (1117, 720), (1226, 160), (1227, 240), (1251, -75), (1321, -240), (1333, 720), (1356, 720)]

def reductionPivot11924 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-1, 0, -2, 3], ![-1, 1, 1, -1], ![0, 1, -1, 0], ![1, -1, 1, -1], ![1, 0, 0, -1]]

theorem reductionSound11924 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode9819).moment H =
      Integer.Sparse.eval reductionProjection11924 (momentVector H) := by
  have heq : reductionPivot11924 = (fun u v => (normalNode9819).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9819).moment H = injectiveMoment H reductionPivot11924 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9819).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot11924 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11924 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 720, 720, 1440, 720] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11924 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2512, oldProjection2772, oldProjection936, oldProjection2211, reductionProjection11869] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11924 (0 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw6178 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11924 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2512 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11924 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2512 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6178 hH))).trans (oldProjectionSound2512 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11924 (1 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw7044 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11924 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2772 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11924 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2772 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7044 hH))).trans (oldProjectionSound2772 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11924 (2 : Fin 5)) = canonicalInput19494.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11924 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection936 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11924 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection936 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19494 hH))).trans (oldProjectionSound936 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11924 (3 : Fin 5)) = canonicalInput19496.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11924 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2211 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11924 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2211 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19496 hH))).trans (oldProjectionSound2211 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11924 (4 : Fin 5)) = (normalNode9822).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11924 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11869 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11924 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11869 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound11869 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode9819).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11924 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9819).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11924 (j : Fin 5)))
      1 1440 1440 1 ![1440, 720, 720, 1440, 720] ![1, 2, 2, 1, 2] reductionProjection11924 ![oldProjection2512, oldProjection2772, oldProjection936, oldProjection2211, reductionProjection11869]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11925 : Integer.Sparse (Fin 1613) := [(0, -8), (19, -20), (20, 5), (81, -480), (94, -15), (243, 160), (682, -480), (698, 960), (700, 80), (1059, 80), (1175, 720), (1226, 400), (1227, 240), (1251, -100)]

def reductionPivot11925 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-1, 0, -2, 3], ![-1, 1, 2, -2], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, 0, -1]]

theorem reductionSound11925 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode9824).moment H =
      Integer.Sparse.eval reductionProjection11925 (momentVector H) := by
  have heq : reductionPivot11925 = (fun u v => (normalNode9824).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9824).moment H = injectiveMoment H reductionPivot11925 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9824).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot11925 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11925 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 720, 720, 720] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11925 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1768, oldProjection2773, oldProjection1109, oldProjection2264, reductionProjection11872] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11925 (0 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw6187 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11925 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1768 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11925 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1768 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6187 hH))).trans (oldProjectionSound1768 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11925 (1 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw7048 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11925 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2773 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11925 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2773 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7048 hH))).trans (oldProjectionSound2773 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11925 (2 : Fin 5)) = canonicalInput19504.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11925 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1109 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11925 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1109 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19504 hH))).trans (oldProjectionSound1109 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11925 (3 : Fin 5)) = canonicalInput19505.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11925 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2264 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11925 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2264 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19505 hH))).trans (oldProjectionSound2264 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11925 (4 : Fin 5)) = (normalNode9827).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11925 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11872 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11925 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11872 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound11872 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode9824).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11925 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9824).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11925 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 720, 720, 720] ![1, 1, 2, 2, 2] reductionProjection11925 ![oldProjection1768, oldProjection2773, oldProjection1109, oldProjection2264, reductionProjection11872]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11926 : Integer.Sparse (Fin 1613) := [(0, -3), (19, -80), (20, 20), (81, -480), (94, -25), (243, 160), (682, -480), (698, 880), (1052, -480), (1059, 80), (1217, -240), (1221, -480), (1226, 640), (1227, 160), (1251, 10)]

def reductionPivot11926 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, 0, -2, 3], ![-1, 1, 2, -2], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, -1, 0, 0]]

theorem reductionSound11926 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode9825).moment H =
      Integer.Sparse.eval reductionProjection11926 (momentVector H) := by
  have heq : reductionPivot11926 = (fun u v => (normalNode9825).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9825).moment H = injectiveMoment H reductionPivot11926 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9825).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot11926 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11926 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 288, 1440, 720, 720] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11926 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1785, oldProjection2695, oldProjection1680, reductionProjection11872, reductionProjection11872] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11926 (0 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw7145 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11926 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1785 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11926 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1785 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7145 hH))).trans (oldProjectionSound1785 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11926 (1 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2695⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11926 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2695 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11926 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2695 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2695 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11926 (2 : Fin 5)) = canonicalInput19507.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11926 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1680 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11926 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1680 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19507 hH))).trans (oldProjectionSound1680 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11926 (3 : Fin 5)) = canonicalInput19506.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11926 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11872 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11926 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11872 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19506 hH))).trans (reductionSound11872 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11926 (4 : Fin 5)) = (normalNode9827).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11926 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11872 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11926 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11872 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound11872 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode9825).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11926 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9825).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11926 (j : Fin 5)))
      1 1440 1440 1 ![1440, 288, 1440, 720, 720] ![1, 5, 1, 2, 2] reductionProjection11926 ![oldProjection1785, oldProjection2695, oldProjection1680, reductionProjection11872, reductionProjection11872]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11927 : Integer.Sparse (Fin 1613) := [(0, 7), (19, 80), (94, -70), (247, -80), (698, -80), (1250, -60), (1251, -25), (1261, -720), (1319, 240), (1323, 240)]

def reductionPivot11927 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, -1, 0, 0], ![-1, 0, -2, 3], ![-1, 1, 2, -2], ![0, 1, 1, -2], ![1, -1, -1, 1]]

theorem reductionSound11927 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode9829).moment H =
      Integer.Sparse.eval reductionProjection11927 (momentVector H) := by
  have heq : reductionPivot11927 = (fun u v => (normalNode9829).entries (OAI.MUB6.Certificate.PairSemantics.permutation128 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9829).moment H = injectiveMoment H reductionPivot11927 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9829).entries OAI.MUB6.Certificate.PairSemantics.permutation128)).symm
  have hshape : reductionPivot11927 0 = Pi.single (0 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11927 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 720, 360, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11927 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1361, oldProjection1222, oldProjection1332, reductionProjection1047] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11927 (0 : Fin 4)) = canonicalInput24582.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11927 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1361 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11927 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1361 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24582 hH))).trans (oldProjectionSound1361 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11927 (1 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1222⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11927 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1222 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11927 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1222 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1222 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11927 (2 : Fin 4)) = canonicalInput19512.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11927 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1332 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11927 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1332 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19512 hH))).trans (oldProjectionSound1332 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11927 (3 : Fin 4)) = canonicalInput19508.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11927 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1047 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11927 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1047 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19508 hH))).trans (reductionSound1047 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9829).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11927 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9829).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11927 (j : Fin 4)))
      2 1440 1440 2 ![720, 720, 360, 1] ![2, 2, 4, 1440] reductionProjection11927 ![oldProjection1361, oldProjection1222, oldProjection1332, reductionProjection1047]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11928 : Integer.Sparse (Fin 1613) := [(0, 4), (19, 20), (94, -25), (698, -160), (1105, -720), (1226, -80), (1251, -5), (1323, 240), (1380, -720)]

def reductionPivot11928 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-1, 0, -2, 3], ![-1, 1, 2, -2], ![1, -1, -1, 1], ![1, -1, 1, -1]]

theorem reductionSound11928 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode9828).moment H =
      Integer.Sparse.eval reductionProjection11928 (momentVector H) := by
  have heq : reductionPivot11928 = (fun u v => (normalNode9828).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9828).moment H = injectiveMoment H reductionPivot11928 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9828).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot11928 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11928 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 720, 360] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11928 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1398, oldProjection677, oldProjection1122, oldProjection1332] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11928 (0 : Fin 4)) = canonicalInput22621.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11928 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1398 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11928 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1398 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22621 hH))).trans (reductionSound1398 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11928 (1 : Fin 4)) = canonicalInput19539.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11928 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection677 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11928 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection677 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19539 hH))).trans (oldProjectionSound677 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11928 (2 : Fin 4)) = canonicalInput19511.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11928 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1122 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11928 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1122 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19511 hH))).trans (oldProjectionSound1122 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11928 (3 : Fin 4)) = canonicalInput19509.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11928 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1332 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11928 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1332 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19509 hH))).trans (oldProjectionSound1332 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9828).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11928 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9828).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11928 (j : Fin 4)))
      2 1440 1440 2 ![1, 1, 720, 360] ![1440, 1440, 2, 4] reductionProjection11928 ![reductionProjection1398, oldProjection677, oldProjection1122, oldProjection1332]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11929 : Integer.Sparse (Fin 1613) := [(0, -4), (19, -220), (20, 30), (37, -240), (94, 45), (108, 80), (243, 160), (247, 160), (682, -240), (697, -240), (698, 560), (1052, -240), (1105, 720), (1221, -240), (1226, 400), (1227, 160), (1250, 60), (1251, 15), (1261, 720), (1319, -240), (1323, -480), (1380, 720), (1389, -240)]

def reductionPivot11929 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, 0, -2, 3], ![-1, 1, 2, -2], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, -1, 0, 0]]

theorem reductionSound11929 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode9826).moment H =
      Integer.Sparse.eval reductionProjection11929 (momentVector H) := by
  have heq : reductionPivot11929 = (fun u v => (normalNode9826).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9826).moment H = injectiveMoment H reductionPivot11929 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9826).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot11929 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11929 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 144, 1440, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11929 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection4029, reductionProjection11873, reductionProjection11927, oldProjection1680, reductionProjection11928] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11929 (0 : Fin 5)) = canonicalInput20125.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11929 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4029 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11929 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4029 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20125 hH))).trans (reductionSound4029 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11929 (1 : Fin 5)) = (normalNode9836).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11929 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11873 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11929 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11873 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound11873 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11929 (2 : Fin 5)) = (normalNode9829).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11929 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11927 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11929 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11927 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound11927 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11929 (3 : Fin 5)) = canonicalInput19507.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11929 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1680 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11929 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1680 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19507 hH))).trans (oldProjectionSound1680 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11929 (4 : Fin 5)) = (normalNode9828).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11929 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11928 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11929 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11928 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound11928 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode9826).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11929 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9826).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11929 (j : Fin 5)))
      1 1440 1440 1 ![1440, 144, 1440, 1440, 1440] ![1, 10, 1, 1, 1] reductionProjection11929 ![reductionProjection4029, reductionProjection11873, reductionProjection11927, oldProjection1680, reductionProjection11928]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11930 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 40), (20, 5), (94, 35), (243, -240), (698, -80), (1225, -80), (1226, -240), (1251, 25)]

def reductionPivot11930 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-1, 1, -3, 3], ![0, 0, 1, -1], ![0, 1, 2, -3], ![1, -1, 0, 0]]

theorem reductionSound11930 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode10966).moment H =
      Integer.Sparse.eval reductionProjection11930 (momentVector H) := by
  have heq : reductionPivot11930 = (fun u v => (normalNode10966).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10966).moment H = injectiveMoment H reductionPivot11930 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10966).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot11930 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11930 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![36, 144, 720, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11930 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1167, oldProjection1103, oldProjection1197, oldProjection1200] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11930 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw7013 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11930 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1167 (momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11930 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1167 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7013 hH))).trans (oldProjectionSound1167 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11930 (1 : Fin 4)) = canonicalInput22542.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11930 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1103 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11930 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1103 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22542 hH))).trans (oldProjectionSound1103 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11930 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw7778 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11930 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1197 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11930 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1197 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7778 hH))).trans (oldProjectionSound1197 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11930 (3 : Fin 4)) = canonicalInput22578.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11930 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1200 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11930 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1200 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22578 hH))).trans (oldProjectionSound1200 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10966).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11930 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10966).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11930 (j : Fin 4)))
      2 1440 1440 2 ![36, 144, 720, 144] ![40, 10, 2, 10] reductionProjection11930 ![oldProjection1167, oldProjection1103, oldProjection1197, oldProjection1200]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11931 : Integer.Sparse (Fin 1613) := [(0, -2), (19, -160), (20, 25), (94, -50), (241, 160), (243, 1200), (698, 240), (1052, -480), (1156, 720), (1217, -480), (1223, -240), (1225, 400), (1226, 560), (1251, -105)]

def reductionPivot11931 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-1, 0, -2, 3], ![-1, 1, 3, -3], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, 0, -1]]

theorem reductionSound11931 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode9830).moment H =
      Integer.Sparse.eval reductionProjection11931 (momentVector H) := by
  have heq : reductionPivot11931 = (fun u v => (normalNode9830).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9830).moment H = injectiveMoment H reductionPivot11931 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9830).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot11931 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11931 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![144, 1440, 1440, 288, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11931 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection9776, oldProjection2773, reductionProjection11930, reductionProjection7906, oldProjection2695] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11931 (0 : Fin 5)) = canonicalInput14472.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11931 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9776 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11931 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9776 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14472 hH))).trans (reductionSound9776 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11931 (1 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw7048 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11931 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2773 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11931 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2773 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7048 hH))).trans (oldProjectionSound2773 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11931 (2 : Fin 5)) = canonicalInput19513.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11931 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11930 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11931 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11930 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19513 hH))).trans (reductionSound11930 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11931 (3 : Fin 5)) = canonicalInput19516.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11931 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7906 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11931 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7906 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19516 hH))).trans (reductionSound7906 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11931 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2695⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11931 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2695 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11931 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2695 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2695 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode9830).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11931 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9830).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11931 (j : Fin 5)))
      1 1440 1440 1 ![144, 1440, 1440, 288, 288] ![10, 1, 1, 5, 5] reductionProjection11931 ![reductionProjection9776, oldProjection2773, reductionProjection11930, reductionProjection7906, oldProjection2695]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11932 : Integer.Sparse (Fin 1613) := [(0, -1), (3, -20), (19, -160), (20, 40), (37, -480), (94, -115), (105, 80), (108, 80), (241, 80), (243, 800), (682, -480), (698, 160), (1156, 720), (1214, -240), (1225, 160), (1226, 320), (1251, -50)]

def reductionPivot11932 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-1, 0, -2, 3], ![-1, 1, 3, -3], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -1, 0]]

theorem reductionSound11932 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode9831).moment H =
      Integer.Sparse.eval reductionProjection11932 (momentVector H) := by
  have heq : reductionPivot11932 = (fun u v => (normalNode9831).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9831).moment H = injectiveMoment H reductionPivot11932 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9831).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot11932 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11932 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 1440, 144, 288, 144] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11932 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection9775, oldProjection2773, oldProjection1103, reductionProjection7896, reductionProjection11873] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11932 (0 : Fin 5)) = canonicalInput14474.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11932 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9775 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11932 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9775 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14474 hH))).trans (reductionSound9775 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11932 (1 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw7050 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11932 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2773 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11932 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2773 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7050 hH))).trans (oldProjectionSound2773 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11932 (2 : Fin 5)) = canonicalInput19514.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11932 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1103 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11932 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1103 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19514 hH))).trans (oldProjectionSound1103 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11932 (3 : Fin 5)) = canonicalInput19517.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11932 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7896 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11932 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7896 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19517 hH))).trans (reductionSound7896 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11932 (4 : Fin 5)) = canonicalInput19518.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11932 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11873 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11932 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11873 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19518 hH))).trans (reductionSound11873 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode9831).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11932 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9831).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11932 (j : Fin 5)))
      1 1440 1440 1 ![288, 1440, 144, 288, 144] ![5, 1, 10, 5, 10] reductionProjection11932 ![reductionProjection9775, oldProjection2773, oldProjection1103, reductionProjection7896, reductionProjection11873]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11933 : Integer.Sparse (Fin 1613) := [(19, 28), (20, -7), (93, -12), (94, -2), (243, -16), (704, -16), (1251, -11), (1263, -144), (1321, 48), (1323, 48)]

def reductionPivot11933 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, -1, 0, 0], ![-1, 0, -2, 3], ![-1, 1, 3, -3], ![0, 1, -2, 1], ![1, -1, 1, -1]]

theorem reductionSound11933 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode9834).moment H =
      Integer.Sparse.eval reductionProjection11933 (momentVector H) := by
  have heq : reductionPivot11933 = (fun u v => (normalNode9834).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9834).moment H = injectiveMoment H reductionPivot11933 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9834).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot11933 0 = Pi.single (0 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11933 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 72, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11933 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1327, oldProjection1224, reductionProjection11019, reductionProjection1048] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11933 (0 : Fin 4)) = canonicalInput24583.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11933 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1327 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11933 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1327 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24583 hH))).trans (oldProjectionSound1327 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11933 (1 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1224⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11933 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1224 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11933 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1224 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1224 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11933 (2 : Fin 4)) = canonicalInput19520.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11933 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection11019 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11933 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection11019 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19520 hH))).trans (reductionSound11019 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11933 (3 : Fin 4)) = canonicalInput19515.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11933 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1048 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11933 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1048 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19515 hH))).trans (reductionSound1048 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9834).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11933 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9834).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11933 (j : Fin 4)))
      2 288 288 2 ![144, 144, 72, 1] ![2, 2, 4, 288] reductionProjection11933 ![oldProjection1327, oldProjection1224, reductionProjection11019, reductionProjection1048]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11934 : Integer.Sparse (Fin 1613) := [(19, 20), (20, -4), (94, 3), (243, -32), (1105, -144), (1226, -16), (1251, -1), (1323, 48), (1379, -144)]

def reductionPivot11934 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, 0, -2, 3], ![-1, 1, 3, -3], ![1, -1, -1, 1], ![1, -1, 1, -1]]

theorem reductionSound11934 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode9835).moment H =
      Integer.Sparse.eval reductionProjection11934 (momentVector H) := by
  have heq : reductionPivot11934 = (fun u v => (normalNode9835).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9835).moment H = injectiveMoment H reductionPivot11934 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9835).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot11934 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11934 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 72, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11934 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection11646, oldProjection677, reductionProjection11019, oldProjection1128] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11934 (0 : Fin 4)) = canonicalInput22528.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11934 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection11646 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11934 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection11646 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22528 hH))).trans (reductionSound11646 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11934 (1 : Fin 4)) = canonicalInput19539.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11934 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection677 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11934 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection677 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19539 hH))).trans (oldProjectionSound677 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11934 (2 : Fin 4)) = canonicalInput19520.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11934 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection11019 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11934 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection11019 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19520 hH))).trans (reductionSound11019 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11934 (3 : Fin 4)) = canonicalInput19519.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11934 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1128 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11934 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1128 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19519 hH))).trans (oldProjectionSound1128 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9835).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11934 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9835).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11934 (j : Fin 4)))
      2 288 288 2 ![1, 1, 72, 144] ![288, 288, 4, 2] reductionProjection11934 ![reductionProjection11646, oldProjection677, reductionProjection11019, oldProjection1128]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11935 : Integer.Sparse (Fin 1613) := [(0, -6), (3, -20), (19, -380), (20, 20), (81, -240), (93, 60), (94, -5), (243, 560), (682, -240), (698, 240), (704, 160), (1040, -240), (1052, -240), (1105, 720), (1209, -240), (1217, -240), (1225, 160), (1226, 400), (1251, 5), (1263, 720), (1321, -240), (1323, -480), (1379, 720)]

def reductionPivot11935 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, 0, -2, 3], ![-1, 1, 3, -3], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, -1, 1, -1]]

theorem reductionSound11935 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode9832).moment H =
      Integer.Sparse.eval reductionProjection11935 (momentVector H) := by
  have heq : reductionPivot11935 = (fun u v => (normalNode9832).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9832).moment H = injectiveMoment H reductionPivot11935 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9832).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot11935 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11935 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 720, 288, 288, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11935 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection11828, reductionProjection11872, reductionProjection11933, reductionProjection11934, oldProjection2695] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11935 (0 : Fin 5)) = (normalNode9638).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11935 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11828 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11935 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11828 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound11828 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11935 (1 : Fin 5)) = (normalNode9827).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11935 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11872 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11935 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11872 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound11872 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11935 (2 : Fin 5)) = (normalNode9834).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11935 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11933 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11935 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11933 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound11933 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11935 (3 : Fin 5)) = (normalNode9835).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11935 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11934 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11935 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11934 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound11934 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11935 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2695⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11935 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2695 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11935 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2695 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2695 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode9832).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11935 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9832).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11935 (j : Fin 5)))
      1 1440 1440 1 ![288, 720, 288, 288, 288] ![5, 2, 5, 5, 5] reductionProjection11935 ![reductionProjection11828, reductionProjection11872, reductionProjection11933, reductionProjection11934, oldProjection2695]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization
