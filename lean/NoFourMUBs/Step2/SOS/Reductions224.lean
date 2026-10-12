import NoFourMUBs.Step2.SOS.Canonical055
import NoFourMUBs.Step2.SOS.Canonical056
import NoFourMUBs.Step2.SOS.Canonical057
import NoFourMUBs.Step2.SOS.Canonical068
import NoFourMUBs.Step2.SOS.Canonical071
import NoFourMUBs.Step2.SOS.Canonical072
import NoFourMUBs.Step2.SOS.Canonical099
import NoFourMUBs.Step2.SOS.Canonical107
import NoFourMUBs.Step2.SOS.Canonical108
import NoFourMUBs.Step2.SOS.Canonical109
import NoFourMUBs.Step2.SOS.Canonical126
import NoFourMUBs.Step2.SOS.Canonical173
import NoFourMUBs.Step2.SOS.Canonical206
import NoFourMUBs.Step2.SOS.Canonical208
import NoFourMUBs.Step2.SOS.Canonical243
import NoFourMUBs.Step2.SOS.Canonical244
import NoFourMUBs.Step2.SOS.Canonical245
import NoFourMUBs.Step2.SOS.Canonical246
import NoFourMUBs.Step2.SOS.Canonical247
import NoFourMUBs.Step2.SOS.Canonical248
import NoFourMUBs.Step2.SOS.Canonical249
import NoFourMUBs.Step2.SOS.Canonical251
import NoFourMUBs.Step2.SOS.Canonical252
import NoFourMUBs.Step2.SOS.Canonical272
import NoFourMUBs.Step2.SOS.Canonical273
import NoFourMUBs.Step2.SOS.Canonical274
import NoFourMUBs.Step2.SOS.Canonical275
import NoFourMUBs.Step2.SOS.Canonical278
import NoFourMUBs.Step2.SOS.Canonical279
import NoFourMUBs.Step2.SOS.Canonical286
import NoFourMUBs.Step2.SOS.Canonical287
import NoFourMUBs.Step2.SOS.Canonical288
import NoFourMUBs.Step2.SOS.Canonical289
import NoFourMUBs.Step2.SOS.Canonical320
import NoFourMUBs.Step2.SOS.Canonical321
import NoFourMUBs.Step2.SOS.Canonical322
import NoFourMUBs.Step2.SOS.Canonical323
import NoFourMUBs.Step2.SOS.Canonical375
import NoFourMUBs.Step2.SOS.Canonical377
import NoFourMUBs.Step2.SOS.Canonical378
import NoFourMUBs.Step2.SOS.Canonical385
import NoFourMUBs.Step2.SOS.Canonical390
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes12
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes033
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.OldProjections007
import NoFourMUBs.Step2.SOS.OldProjections014
import NoFourMUBs.Step2.SOS.OldProjections015
import NoFourMUBs.Step2.SOS.OldProjections019
import NoFourMUBs.Step2.SOS.OldProjections027
import NoFourMUBs.Step2.SOS.OldProjections028
import NoFourMUBs.Step2.SOS.OldProjections034
import NoFourMUBs.Step2.SOS.OldProjections035
import NoFourMUBs.Step2.SOS.OldProjections036
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions029
import NoFourMUBs.Step2.SOS.Reductions030
import NoFourMUBs.Step2.SOS.Reductions063
import NoFourMUBs.Step2.SOS.Reductions067
import NoFourMUBs.Step2.SOS.Reductions082
import NoFourMUBs.Step2.SOS.Reductions085
import NoFourMUBs.Step2.SOS.Reductions087
import NoFourMUBs.Step2.SOS.Reductions088
import NoFourMUBs.Step2.SOS.Reductions090
import NoFourMUBs.Step2.SOS.Reductions091
import NoFourMUBs.Step2.SOS.Reductions092
import NoFourMUBs.Step2.SOS.Reductions095
import NoFourMUBs.Step2.SOS.Reductions099
import NoFourMUBs.Step2.SOS.Reductions100
import NoFourMUBs.Step2.SOS.Reductions102
import NoFourMUBs.Step2.SOS.Reductions103
import NoFourMUBs.Step2.SOS.Reductions105
import NoFourMUBs.Step2.SOS.Reductions107
import NoFourMUBs.Step2.SOS.Reductions111
import NoFourMUBs.Step2.SOS.Reductions112
import NoFourMUBs.Step2.SOS.Reductions118
import NoFourMUBs.Step2.SOS.Reductions124
import NoFourMUBs.Step2.SOS.Reductions126
import NoFourMUBs.Step2.SOS.Reductions152
import NoFourMUBs.Step2.SOS.Reductions218
import NoFourMUBs.Step2.SOS.Reductions222
import NoFourMUBs.Step2.SOS.Reductions223
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical151
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection7168 : Integer.Sparse (Fin 1613) := [(287, 9), (426, 18), (698, 2), (848, -18), (849, -36), (1226, 2), (1227, -1)]

def reductionPivot7168 : Matrix (Fin 5) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![-1, -1, 0, 2, 0], ![-1, 2, 0, -1, 0], ![0, 0, 2, 0, -2], ![3, -1, -2, -1, 1]]

theorem reductionSound7168 {H : CMatrix} (hH : IsHadamard H) :
    (36 : ℝ) * (normalNode7516).moment H =
      Integer.Sparse.eval reductionProjection7168 (momentVector H) := by
  have heq : reductionPivot7168 = (fun u v => (normalNode7516).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation33 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7516).moment H = injectiveMoment H reductionPivot7168 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode7516).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation33)).trans (injectiveMoment_transpose H (normalNode7516).entries)).symm
  have hshape : reductionPivot7168 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot7168 4 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 18, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7168 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection2022, reductionProjection2022, reductionProjection2154, reductionProjection987] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7168 (0 : Fin 4)) = canonicalInput3529.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7168 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2022 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7168 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2022 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound3529 hH))).trans (reductionSound2022 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7168 (1 : Fin 4)) = canonicalInput17418.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7168 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2022 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7168 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2022 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17418 hH))).trans (reductionSound2022 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7168 (2 : Fin 4)) = canonicalInput17509.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7168 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2154 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7168 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2154 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17509 hH))).trans (reductionSound2154 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7168 (3 : Fin 4)) = canonicalInput17512.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7168 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection987 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7168 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection987 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17512 hH))).trans (reductionSound987 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7516).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7168 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7516).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7168 (j : Fin 4)))
      2 36 36 2 ![1, 1, 18, 1] ![36, 36, 2, 36] reductionProjection7168 ![reductionProjection2022, reductionProjection2022, reductionProjection2154, reductionProjection987]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7169 : Integer.Sparse (Fin 1613) := [(0, -1), (94, 10), (426, 720), (602, 720), (666, 1440), (698, 320), (848, -1440), (859, -1440), (890, 720), (1050, -240), (1059, 240), (1227, -80), (1251, -45)]

def reductionPivot7169 : Matrix (Fin 5) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![-1, -1, 0, 2, 0], ![0, 0, 2, 0, -2], ![2, -1, 0, -1, 0], ![0, 2, -2, -1, 1]]

theorem reductionSound7169 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode9144).moment H =
      Integer.Sparse.eval reductionProjection7169 (momentVector H) := by
  have heq : reductionPivot7169 = (fun u v => (normalNode9144).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation33 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9144).moment H = injectiveMoment H reductionPivot7169 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode9144).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation33)).trans (injectiveMoment_transpose H (normalNode9144).entries)).symm
  have hshape : reductionPivot7169 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot7169 4 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1440, 720, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7169 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection3319, oldProjection1996, reductionProjection2024, reductionProjection987] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7169 (0 : Fin 4)) = canonicalInput3679.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7169 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3319 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7169 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3319 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound3679 hH))).trans (reductionSound3319 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7169 (1 : Fin 4)) = canonicalInput17476.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7169 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1996 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7169 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1996 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17476 hH))).trans (oldProjectionSound1996 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7169 (2 : Fin 4)) = canonicalInput17658.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7169 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2024 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7169 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2024 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17658 hH))).trans (reductionSound2024 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7169 (3 : Fin 4)) = canonicalInput17659.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7169 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection987 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7169 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection987 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17659 hH))).trans (reductionSound987 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9144).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7169 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9144).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7169 (j : Fin 4)))
      2 2880 2880 2 ![1, 1440, 720, 1] ![2880, 2, 4, 2880] reductionProjection7169 ![reductionProjection3319, oldProjection1996, reductionProjection2024, reductionProjection987]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7170 : Integer.Sparse (Fin 1613) := [(94, -1), (287, -36), (426, -144), (602, -72), (666, -144), (698, -56), (848, 144), (849, 144), (859, 144), (890, -72), (943, 144), (1050, 24), (1059, -24), (1226, -16), (1227, -12), (1251, 7)]

def reductionPivot7170 : Matrix (Fin 6) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![0, -1, -1, 0, 2], ![0, -1, 2, 0, -1], ![0, 0, 0, 2, -2], ![0, 2, -1, 0, -1], ![1, 0, 0, -2, 1]]

theorem reductionSound7170 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode10446).moment H =
      Integer.Sparse.eval reductionProjection7170 (momentVector H) := by
  have heq : reductionPivot7170 = (fun u v => (normalNode10446).entries (OAI.MUB6.Certificate.PairSemantics.permutation151 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10446).moment H = injectiveMoment H reductionPivot7170 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10446).entries OAI.MUB6.Certificate.PairSemantics.permutation151)).symm
  have hshape : reductionPivot7170 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot7170 4 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![36, 2880, 1440, 2880, 1] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7170 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection7168, reductionProjection7169, reductionProjection7126, reductionProjection7169, reductionProjection987] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7170 (0 : Fin 5)) = (normalNode7516).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7170 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7168 (momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7170 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7168 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he)).trans (reductionSound7168 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7170 (1 : Fin 5)) = canonicalInput24649.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7170 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7169 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7170 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7169 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound24649 hH))).trans (reductionSound7169 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7170 (2 : Fin 5)) = canonicalInput24659.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7170 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7126 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7170 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7126 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound24659 hH))).trans (reductionSound7126 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7170 (3 : Fin 5)) = canonicalInput24663.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7170 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7169 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7170 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7169 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound24663 hH))).trans (reductionSound7169 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7170 (4 : Fin 5)) = canonicalInput24664.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7170 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection987 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7170 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection987 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound24664 hH))).trans (reductionSound987 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode10446).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7170 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10446).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7170 (j : Fin 5)))
      1 144 2880 20 ![36, 2880, 1440, 2880, 1] ![80, 1, 2, 1, 2880] reductionProjection7170 ![reductionProjection7168, reductionProjection7169, reductionProjection7126, reductionProjection7169, reductionProjection987]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7171 : Integer.Sparse (Fin 1613) := [(0, 4), (81, -240), (94, 25), (169, 720), (228, -120), (269, 720), (287, 360), (362, 1440), (379, 1440), (426, 1440), (516, 1440), (602, 2520), (635, 720), (636, 720), (638, 1080), (655, 1440), (666, 1080), (667, -720), (697, -120), (698, 1440), (848, -2160), (849, -720), (859, -720), (874, -720), (888, -720), (890, 1080), (943, -720), (1026, 360), (1027, 360), (1050, -120), (1058, -240), (1059, 200), (1212, 240), (1220, 240), (1221, -120), (1223, -120), (1226, 600), (1227, 400), (1251, -215), (1389, -240)]

def reductionPivot7171 : Matrix (Fin 6) (Fin 5) ℤ := ![![-2, 0, 0, 1, 1], ![0, -1, -1, 0, 2], ![0, -1, 2, 0, -1], ![0, 2, -1, 0, -1], ![1, 0, 0, -2, 1], ![1, 0, 0, 1, -2]]

theorem reductionSound7171 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode3682).moment H =
      Integer.Sparse.eval reductionProjection7171 (momentVector H) := by
  have heq : reductionPivot7171 = (fun u v => (normalNode3682).entries (OAI.MUB6.Certificate.PairSemantics.permutation151 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3682).moment H = injectiveMoment H reductionPivot7171 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3682).entries OAI.MUB6.Certificate.PairSemantics.permutation151)).symm
  have hr := six_row_reduction hH reductionPivot7171 3 0 (by decide)
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![360, 2880, 2880, 1440, 144] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst (splitFirst reductionPivot7171 (Pi.single (3 : Fin 5) 1 - Pi.single 0 1)) (j : Fin 5).succ)) j =
        Integer.Sparse.eval (![reductionProjection7165, reductionProjection4869, reductionProjection4869, reductionProjection7167, reductionProjection7170] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst (splitFirst reductionPivot7171 (Pi.single (3 : Fin 5) 1 - Pi.single 0 1)) (0 : Fin 5).succ) = canonicalInput20574.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst (splitFirst reductionPivot7171 (Pi.single (3 : Fin 5) 1 - Pi.single 0 1)) (0 : Fin 5).succ) =
        Integer.Sparse.eval reductionProjection7165 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst (splitFirst reductionPivot7171 (Pi.single (3 : Fin 5) 1 - Pi.single 0 1)) (0 : Fin 5).succ) =
          Integer.Sparse.eval reductionProjection7165 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20574 hH))).trans (reductionSound7165 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst (splitFirst reductionPivot7171 (Pi.single (3 : Fin 5) 1 - Pi.single 0 1)) (1 : Fin 5).succ) = canonicalInput20616.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst (splitFirst reductionPivot7171 (Pi.single (3 : Fin 5) 1 - Pi.single 0 1)) (1 : Fin 5).succ) =
        Integer.Sparse.eval reductionProjection4869 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst (splitFirst reductionPivot7171 (Pi.single (3 : Fin 5) 1 - Pi.single 0 1)) (1 : Fin 5).succ) =
          Integer.Sparse.eval reductionProjection4869 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20616 hH))).trans (reductionSound4869 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst (splitFirst reductionPivot7171 (Pi.single (3 : Fin 5) 1 - Pi.single 0 1)) (2 : Fin 5).succ) = canonicalInput20617.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst (splitFirst reductionPivot7171 (Pi.single (3 : Fin 5) 1 - Pi.single 0 1)) (2 : Fin 5).succ) =
        Integer.Sparse.eval reductionProjection4869 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst (splitFirst reductionPivot7171 (Pi.single (3 : Fin 5) 1 - Pi.single 0 1)) (2 : Fin 5).succ) =
          Integer.Sparse.eval reductionProjection4869 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20617 hH))).trans (reductionSound4869 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst (splitFirst reductionPivot7171 (Pi.single (3 : Fin 5) 1 - Pi.single 0 1)) (3 : Fin 5).succ) = canonicalInput20618.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst (splitFirst reductionPivot7171 (Pi.single (3 : Fin 5) 1 - Pi.single 0 1)) (3 : Fin 5).succ) =
        Integer.Sparse.eval reductionProjection7167 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst (splitFirst reductionPivot7171 (Pi.single (3 : Fin 5) 1 - Pi.single 0 1)) (3 : Fin 5).succ) =
          Integer.Sparse.eval reductionProjection7167 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20618 hH))).trans (reductionSound7167 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst (splitFirst reductionPivot7171 (Pi.single (3 : Fin 5) 1 - Pi.single 0 1)) (4 : Fin 5).succ) = canonicalInput20619.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst (splitFirst reductionPivot7171 (Pi.single (3 : Fin 5) 1 - Pi.single 0 1)) (4 : Fin 5).succ) =
        Integer.Sparse.eval reductionProjection7170 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst (splitFirst reductionPivot7171 (Pi.single (3 : Fin 5) 1 - Pi.single 0 1)) (4 : Fin 5).succ) =
          Integer.Sparse.eval reductionProjection7170 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20619 hH))).trans (reductionSound7170 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3682).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst (splitFirst reductionPivot7171 (Pi.single (3 : Fin 5) 1 - Pi.single 0 1)) (j : Fin 5).succ)) j = 0 := by
    linarith [hr]
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3682).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst (splitFirst reductionPivot7171 (Pi.single (3 : Fin 5) 1 - Pi.single 0 1)) (j : Fin 5).succ))
      1 720 2880 4 ![360, 2880, 2880, 1440, 144] ![8, 1, 1, 2, 20] reductionProjection7171 ![reductionProjection7165, reductionProjection4869, reductionProjection4869, reductionProjection7167, reductionProjection7170]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7172 : Integer.Sparse (Fin 1613) := [(0, -21), (81, 240), (94, -40), (169, -180), (228, 60), (269, -360), (287, -180), (360, 720), (361, -720), (362, -2160), (379, -2160), (426, -1440), (478, -720), (516, -720), (518, -1440), (546, -360), (556, 720), (563, -360), (602, -4140), (635, -1440), (636, -360), (638, -180), (655, -720), (666, -1980), (667, 360), (697, 180), (698, -1640), (821, 360), (822, 360), (831, -720), (848, 720), (849, 360), (859, 360), (874, 360), (887, 720), (888, 360), (890, -1890), (938, 720), (943, -360), (973, 720), (979, 720), (1027, -720), (1050, 60), (1058, 240), (1059, -260), (1168, 720), (1171, 720), (1190, 2160), (1212, -120), (1220, -120), (1221, 300), (1223, 60), (1226, -380), (1227, -510), (1228, -720), (1251, 385), (1389, 1080)]

def reductionPivot7172 : Matrix (Fin 6) (Fin 6) ℤ := ![![-1, 0, 0, 0, 0, 1], ![-1, 0, 0, 0, 2, -1], ![0, -2, 1, 1, 0, 0], ![0, 1, -2, 1, 0, 0], ![2, 0, 0, 0, -1, -1], ![0, 1, 1, -2, -1, 1]]

theorem reductionSound7172 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * (normalNode8457).moment H =
      Integer.Sparse.eval reductionProjection7172 (momentVector H) := by
  have heq : reductionPivot7172 = (fun u v => (normalNode8457).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation151 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8457).moment H = injectiveMoment H reductionPivot7172 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 6) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode8457).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation151)).trans (injectiveMoment_transpose H (normalNode8457).entries)).symm
  have hshape : reductionPivot7172 0 = Pi.single (5 : Fin 6) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot7172 5 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 1440, 288, 720] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7172 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection7150, reductionProjection7162, reductionProjection7162, reductionProjection7164, reductionProjection7171] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7172 (0 : Fin 5)) = canonicalInput6927.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7172 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7150 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7172 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7150 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 6) ℤ => injectiveMoment H M) he).trans (canonicalSound6927 hH))).trans (reductionSound7150 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7172 (1 : Fin 5)) = canonicalInput20689.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7172 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7162 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7172 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7162 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 6) ℤ => injectiveMoment H M) he).trans (canonicalSound20689 hH))).trans (reductionSound7162 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7172 (2 : Fin 5)) = canonicalInput20691.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7172 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7162 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7172 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7162 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 6) ℤ => injectiveMoment H M) he).trans (canonicalSound20691 hH))).trans (reductionSound7162 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7172 (3 : Fin 5)) = canonicalInput20692.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7172 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7164 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7172 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7164 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 6) ℤ => injectiveMoment H M) he).trans (canonicalSound20692 hH))).trans (reductionSound7164 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7172 (4 : Fin 5)) = canonicalInput20693.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7172 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7171 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7172 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7171 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 6) ℤ => injectiveMoment H M) he).trans (canonicalSound20693 hH))).trans (reductionSound7171 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode8457).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7172 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8457).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7172 (j : Fin 5)))
      1 360 1440 4 ![1440, 1440, 1440, 288, 720] ![1, 1, 1, 5, 2] reductionProjection7172 ![reductionProjection7150, reductionProjection7162, reductionProjection7162, reductionProjection7164, reductionProjection7171]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7173 : Integer.Sparse (Fin 1613) := [(0, 1), (169, 120), (602, 480), (635, 240), (636, 240), (638, 240), (698, 160), (821, 80), (848, -240), (890, 60), (943, -480), (1026, 120), (1027, 120), (1226, 80), (1227, 60), (1251, -25)]

def reductionPivot7173 : Matrix (Fin 6) (Fin 6) ℤ := ![![0, 1, 0, 0, 0, -1], ![-1, -1, 0, 0, 0, 2], ![0, 0, -2, 1, 1, 0], ![0, 0, 1, -2, 1, 0], ![0, 0, 1, 1, -2, 0], ![1, 0, 0, 0, 0, -1]]

theorem reductionSound7173 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * (normalNode8062).moment H =
      Integer.Sparse.eval reductionProjection7173 (momentVector H) := by
  have heq : reductionPivot7173 = (fun u v => (normalNode8062).entries (OAI.MUB6.Certificate.PairSemantics.permutation258 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8062).moment H = injectiveMoment H reductionPivot7173 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 6) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8062).entries OAI.MUB6.Certificate.PairSemantics.permutation258)).symm
  have hshape : reductionPivot7173 0 = Pi.single (1 : Fin 6) 1 - Pi.single 5 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot7173 1 5 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![480, 288, 288, 288, 240] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7173 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection7144, reductionProjection7164, reductionProjection7164, reductionProjection7164, reductionProjection7145] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7173 (0 : Fin 5)) = canonicalInput20551.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7173 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7144 (momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7173 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7144 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 6) ℤ => injectiveMoment H M) he).trans (canonicalSound20551 hH))).trans (reductionSound7144 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7173 (1 : Fin 5)) = canonicalInput15620.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7173 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7164 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7173 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7164 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 6) ℤ => injectiveMoment H M) he).trans (canonicalSound15620 hH))).trans (reductionSound7164 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7173 (2 : Fin 5)) = canonicalInput15601.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7173 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7164 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7173 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7164 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 6) ℤ => injectiveMoment H M) he).trans (canonicalSound15601 hH))).trans (reductionSound7164 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7173 (3 : Fin 5)) = canonicalInput15599.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7173 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7164 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7173 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7164 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 6) ℤ => injectiveMoment H M) he).trans (canonicalSound15599 hH))).trans (reductionSound7164 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7173 (4 : Fin 5)) = canonicalInput15598.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7173 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7145 (momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7173 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7145 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 6) ℤ => injectiveMoment H M) he).trans (canonicalSound15598 hH))).trans (reductionSound7145 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode8062).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7173 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8062).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7173 (j : Fin 5)))
      1 80 1440 18 ![480, 288, 288, 288, 240] ![3, 5, 5, 5, 6] reductionProjection7173 ![reductionProjection7144, reductionProjection7164, reductionProjection7164, reductionProjection7164, reductionProjection7145]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7174 : Integer.Sparse (Fin 1613) := [(0, 1), (360, 960), (698, 160), (821, 480), (822, 480), (848, -480), (943, -960), (1226, 80), (1227, 160), (1251, -25)]

def reductionPivot7174 : Matrix (Fin 6) (Fin 6) ℤ := ![![1, -1, 0, 0, 0, 0], ![-1, -1, 0, 0, 0, 2], ![0, 0, -2, 1, 1, 0], ![0, 0, 1, -2, 1, 0], ![0, 0, 1, 1, -2, 0], ![0, 2, 0, 0, 0, -2]]

theorem reductionSound7174 {H : CMatrix} (hH : IsHadamard H) :
    (160 : ℝ) * (normalNode8063).moment H =
      Integer.Sparse.eval reductionProjection7174 (momentVector H) := by
  have heq : reductionPivot7174 = (fun u v => (normalNode8063).entries (OAI.MUB6.Certificate.PairSemantics.permutation308 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8063).moment H = injectiveMoment H reductionPivot7174 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 6) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8063).entries OAI.MUB6.Certificate.PairSemantics.permutation308)).symm
  have hshape : reductionPivot7174 0 = Pi.single (0 : Fin 6) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot7174 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1, 1440, 1440, 1440, 240] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7174 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection6994, reductionProjection7150, reductionProjection7150, reductionProjection7150, reductionProjection7145] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7174 (0 : Fin 5)) = canonicalInput24025.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7174 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6994 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7174 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6994 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 6) ℤ => injectiveMoment H M) he).trans (canonicalSound24025 hH))).trans (reductionSound6994 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7174 (1 : Fin 5)) = canonicalInput15622.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7174 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7150 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7174 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7150 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 6) ℤ => injectiveMoment H M) he).trans (canonicalSound15622 hH))).trans (reductionSound7150 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7174 (2 : Fin 5)) = canonicalInput15602.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7174 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7150 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7174 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7150 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 6) ℤ => injectiveMoment H M) he).trans (canonicalSound15602 hH))).trans (reductionSound7150 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7174 (3 : Fin 5)) = canonicalInput15600.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7174 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7150 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7174 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7150 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 6) ℤ => injectiveMoment H M) he).trans (canonicalSound15600 hH))).trans (reductionSound7150 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7174 (4 : Fin 5)) = canonicalInput15598.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7174 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7145 (momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7174 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7145 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 6) ℤ => injectiveMoment H M) he).trans (canonicalSound15598 hH))).trans (reductionSound7145 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode8063).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7174 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8063).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7174 (j : Fin 5)))
      1 160 1440 9 ![1, 1440, 1440, 1440, 240] ![1440, 1, 1, 1, 6] reductionProjection7174 ![reductionProjection6994, reductionProjection7150, reductionProjection7150, reductionProjection7150, reductionProjection7145]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7175 : Integer.Sparse (Fin 1613) := [(0, 15), (81, -192), (94, 32), (228, -48), (269, 288), (287, 144), (360, -1152), (361, 576), (362, 1728), (379, 1728), (426, 1152), (478, 576), (516, 576), (518, 1152), (546, 288), (556, -576), (563, 288), (602, 2736), (635, 864), (638, -144), (655, 576), (666, 1584), (667, -288), (697, -144), (698, 1024), (821, -672), (822, -576), (831, 576), (849, -288), (859, -288), (874, -288), (887, -576), (888, -288), (890, 1440), (938, -576), (943, 1440), (973, -576), (979, -576), (1026, -144), (1027, 432), (1050, -48), (1058, -192), (1059, 208), (1168, -576), (1171, -576), (1190, -1728), (1212, 96), (1220, 96), (1221, -240), (1223, -48), (1226, 160), (1227, 240), (1228, 576), (1251, -263), (1389, -864)]

def reductionPivot7175 : Matrix (Fin 6) (Fin 6) ℤ := ![![-2, 0, 0, 0, 1, 1], ![0, -1, -1, 2, 0, 0], ![0, -1, 2, -1, 0, 0], ![0, 2, -1, -1, 0, 0], ![1, 0, 0, 0, -2, 1], ![1, 0, 0, 0, 1, -2]]

theorem reductionSound7175 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * (normalNode3657).moment H =
      Integer.Sparse.eval reductionProjection7175 (momentVector H) := by
  have heq : reductionPivot7175 = (fun u v => (normalNode3657).entries (OAI.MUB6.Certificate.PairSemantics.permutation151 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3657).moment H = injectiveMoment H reductionPivot7175 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 6) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3657).entries OAI.MUB6.Certificate.PairSemantics.permutation151)).symm
  have hr := six_row_reduction hH reductionPivot7175 4 0 (by decide)
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![360, 360, 360, 80, 160] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst (splitFirst reductionPivot7175 (Pi.single (4 : Fin 6) 1 - Pi.single 0 1)) (j : Fin 5).succ)) j =
        Integer.Sparse.eval (![reductionProjection7172, reductionProjection7172, reductionProjection7172, reductionProjection7173, reductionProjection7174] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst (splitFirst reductionPivot7175 (Pi.single (4 : Fin 6) 1 - Pi.single 0 1)) (0 : Fin 5).succ) = canonicalInput20542.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst (splitFirst reductionPivot7175 (Pi.single (4 : Fin 6) 1 - Pi.single 0 1)) (0 : Fin 5).succ) =
        Integer.Sparse.eval reductionProjection7172 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst (splitFirst reductionPivot7175 (Pi.single (4 : Fin 6) 1 - Pi.single 0 1)) (0 : Fin 5).succ) =
          Integer.Sparse.eval reductionProjection7172 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 6) ℤ => injectiveMoment H M) he).trans (canonicalSound20542 hH))).trans (reductionSound7172 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst (splitFirst reductionPivot7175 (Pi.single (4 : Fin 6) 1 - Pi.single 0 1)) (1 : Fin 5).succ) = canonicalInput20547.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst (splitFirst reductionPivot7175 (Pi.single (4 : Fin 6) 1 - Pi.single 0 1)) (1 : Fin 5).succ) =
        Integer.Sparse.eval reductionProjection7172 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst (splitFirst reductionPivot7175 (Pi.single (4 : Fin 6) 1 - Pi.single 0 1)) (1 : Fin 5).succ) =
          Integer.Sparse.eval reductionProjection7172 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 6) ℤ => injectiveMoment H M) he).trans (canonicalSound20547 hH))).trans (reductionSound7172 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst (splitFirst reductionPivot7175 (Pi.single (4 : Fin 6) 1 - Pi.single 0 1)) (2 : Fin 5).succ) = canonicalInput20548.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst (splitFirst reductionPivot7175 (Pi.single (4 : Fin 6) 1 - Pi.single 0 1)) (2 : Fin 5).succ) =
        Integer.Sparse.eval reductionProjection7172 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst (splitFirst reductionPivot7175 (Pi.single (4 : Fin 6) 1 - Pi.single 0 1)) (2 : Fin 5).succ) =
          Integer.Sparse.eval reductionProjection7172 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 6) ℤ => injectiveMoment H M) he).trans (canonicalSound20548 hH))).trans (reductionSound7172 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst (splitFirst reductionPivot7175 (Pi.single (4 : Fin 6) 1 - Pi.single 0 1)) (3 : Fin 5).succ) = canonicalInput20549.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((80 : ℤ) : ℝ) * injectiveMoment H (mergeFirst (splitFirst reductionPivot7175 (Pi.single (4 : Fin 6) 1 - Pi.single 0 1)) (3 : Fin 5).succ) =
        Integer.Sparse.eval reductionProjection7173 (momentVector H)
      have hh : (80 : ℝ) * injectiveMoment H (mergeFirst (splitFirst reductionPivot7175 (Pi.single (4 : Fin 6) 1 - Pi.single 0 1)) (3 : Fin 5).succ) =
          Integer.Sparse.eval reductionProjection7173 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 6) ℤ => injectiveMoment H M) he).trans (canonicalSound20549 hH))).trans (reductionSound7173 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst (splitFirst reductionPivot7175 (Pi.single (4 : Fin 6) 1 - Pi.single 0 1)) (4 : Fin 5).succ) = canonicalInput20550.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((160 : ℤ) : ℝ) * injectiveMoment H (mergeFirst (splitFirst reductionPivot7175 (Pi.single (4 : Fin 6) 1 - Pi.single 0 1)) (4 : Fin 5).succ) =
        Integer.Sparse.eval reductionProjection7174 (momentVector H)
      have hh : (160 : ℝ) * injectiveMoment H (mergeFirst (splitFirst reductionPivot7175 (Pi.single (4 : Fin 6) 1 - Pi.single 0 1)) (4 : Fin 5).succ) =
          Integer.Sparse.eval reductionProjection7174 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (160 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 6) ℤ => injectiveMoment H M) he).trans (canonicalSound20550 hH))).trans (reductionSound7174 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3657).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst (splitFirst reductionPivot7175 (Pi.single (4 : Fin 6) 1 - Pi.single 0 1)) (j : Fin 5).succ)) j = 0 := by
    linarith [hr]
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3657).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst (splitFirst reductionPivot7175 (Pi.single (4 : Fin 6) 1 - Pi.single 0 1)) (j : Fin 5).succ))
      1 96 1440 15 ![360, 360, 360, 80, 160] ![4, 4, 4, 18, 9] reductionProjection7175 ![reductionProjection7172, reductionProjection7172, reductionProjection7172, reductionProjection7173, reductionProjection7174]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7176 : Integer.Sparse (Fin 1613) := [(0, 7), (433, 1440), (698, 400), (865, 720), (869, 720), (964, -1440), (966, -1440), (1059, 320), (1221, -480), (1227, 160), (1251, -215), (1389, -240)]

def reductionPivot7176 : Matrix (Fin 5) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![-1, -1, 1, 1, 0], ![0, 0, 1, 1, -2], ![0, 2, -2, 0, 0], ![2, -1, 0, -2, 1]]

theorem reductionSound7176 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode8178).moment H =
      Integer.Sparse.eval reductionProjection7176 (momentVector H) := by
  have heq : reductionPivot7176 = (fun u v => (normalNode8178).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation33 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8178).moment H = injectiveMoment H reductionPivot7176 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode8178).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation33)).trans (injectiveMoment_transpose H (normalNode8178).entries)).symm
  have hshape : reductionPivot7176 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot7176 4 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 288, 1, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7176 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection2918, reductionProjection2791, reductionProjection3427, reductionProjection3281] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7176 (0 : Fin 4)) = canonicalInput4544.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7176 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2918 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7176 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2918 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound4544 hH))).trans (reductionSound2918 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7176 (1 : Fin 4)) = canonicalInput18369.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7176 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2791 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7176 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2791 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound18369 hH))).trans (reductionSound2791 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7176 (2 : Fin 4)) = canonicalInput18472.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7176 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3427 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7176 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3427 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound18472 hH))).trans (reductionSound3427 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7176 (3 : Fin 4)) = canonicalInput18473.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7176 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3281 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7176 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3281 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound18473 hH))).trans (reductionSound3281 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8178).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7176 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8178).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7176 (j : Fin 4)))
      2 2880 2880 2 ![1, 288, 1, 720] ![2880, 10, 2880, 4] reductionProjection7176 ![reductionProjection2918, reductionProjection2791, reductionProjection3427, reductionProjection3281]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7177 : Integer.Sparse (Fin 1613) := [(94, 1), (426, 36), (433, 36), (698, 40), (865, 72), (869, 36), (890, 36), (956, 36), (1055, -24), (1059, 20), (1221, -12), (1227, 20), (1251, -15)]

def reductionPivot7177 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, -1, 0, 1, 0], ![-1, -1, 0, 0, 2], ![0, 0, 2, -2, 0], ![0, 2, -1, 0, -1], ![1, 0, -1, 1, -1]]

theorem reductionSound7177 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode8158).moment H =
      Integer.Sparse.eval reductionProjection7177 (momentVector H) := by
  have heq : reductionPivot7177 = (fun u v => (normalNode8158).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8158).moment H = injectiveMoment H reductionPivot7177 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8158).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot7177 0 = Pi.single (3 : Fin 5) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot7177 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1440, 144, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7177 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection3281, oldProjection2056, oldProjection2055, reductionProjection3369] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7177 (0 : Fin 4)) = canonicalInput13239.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7177 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3281 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7177 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3281 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13239 hH))).trans (reductionSound3281 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7177 (1 : Fin 4)) = canonicalInput15751.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7177 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2056 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7177 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2056 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15751 hH))).trans (oldProjectionSound2056 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7177 (2 : Fin 4)) = canonicalInput16120.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7177 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection2055 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7177 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection2055 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16120 hH))).trans (oldProjectionSound2055 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7177 (3 : Fin 4)) = canonicalInput16122.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7177 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3369 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7177 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3369 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16122 hH))).trans (reductionSound3369 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8158).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7177 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8158).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7177 (j : Fin 4)))
      2 144 1440 20 ![720, 1440, 144, 1440] ![2, 1, 10, 1] reductionProjection7177 ![reductionProjection3281, oldProjection2056, oldProjection2055, reductionProjection3369]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7178 : Integer.Sparse (Fin 1613) := [(819, 1)]

theorem reductionSound7178 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code819).moment H =
      Integer.Sparse.eval reductionProjection7178 (momentVector H) := by
  have hc : coordinates (819 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code819) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection7178, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection7179 : Integer.Sparse (Fin 1613) := [(0, -2), (94, 5), (426, 720), (698, 320), (838, -1440), (865, 1440), (869, 720), (890, 720), (966, -1440), (1050, -480), (1059, 240), (1221, -240), (1227, 80), (1251, 35)]

def reductionPivot7179 : Matrix (Fin 5) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![0, -2, 0, 2, 0], ![0, 0, 2, 0, -2], ![2, 0, -1, -1, 0], ![-1, 2, -1, -1, 1]]

theorem reductionSound7179 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode10757).moment H =
      Integer.Sparse.eval reductionProjection7179 (momentVector H) := by
  have heq : reductionPivot7179 = (fun u v => (normalNode10757).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation33 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10757).moment H = injectiveMoment H reductionPivot7179 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode10757).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation33)).trans (injectiveMoment_transpose H (normalNode10757).entries)).symm
  have hshape : reductionPivot7179 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot7179 4 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1440, 1440, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7179 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection2918, reductionProjection3369, reductionProjection2909, reductionProjection3453] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7179 (0 : Fin 4)) = canonicalInput13341.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7179 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2918 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7179 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2918 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13341 hH))).trans (reductionSound2918 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7179 (1 : Fin 4)) = canonicalInput24180.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7179 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3369 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7179 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3369 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound24180 hH))).trans (reductionSound3369 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7179 (2 : Fin 4)) = canonicalInput24203.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7179 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2909 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7179 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2909 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound24203 hH))).trans (reductionSound2909 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7179 (3 : Fin 4)) = canonicalInput24204.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7179 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3453 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7179 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3453 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound24204 hH))).trans (reductionSound3453 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10757).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7179 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10757).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7179 (j : Fin 4)))
      2 2880 2880 2 ![1, 1440, 1440, 1] ![2880, 2, 2, 2880] reductionProjection7179 ![reductionProjection2918, reductionProjection3369, reductionProjection2909, reductionProjection3453]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7180 : Integer.Sparse (Fin 1613) := [(0, -7), (94, -40), (426, -1440), (433, -2880), (698, -1920), (819, -2880), (838, 1440), (865, -4320), (869, -2880), (890, -1440), (956, -720), (964, 1440), (966, 2880), (1050, 960), (1055, 720), (1059, -1280), (1221, 1440), (1227, -880), (1251, 695), (1389, 480)]

def reductionPivot7180 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, 0, 1, -1, 0], ![-2, 0, 0, 0, 2], ![0, -2, 0, 2, 0], ![0, 0, 1, 0, -1], ![1, 1, -2, 0, 0], ![1, 1, 0, -1, -1]]

theorem reductionSound7180 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode3658).moment H =
      Integer.Sparse.eval reductionProjection7180 (momentVector H) := by
  have heq : reductionPivot7180 = (fun u v => (normalNode3658).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3658).moment H = injectiveMoment H reductionPivot7180 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3658).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot7180 0 = Pi.single (2 : Fin 5) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot7180 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![2880, 144, 1, 2880, 2880] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7180 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection7176, reductionProjection7177, reductionProjection7178, reductionProjection2950, reductionProjection7179] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7180 (0 : Fin 5)) = canonicalInput8095.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7180 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7176 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7180 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7176 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound8095 hH))).trans (reductionSound7176 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7180 (1 : Fin 5)) = canonicalInput6886.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7180 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7177 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7180 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7177 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound6886 hH))).trans (reductionSound7177 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7180 (2 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code819).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7180 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7178 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7180 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7178 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he)).trans (reductionSound7178 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7180 (3 : Fin 5)) = canonicalInput6878.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7180 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2950 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7180 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2950 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound6878 hH))).trans (reductionSound2950 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7180 (4 : Fin 5)) = canonicalInput6877.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7180 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7179 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7180 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7179 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound6877 hH))).trans (reductionSound7179 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3658).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7180 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3658).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7180 (j : Fin 5)))
      1 2880 2880 1 ![2880, 144, 1, 2880, 2880] ![1, 20, 2880, 1, 1] reductionProjection7180 ![reductionProjection7176, reductionProjection7177, reductionProjection7178, reductionProjection2950, reductionProjection7179]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7181 : Integer.Sparse (Fin 1613) := [(820, 1)]

theorem reductionSound7181 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code820).moment H =
      Integer.Sparse.eval reductionProjection7181 (momentVector H) := by
  have hc : coordinates (820 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code820) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection7181, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection7182 : Integer.Sparse (Fin 1613) := [(0, 31), (94, 20), (434, 720), (698, 160), (869, 720), (957, 1440), (1055, -240), (1195, -1440), (1227, 240), (1251, -115), (1362, -1440), (1388, -240)]

def reductionPivot7182 : Matrix (Fin 5) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![-1, -1, 1, 1, 0], ![0, -1, 1, 1, -1], ![0, 1, -2, 0, 1], ![2, 1, 0, -2, -1]]

theorem reductionSound7182 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode8104).moment H =
      Integer.Sparse.eval reductionProjection7182 (momentVector H) := by
  have heq : reductionPivot7182 = (fun u v => (normalNode8104).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation33 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8104).moment H = injectiveMoment H reductionPivot7182 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode8104).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation33)).trans (injectiveMoment_transpose H (normalNode8104).entries)).symm
  have hshape : reductionPivot7182 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot7182 4 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 720, 1, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7182 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection3062, reductionProjection2790, reductionProjection3787, oldProjection2057] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7182 (0 : Fin 4)) = canonicalInput4411.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7182 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3062 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7182 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3062 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound4411 hH))).trans (reductionSound3062 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7182 (1 : Fin 4)) = canonicalInput18359.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7182 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2790 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7182 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2790 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound18359 hH))).trans (reductionSound2790 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7182 (2 : Fin 4)) = canonicalInput18414.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7182 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3787 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7182 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3787 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound18414 hH))).trans (reductionSound3787 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7182 (3 : Fin 4)) = canonicalInput18418.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7182 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2057 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7182 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2057 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound18418 hH))).trans (oldProjectionSound2057 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8104).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7182 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8104).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7182 (j : Fin 4)))
      2 2880 2880 2 ![1, 720, 1, 1440] ![2880, 4, 2880, 2] reductionProjection7182 ![reductionProjection3062, reductionProjection2790, reductionProjection3787, oldProjection2057]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7183 : Integer.Sparse (Fin 1613) := [(0, 17), (94, 15), (433, 360), (698, 320), (865, 360), (869, 720), (957, 360), (1055, -360), (1059, 120), (1221, -120), (1227, 320), (1251, -150), (1389, -120)]

def reductionPivot7183 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, -1, 0, 1, 0], ![-1, -1, 0, 0, 2], ![0, 0, 2, -2, 0], ![0, 1, -1, 1, -1], ![1, 1, -1, 0, -1]]

theorem reductionSound7183 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode8157).moment H =
      Integer.Sparse.eval reductionProjection7183 (momentVector H) := by
  have heq : reductionPivot7183 = (fun u v => (normalNode8157).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8157).moment H = injectiveMoment H reductionPivot7183 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8157).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot7183 0 = Pi.single (3 : Fin 5) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot7183 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![288, 1440, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7183 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection2791, oldProjection2057, oldProjection2013, oldProjection2055] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7183 (0 : Fin 4)) = canonicalInput13236.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7183 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2791 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7183 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2791 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13236 hH))).trans (reductionSound2791 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7183 (1 : Fin 4)) = canonicalInput15750.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7183 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2057 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7183 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2057 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15750 hH))).trans (oldProjectionSound2057 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7183 (2 : Fin 4)) = canonicalInput16114.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7183 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection2013 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7183 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection2013 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16114 hH))).trans (oldProjectionSound2013 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7183 (3 : Fin 4)) = canonicalInput16120.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7183 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2055 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7183 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2055 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16120 hH))).trans (oldProjectionSound2055 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8157).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7183 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8157).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7183 (j : Fin 4)))
      2 1440 1440 2 ![288, 1440, 144, 144] ![5, 1, 10, 10] reductionProjection7183 ![reductionProjection2791, oldProjection2057, oldProjection2013, oldProjection2055]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7184 : Integer.Sparse (Fin 1613) := [(0, -101), (94, -115), (426, -720), (433, -2880), (434, -720), (698, -2640), (865, -3600), (869, -5040), (890, -720), (956, -720), (957, -2880), (1050, 480), (1055, 2400), (1059, -1200), (1195, 1440), (1221, 1200), (1227, -2160), (1251, 1230), (1362, 1440), (1388, 240), (1389, 720)]

def reductionPivot7184 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, 0, -1, 1, 0], ![-2, 0, 0, 0, 2], ![0, -2, 1, 1, 0], ![0, 0, 1, 0, -1], ![1, 1, -1, -1, 0], ![1, 1, 0, -1, -1]]

theorem reductionSound7184 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode3659).moment H =
      Integer.Sparse.eval reductionProjection7184 (momentVector H) := by
  have heq : reductionPivot7184 = (fun u v => (normalNode3659).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3659).moment H = injectiveMoment H reductionPivot7184 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3659).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot7184 0 = Pi.single (3 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot7184 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![2880, 2880, 1440, 144, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7184 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection7182, reductionProjection2950, reductionProjection7183, reductionProjection7177, reductionProjection7183] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7184 (0 : Fin 5)) = canonicalInput6392.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7184 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7182 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7184 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7182 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound6392 hH))).trans (reductionSound7182 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7184 (1 : Fin 5)) = canonicalInput6878.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7184 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2950 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7184 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2950 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound6878 hH))).trans (reductionSound2950 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7184 (2 : Fin 5)) = canonicalInput6885.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7184 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7183 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7184 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7183 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound6885 hH))).trans (reductionSound7183 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7184 (3 : Fin 5)) = canonicalInput6886.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7184 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7177 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7184 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7177 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound6886 hH))).trans (reductionSound7177 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7184 (4 : Fin 5)) = canonicalInput6887.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7184 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7183 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7184 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7183 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound6887 hH))).trans (reductionSound7183 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3659).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7184 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3659).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7184 (j : Fin 5)))
      1 2880 2880 1 ![2880, 2880, 1440, 144, 1440] ![1, 1, 2, 20, 2] reductionProjection7184 ![reductionProjection7182, reductionProjection2950, reductionProjection7183, reductionProjection7177, reductionProjection7183]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7185 : Integer.Sparse (Fin 1613) := [(0, 3), (94, 10), (423, 720), (698, 320), (864, 720), (865, 1440), (1050, -480), (1059, 240), (1221, -480), (1227, 80), (1251, 55)]

def reductionPivot7185 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, -1, 0, 1, 0], ![-1, -1, 0, 0, 2], ![0, 0, 2, -2, 0], ![0, 2, 0, 0, -2], ![1, 0, -2, 1, 0]]

theorem reductionSound7185 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode8159).moment H =
      Integer.Sparse.eval reductionProjection7185 (momentVector H) := by
  have heq : reductionPivot7185 = (fun u v => (normalNode8159).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8159).moment H = injectiveMoment H reductionPivot7185 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8159).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot7185 0 = Pi.single (3 : Fin 5) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot7185 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 1440, 1440, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7185 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection2651, oldProjection1999, oldProjection1999, reductionProjection2651] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7185 (0 : Fin 4)) = canonicalInput13240.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7185 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2651 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7185 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2651 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13240 hH))).trans (reductionSound2651 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7185 (1 : Fin 4)) = canonicalInput15752.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7185 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1999 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7185 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1999 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15752 hH))).trans (oldProjectionSound1999 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7185 (2 : Fin 4)) = canonicalInput16121.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7185 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1999 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7185 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1999 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16121 hH))).trans (oldProjectionSound1999 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7185 (3 : Fin 4)) = canonicalInput16123.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7185 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2651 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7185 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2651 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16123 hH))).trans (reductionSound2651 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8159).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7185 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8159).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7185 (j : Fin 4)))
      2 1440 1440 2 ![1440, 1440, 1440, 1440] ![1, 1, 1, 1] reductionProjection7185 ![reductionProjection2651, oldProjection1999, oldProjection1999, reductionProjection2651]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7186 : Integer.Sparse (Fin 1613) := [(0, 1), (94, 45), (241, 80), (698, 1120), (865, 720), (1050, -480), (1059, 640), (1221, -480), (1226, 80), (1227, 400), (1251, -200)]

def reductionPivot7186 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 1, 0, -1], ![-1, -1, 0, 0, 2], ![0, 0, -2, 2, 0], ![0, 1, 0, 0, -1], ![1, 0, 1, -2, 0]]

theorem reductionSound7186 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode8294).moment H =
      Integer.Sparse.eval reductionProjection7186 (momentVector H) := by
  have heq : reductionPivot7186 = (fun u v => (normalNode8294).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8294).moment H = injectiveMoment H reductionPivot7186 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8294).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot7186 0 = Pi.single (2 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot7186 2 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 720, 1440, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7186 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection2743, oldProjection2583, oldProjection1999, oldProjection2805] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7186 (0 : Fin 4)) = canonicalInput17901.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7186 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection2743 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7186 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection2743 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17901 hH))).trans (oldProjectionSound2743 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7186 (1 : Fin 4)) = canonicalInput15946.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7186 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2583 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7186 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2583 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15946 hH))).trans (oldProjectionSound2583 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7186 (2 : Fin 4)) = canonicalInput15810.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7186 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1999 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7186 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1999 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15810 hH))).trans (oldProjectionSound1999 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7186 (3 : Fin 4)) = canonicalInput15803.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7186 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2805 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7186 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2805 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15803 hH))).trans (oldProjectionSound2805 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8294).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7186 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8294).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7186 (j : Fin 4)))
      2 2880 2880 2 ![1440, 720, 1440, 720] ![2, 4, 2, 4] reductionProjection7186 ![oldProjection2743, oldProjection2583, oldProjection1999, oldProjection2805]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7187 : Integer.Sparse (Fin 1613) := [(0, -3), (94, -20), (241, -20), (423, -360), (426, -180), (602, -720), (635, -180), (666, -360), (698, -580), (822, -720), (848, 360), (859, 360), (864, -360), (865, -900), (887, 360), (890, -360), (1050, 420), (1059, -360), (1190, 360), (1221, 420), (1226, -20), (1227, -140), (1251, 45)]

def reductionPivot7187 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, 0, -1, 1, 0], ![-2, 0, 0, 0, 2], ![0, -2, 1, 1, 0], ![0, 1, 0, 0, -1], ![0, 1, 1, -2, 0], ![2, 0, -1, 0, -1]]

theorem reductionSound7187 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode3660).moment H =
      Integer.Sparse.eval reductionProjection7187 (momentVector H) := by
  have heq : reductionPivot7187 = (fun u v => (normalNode3660).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3660).moment H = injectiveMoment H reductionPivot7187 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3660).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot7187 0 = Pi.single (3 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot7187 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![2880, 1440, 1, 2880, 2880] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7187 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection3614, reductionProjection7185, reductionProjection7149, reductionProjection7186, reductionProjection7169] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7187 (0 : Fin 5)) = canonicalInput6393.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7187 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3614 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7187 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3614 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound6393 hH))).trans (reductionSound3614 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7187 (1 : Fin 5)) = canonicalInput6881.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7187 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7185 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7187 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7185 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound6881 hH))).trans (reductionSound7185 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7187 (2 : Fin 5)) = canonicalInput6892.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7187 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7149 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7187 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7149 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound6892 hH))).trans (reductionSound7149 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7187 (3 : Fin 5)) = canonicalInput6896.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7187 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7186 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7187 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7186 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound6896 hH))).trans (reductionSound7186 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7187 (4 : Fin 5)) = canonicalInput6897.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7187 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7169 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7187 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7169 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound6897 hH))).trans (reductionSound7169 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3660).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7187 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3660).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7187 (j : Fin 5)))
      1 720 2880 4 ![2880, 1440, 1, 2880, 2880] ![1, 2, 2880, 1, 1] reductionProjection7187 ![reductionProjection3614, reductionProjection7185, reductionProjection7149, reductionProjection7186, reductionProjection7169]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7188 : Integer.Sparse (Fin 1613) := [(0, 18), (94, 45), (241, 80), (698, 720), (869, 720), (1050, -240), (1055, -240), (1059, 320), (1221, -480), (1226, 80), (1227, 400), (1251, -265), (1389, -240)]

def reductionPivot7188 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 1, -1, 0], ![-1, -1, 0, 0, 2], ![0, 0, -2, 2, 0], ![0, 1, 0, 0, -1], ![1, 0, 1, -1, -1]]

theorem reductionSound7188 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode8288).moment H =
      Integer.Sparse.eval reductionProjection7188 (momentVector H) := by
  have heq : reductionPivot7188 = (fun u v => (normalNode8288).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8288).moment H = injectiveMoment H reductionPivot7188 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8288).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot7188 0 = Pi.single (2 : Fin 5) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot7188 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 1440, 144, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7188 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection3212, oldProjection2724, oldProjection2055, oldProjection2805] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7188 (0 : Fin 4)) = canonicalInput17816.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7188 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3212 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7188 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3212 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17816 hH))).trans (reductionSound3212 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7188 (1 : Fin 4)) = canonicalInput15922.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7188 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2724 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7188 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2724 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15922 hH))).trans (oldProjectionSound2724 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7188 (2 : Fin 4)) = canonicalInput15809.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7188 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection2055 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7188 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection2055 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15809 hH))).trans (oldProjectionSound2055 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7188 (3 : Fin 4)) = canonicalInput15803.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7188 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2805 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7188 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2805 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15803 hH))).trans (oldProjectionSound2805 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8288).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7188 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8288).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7188 (j : Fin 4)))
      2 2880 2880 2 ![1440, 1440, 144, 720] ![2, 2, 20, 4] reductionProjection7188 ![reductionProjection3212, oldProjection2724, oldProjection2055, oldProjection2805]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7189 : Integer.Sparse (Fin 1613) := [(824, 1)]

theorem reductionSound7189 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code824).moment H =
      Integer.Sparse.eval reductionProjection7189 (momentVector H) := by
  have hc : coordinates (824 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code824) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection7189, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection7190 : Integer.Sparse (Fin 1613) := [(0, -9), (94, -40), (241, -40), (423, -360), (668, -360), (698, -840), (824, -1440), (848, 720), (864, -360), (865, -720), (869, -720), (943, 1440), (973, 720), (1050, 600), (1055, 120), (1059, -320), (1171, 720), (1190, 720), (1221, 840), (1226, -120), (1227, -400), (1251, 185), (1389, 360)]

def reductionPivot7190 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, 0, -1, 1, 0], ![-2, 0, 0, 0, 2], ![0, -2, 1, 1, 0], ![0, 1, 1, -2, 0], ![1, 0, 0, 0, -1], ![1, 1, -1, 0, -1]]

theorem reductionSound7190 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode3661).moment H =
      Integer.Sparse.eval reductionProjection7190 (momentVector H) := by
  have heq : reductionPivot7190 = (fun u v => (normalNode3661).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3661).moment H = injectiveMoment H reductionPivot7190 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3661).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot7190 0 = Pi.single (3 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot7190 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![72, 2880, 2880, 1, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7190 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection2832, reductionProjection4045, reductionProjection7188, reductionProjection7189, reductionProjection7126] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7190 (0 : Fin 5)) = canonicalInput6394.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7190 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2832 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7190 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2832 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound6394 hH))).trans (reductionSound2832 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7190 (1 : Fin 5)) = canonicalInput6882.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7190 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4045 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7190 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4045 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound6882 hH))).trans (reductionSound4045 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7190 (2 : Fin 5)) = canonicalInput6893.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7190 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7188 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7190 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7188 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound6893 hH))).trans (reductionSound7188 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7190 (3 : Fin 5)) = canonicalInput6900.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7190 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7189 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7190 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7189 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound6900 hH))).trans (reductionSound7189 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7190 (4 : Fin 5)) = canonicalInput6901.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7190 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7126 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7190 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7126 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound6901 hH))).trans (reductionSound7126 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3661).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7190 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3661).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7190 (j : Fin 5)))
      1 1440 2880 2 ![72, 2880, 2880, 1, 1440] ![40, 1, 1, 2880, 2] reductionProjection7190 ![reductionProjection2832, reductionProjection4045, reductionProjection7188, reductionProjection7189, reductionProjection7126]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7191 : Integer.Sparse (Fin 1613) := [(0, 24), (94, 5), (426, 720), (668, 720), (698, 1120), (865, 720), (890, 720), (1016, 720), (1050, -240), (1059, 640), (1221, -720), (1227, 560), (1251, -255), (1389, -240)]

def reductionPivot7191 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 1, 0, -1], ![-1, -1, 0, 0, 2], ![0, -1, -1, 2, 0], ![0, 2, -1, 0, -1], ![1, 0, 1, -2, 0]]

theorem reductionSound7191 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode8120).moment H =
      Integer.Sparse.eval reductionProjection7191 (momentVector H) := by
  have heq : reductionPivot7191 = (fun u v => (normalNode8120).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8120).moment H = injectiveMoment H reductionPivot7191 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8120).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot7191 0 = Pi.single (2 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot7191 2 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 720, 1440, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7191 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection2018, oldProjection2023, oldProjection1999, oldProjection1995] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7191 (0 : Fin 4)) = canonicalInput17877.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7191 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection2018 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7191 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection2018 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17877 hH))).trans (oldProjectionSound2018 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7191 (1 : Fin 4)) = canonicalInput15714.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7191 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2023 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7191 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2023 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15714 hH))).trans (oldProjectionSound2023 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7191 (2 : Fin 4)) = canonicalInput15667.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7191 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1999 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7191 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1999 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15667 hH))).trans (oldProjectionSound1999 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7191 (3 : Fin 4)) = canonicalInput15664.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7191 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1995 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7191 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1995 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15664 hH))).trans (oldProjectionSound1995 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8120).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7191 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8120).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7191 (j : Fin 4)))
      2 2880 2880 2 ![1440, 720, 1440, 1440] ![2, 4, 2, 2] reductionProjection7191 ![oldProjection2018, oldProjection2023, oldProjection1999, oldProjection1995]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7192 : Integer.Sparse (Fin 1613) := [(0, 1), (423, 720), (426, 1440), (668, 1440), (698, 160), (865, 1440), (890, 720), (1016, 720), (1059, 80), (1227, 80), (1251, 15)]

def reductionPivot7192 : Matrix (Fin 5) (Fin 5) ℤ := ![![1, 0, 0, 0, -1], ![-1, -1, 0, 0, 2], ![0, -1, -1, 2, 0], ![0, 0, 2, -2, 0], ![0, 2, -1, 0, -1]]

theorem reductionSound7192 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode8123).moment H =
      Integer.Sparse.eval reductionProjection7192 (momentVector H) := by
  have heq : reductionPivot7192 = (fun u v => (normalNode8123).entries (OAI.MUB6.Certificate.PairSemantics.permutation128 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8123).moment H = injectiveMoment H reductionPivot7192 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8123).entries OAI.MUB6.Certificate.PairSemantics.permutation128)).symm
  have hshape : reductionPivot7192 0 = Pi.single (0 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot7192 0 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1440, 1440, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7192 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1008, reductionProjection3369, oldProjection1995, oldProjection1997] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7192 (0 : Fin 4)) = canonicalInput25013.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7192 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1008 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7192 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1008 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25013 hH))).trans (oldProjectionSound1008 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7192 (1 : Fin 4)) = canonicalInput16190.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7192 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3369 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7192 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3369 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16190 hH))).trans (reductionSound3369 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7192 (2 : Fin 4)) = canonicalInput15669.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7192 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1995 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7192 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1995 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15669 hH))).trans (oldProjectionSound1995 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7192 (3 : Fin 4)) = canonicalInput15647.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7192 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1997 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7192 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1997 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15647 hH))).trans (oldProjectionSound1997 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8123).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7192 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8123).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7192 (j : Fin 4)))
      2 2880 2880 2 ![720, 1440, 1440, 1440] ![4, 2, 2, 2] reductionProjection7192 ![oldProjection1008, reductionProjection3369, oldProjection1995, oldProjection1997]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7193 : Integer.Sparse (Fin 1613) := [(0, -1), (94, 10), (668, 360), (698, 200), (943, -720), (973, -720), (1050, -120), (1059, 120), (1221, -480), (1227, 80), (1251, -25), (1389, -240)]

def reductionPivot7193 : Matrix (Fin 5) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![-1, -1, 1, 1, 0], ![0, 2, -2, 0, 0], ![1, 0, 0, 1, -2], ![1, -1, 1, -2, 1]]

theorem reductionSound7193 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode8574).moment H =
      Integer.Sparse.eval reductionProjection7193 (momentVector H) := by
  have heq : reductionPivot7193 = (fun u v => (normalNode8574).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation33 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8574).moment H = injectiveMoment H reductionPivot7193 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode8574).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation33)).trans (injectiveMoment_transpose H (normalNode8574).entries)).symm
  have hshape : reductionPivot7193 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot7193 4 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1440, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7193 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection3173, reductionProjection2831, reductionProjection3212, reductionProjection2737] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7193 (0 : Fin 4)) = canonicalInput4618.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7193 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3173 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7193 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3173 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound4618 hH))).trans (reductionSound3173 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7193 (1 : Fin 4)) = canonicalInput18382.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7193 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2831 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7193 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2831 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound18382 hH))).trans (reductionSound2831 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7193 (2 : Fin 4)) = canonicalInput18502.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7193 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3212 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7193 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3212 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound18502 hH))).trans (reductionSound3212 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7193 (3 : Fin 4)) = canonicalInput18503.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7193 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2737 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7193 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2737 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound18503 hH))).trans (reductionSound2737 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8574).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7193 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8574).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7193 (j : Fin 4)))
      2 1440 1440 2 ![1, 1, 1440, 1440] ![1440, 1440, 1, 1] reductionProjection7193 ![reductionProjection3173, reductionProjection2831, reductionProjection3212, reductionProjection2737]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7194 : Integer.Sparse (Fin 1613) := [(0, -51), (94, -50), (423, -720), (426, -2880), (610, -720), (668, -3600), (698, -2880), (865, -2160), (890, -1440), (943, 1440), (956, -720), (966, 1440), (973, 1440), (1016, -2880), (1050, 480), (1055, 240), (1059, -1520), (1158, 1440), (1166, 1440), (1221, 1680), (1227, -1520), (1251, 705), (1389, 720)]

def reductionPivot7194 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, 0, 0, 1, -1], ![-2, 0, 0, 0, 2], ![0, -2, 1, 1, 0], ![0, 1, 0, -1, 0], ![1, 0, 1, -1, -1], ![1, 1, -2, 0, 0]]

theorem reductionSound7194 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode3662).moment H =
      Integer.Sparse.eval reductionProjection7194 (momentVector H) := by
  have heq : reductionPivot7194 = (fun u v => (normalNode3662).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3662).moment H = injectiveMoment H reductionPivot7194 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3662).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot7194 0 = Pi.single (3 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot7194 3 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![2880, 2880, 2880, 2880, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7194 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection3579, reductionProjection3568, reductionProjection7191, reductionProjection7192, reductionProjection7193] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7194 (0 : Fin 5)) = canonicalInput7005.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7194 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3579 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7194 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3579 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound7005 hH))).trans (reductionSound3579 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7194 (1 : Fin 5)) = canonicalInput6908.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7194 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3568 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7194 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3568 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound6908 hH))).trans (reductionSound3568 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7194 (2 : Fin 5)) = canonicalInput6898.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7194 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7191 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7194 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7191 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound6898 hH))).trans (reductionSound7191 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7194 (3 : Fin 5)) = canonicalInput6895.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7194 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7192 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7194 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7192 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound6895 hH))).trans (reductionSound7192 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7194 (4 : Fin 5)) = canonicalInput6894.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7194 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7193 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7194 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7193 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound6894 hH))).trans (reductionSound7193 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3662).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7194 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3662).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7194 (j : Fin 5)))
      1 2880 2880 1 ![2880, 2880, 2880, 2880, 1440] ![1, 1, 1, 1, 2] reductionProjection7194 ![reductionProjection3579, reductionProjection3568, reductionProjection7191, reductionProjection7192, reductionProjection7193]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7195 : Integer.Sparse (Fin 1613) := [(0, -9), (94, -10), (426, -540), (433, -180), (602, -720), (635, -180), (666, -360), (668, -180), (698, -700), (824, -720), (848, 360), (859, 360), (865, -540), (869, -180), (890, -720), (956, -180), (1016, -180), (1027, -180), (1050, 120), (1055, 120), (1059, -360), (1221, 300), (1227, -260), (1251, 205), (1389, 180)]

def reductionPivot7195 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, 0, 0, 1, -1], ![-2, 0, 0, 0, 2], ![0, -2, 1, 1, 0], ![0, 1, 1, -2, 0], ![1, 0, -1, 0, 0], ![1, 1, -1, 0, -1]]

theorem reductionSound7195 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode3663).moment H =
      Integer.Sparse.eval reductionProjection7195 (momentVector H) := by
  have heq : reductionPivot7195 = (fun u v => (normalNode3663).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3663).moment H = injectiveMoment H reductionPivot7195 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3663).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot7195 0 = Pi.single (3 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot7195 3 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![2880, 2880, 720, 1, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7195 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection7128, reductionProjection3322, reductionProjection3976, reductionProjection7189, reductionProjection7140] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7195 (0 : Fin 5)) = canonicalInput7006.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7195 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7128 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7195 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7128 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound7006 hH))).trans (reductionSound7128 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7195 (1 : Fin 5)) = canonicalInput6909.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7195 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3322 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7195 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3322 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound6909 hH))).trans (reductionSound3322 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7195 (2 : Fin 5)) = canonicalInput6903.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7195 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3976 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7195 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3976 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound6903 hH))).trans (reductionSound3976 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7195 (3 : Fin 5)) = canonicalInput6900.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7195 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7189 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7195 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7189 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound6900 hH))).trans (reductionSound7189 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7195 (4 : Fin 5)) = canonicalInput6899.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7195 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7140 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7195 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7140 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound6899 hH))).trans (reductionSound7140 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3663).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7195 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3663).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7195 (j : Fin 5)))
      1 720 2880 4 ![2880, 2880, 720, 1, 1440] ![1, 1, 4, 2880, 2] reductionProjection7195 ![reductionProjection7128, reductionProjection3322, reductionProjection3976, reductionProjection7189, reductionProjection7140]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7196 : Integer.Sparse (Fin 1613) := [(0, 4), (94, 5), (698, -80), (857, -1440), (859, -1440), (966, -1440), (1059, 80), (1226, 80), (1227, -160), (1251, 5)]

def reductionPivot7196 : Matrix (Fin 5) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![-1, -1, 0, 2, 0], ![0, -1, 2, -1, 0], ![2, 0, 0, 0, -2], ![0, 2, -2, -1, 1]]

theorem reductionSound7196 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode9142).moment H =
      Integer.Sparse.eval reductionProjection7196 (momentVector H) := by
  have heq : reductionPivot7196 = (fun u v => (normalNode9142).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation33 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9142).moment H = injectiveMoment H reductionPivot7196 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode9142).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation33)).trans (injectiveMoment_transpose H (normalNode9142).entries)).symm
  have hshape : reductionPivot7196 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot7196 4 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1440, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7196 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection3319, reductionProjection2918, reductionProjection3200, reductionProjection929] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7196 (0 : Fin 4)) = canonicalInput3607.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7196 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3319 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7196 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3319 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound3607 hH))).trans (reductionSound3319 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7196 (1 : Fin 4)) = canonicalInput17446.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7196 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2918 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7196 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2918 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17446 hH))).trans (reductionSound2918 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7196 (2 : Fin 4)) = canonicalInput17560.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7196 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3200 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7196 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3200 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17560 hH))).trans (reductionSound3200 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7196 (3 : Fin 4)) = canonicalInput17565.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7196 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection929 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7196 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection929 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17565 hH))).trans (reductionSound929 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9142).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7196 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9142).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7196 (j : Fin 4)))
      2 2880 2880 2 ![1, 1, 1440, 1] ![2880, 2880, 2, 2880] reductionProjection7196 ![reductionProjection3319, reductionProjection2918, reductionProjection3200, reductionProjection929]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7197 : Integer.Sparse (Fin 1613) := [(0, -3), (94, -5), (426, -540), (602, -360), (666, -360), (698, -260), (823, -720), (848, 360), (857, 360), (859, 360), (865, -180), (890, -720), (943, 720), (956, -180), (966, 360), (1015, -180), (1016, -360), (1050, 60), (1059, -140), (1221, 60), (1226, -60), (1227, -80), (1251, 50)]

def reductionPivot7197 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, 0, 0, 1, -1], ![-2, 0, 0, 0, 2], ![0, -2, 1, 1, 0], ![0, 1, 1, -2, 0], ![1, 0, 0, 0, -1], ![1, 1, -2, 0, 0]]

theorem reductionSound7197 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode3664).moment H =
      Integer.Sparse.eval reductionProjection7197 (momentVector H) := by
  have heq : reductionPivot7197 = (fun u v => (normalNode3664).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3664).moment H = injectiveMoment H reductionPivot7197 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3664).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot7197 0 = Pi.single (3 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot7197 3 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![2880, 2880, 576, 1, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7197 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection7131, reductionProjection7196, reductionProjection3972, reductionProjection7124, reductionProjection7126] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7197 (0 : Fin 5)) = canonicalInput7007.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7197 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7131 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7197 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7131 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound7007 hH))).trans (reductionSound7131 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7197 (1 : Fin 5)) = canonicalInput6910.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7197 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7196 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7197 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7196 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound6910 hH))).trans (reductionSound7196 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7197 (2 : Fin 5)) = canonicalInput6904.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7197 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3972 (momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7197 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3972 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound6904 hH))).trans (reductionSound3972 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7197 (3 : Fin 5)) = canonicalInput6902.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7197 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7124 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7197 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7124 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound6902 hH))).trans (reductionSound7124 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7197 (4 : Fin 5)) = canonicalInput6901.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7197 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7126 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7197 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7126 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound6901 hH))).trans (reductionSound7126 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3664).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7197 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3664).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7197 (j : Fin 5)))
      1 720 2880 4 ![2880, 2880, 576, 1, 1440] ![1, 1, 5, 2880, 2] reductionProjection7197 ![reductionProjection7131, reductionProjection7196, reductionProjection3972, reductionProjection7124, reductionProjection7126]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7198 : Integer.Sparse (Fin 1613) := [(825, 1)]

theorem reductionSound7198 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code825).moment H =
      Integer.Sparse.eval reductionProjection7198 (momentVector H) := by
  have hc : coordinates (825 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code825) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection7198, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection7199 : Integer.Sparse (Fin 1613) := [(0, -2), (94, -5), (483, -720), (610, -720), (698, -160), (1055, 240), (1227, -240), (1251, 65), (1389, 240)]

def reductionPivot7199 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 1, 0, 1], ![0, 1, -2, 1], ![1, -1, -1, 1], ![1, -1, 2, -2]]

theorem reductionSound7199 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5531).moment H =
      Integer.Sparse.eval reductionProjection7199 (momentVector H) := by
  have heq : reductionPivot7199 = (fun u v => (normalNode5531).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5531).moment H = injectiveMoment H reductionPivot7199 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5531).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot7199 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot7199 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 720, 720, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7199 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection513, oldProjection1078, oldProjection1309, oldProjection487] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7199 (0 : Fin 4)) = canonicalInput11128.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7199 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection513 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7199 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection513 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11128 hH))).trans (oldProjectionSound513 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7199 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4841 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7199 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1078 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7199 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1078 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4841 hH))).trans (oldProjectionSound1078 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7199 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4838 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7199 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1309 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7199 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1309 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4838 hH))).trans (oldProjectionSound1309 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7199 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4837 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7199 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection487 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7199 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection487 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4837 hH))).trans (oldProjectionSound487 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5531).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7199 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5531).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7199 (j : Fin 4)))
      2 1440 1440 2 ![1, 720, 720, 1] ![1440, 2, 2, 1440] reductionProjection7199 ![oldProjection513, oldProjection1078, oldProjection1309, oldProjection487]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization
