import NoFourMUBs.Step2.SOS.Canonical163
import NoFourMUBs.Step2.SOS.Canonical171
import NoFourMUBs.Step2.SOS.Canonical172
import NoFourMUBs.Step2.SOS.Canonical188
import NoFourMUBs.Step2.SOS.Canonical189
import NoFourMUBs.Step2.SOS.Canonical190
import NoFourMUBs.Step2.SOS.Canonical191
import NoFourMUBs.Step2.SOS.Canonical307
import NoFourMUBs.Step2.SOS.Canonical349
import NoFourMUBs.Step2.SOS.Canonical350
import NoFourMUBs.Step2.SOS.Canonical351
import NoFourMUBs.Step2.SOS.Canonical357
import NoFourMUBs.Step2.SOS.Canonical366
import NoFourMUBs.Step2.SOS.Canonical371
import NoFourMUBs.Step2.SOS.Canonical496
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes19
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.OldProjections002
import NoFourMUBs.Step2.SOS.OldProjections003
import NoFourMUBs.Step2.SOS.OldProjections004
import NoFourMUBs.Step2.SOS.OldProjections005
import NoFourMUBs.Step2.SOS.OldProjections006
import NoFourMUBs.Step2.SOS.OldProjections008
import NoFourMUBs.Step2.SOS.OldProjections009
import NoFourMUBs.Step2.SOS.OldProjections011
import NoFourMUBs.Step2.SOS.OldProjections013
import NoFourMUBs.Step2.SOS.OldProjections014
import NoFourMUBs.Step2.SOS.OldProjections015
import NoFourMUBs.Step2.SOS.OldProjections017
import NoFourMUBs.Step2.SOS.OldProjections018
import NoFourMUBs.Step2.SOS.OldProjections019
import NoFourMUBs.Step2.SOS.OldProjections022
import NoFourMUBs.Step2.SOS.OldProjections023
import NoFourMUBs.Step2.SOS.OldProjections026
import NoFourMUBs.Step2.SOS.OldProjections027
import NoFourMUBs.Step2.SOS.OldProjections031
import NoFourMUBs.Step2.SOS.OldProjections035
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions004
import NoFourMUBs.Step2.SOS.Reductions021
import NoFourMUBs.Step2.SOS.Reductions032
import NoFourMUBs.Step2.SOS.Reductions082
import NoFourMUBs.Step2.SOS.Reductions086
import NoFourMUBs.Step2.SOS.Reductions087
import NoFourMUBs.Step2.SOS.Reductions089
import NoFourMUBs.Step2.SOS.Reductions090
import NoFourMUBs.Step2.SOS.Reductions108
import NoFourMUBs.Step2.SOS.Reductions114
import NoFourMUBs.Step2.SOS.Reductions121
import NoFourMUBs.Step2.SOS.Reductions124
import NoFourMUBs.Step2.SOS.Reductions138
import NoFourMUBs.Step2.SOS.Reductions150
import NoFourMUBs.Step2.SOS.Reductions159
import NoFourMUBs.Step2.SOS.Reductions168
import NoFourMUBs.Step2.SOS.Reductions196
import NoFourMUBs.Step2.SOS.Reductions207
import NoFourMUBs.Step2.SOS.Reductions218
import NoFourMUBs.Step2.SOS.Reductions221
import NoFourMUBs.Step2.SOS.Reductions229
import NoFourMUBs.Step2.SOS.Reductions242
import NoFourMUBs.Step2.SOS.Reductions253
import NoFourMUBs.Step2.SOS.Reductions259
import NoFourMUBs.Step2.SOS.Reductions262
import NoFourMUBs.Step2.SOS.Reductions281
import NoFourMUBs.Step2.SOS.Reductions282
import NoFourMUBs.Step2.SOS.Reductions283
import NoFourMUBs.Step2.SOS.Reductions288
import NoFourMUBs.Step2.SOS.Reductions291
import NoFourMUBs.Step2.SOS.Reductions293
import NoFourMUBs.Step2.SOS.Reductions302
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical145
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical168
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical169
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical219
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical222
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical226
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes36
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection9696 : Integer.Sparse (Fin 1613) := [(3, 8), (19, 24), (20, -5), (38, 48), (46, -16), (94, -10), (243, -16), (244, -32), (245, -16), (246, -32), (679, 192), (698, -16), (700, -32), (701, -48), (703, -32), (704, -48), (1031, 48), (1033, 48), (1061, 96), (1251, -5), (1278, 96)]

def reductionPivot9696 : Matrix (Fin 6) (Fin 3) ℤ := ![![0, 1, -1], ![-2, 2, 0], ![-1, -4, 5], ![1, 0, -1], ![1, 0, -1], ![1, 1, -2]]

theorem reductionSound9696 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * (normalNode5912).moment H =
      Integer.Sparse.eval reductionProjection9696 (momentVector H) := by
  have heq : reductionPivot9696 = (fun u v => (normalNode5912).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5912).moment H = injectiveMoment H reductionPivot9696 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5912).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot9696 0 = Pi.single (1 : Fin 3) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9696 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![96, 96, 2, 2, 48] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9696 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection9693, oldProjection314, reductionProjection9694, reductionProjection9694, reductionProjection9695] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9696 (0 : Fin 5)) = (normalNode5967).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9696 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9693 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9696 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9693 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound9693 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9696 (1 : Fin 5)) = canonicalInput12090.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9696 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection314 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9696 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection314 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound12090 hH))).trans (oldProjectionSound314 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9696 (2 : Fin 5)) = canonicalInput12086.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9696 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9694 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9696 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9694 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound12086 hH))).trans (reductionSound9694 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9696 (3 : Fin 5)) = (normalNode5914).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9696 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9694 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9696 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9694 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound9694 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9696 (4 : Fin 5)) = (normalNode5913).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9696 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9695 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9696 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9695 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound9695 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5912).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9696 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5912).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9696 (j : Fin 5)))
      1 96 96 1 ![96, 96, 2, 2, 48] ![1, 1, 48, 48, 2] reductionProjection9696 ![reductionProjection9693, oldProjection314, reductionProjection9694, reductionProjection9694, reductionProjection9695]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9697 : Integer.Sparse (Fin 1613) := [(3, 1), (19, 2), (20, 2), (105, -4), (106, -4), (243, -16), (244, -4), (1045, 12), (1217, 12), (1225, -8), (1226, -4), (1251, -1)]

def reductionPivot9697 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, 0, -3, 4], ![0, 0, 3, -3], ![0, 1, 0, -1], ![1, -2, 1, 0]]

theorem reductionSound9697 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * (normalNode9747).moment H =
      Integer.Sparse.eval reductionProjection9697 (momentVector H) := by
  have heq : reductionPivot9697 = (fun u v => (normalNode9747).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9747).moment H = injectiveMoment H reductionPivot9697 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9747).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot9697 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9697 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![36, 144, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9697 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection9020, oldProjection1185, oldProjection1183, oldProjection1181] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9697 (0 : Fin 4)) = canonicalInput22506.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9697 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9020 (momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9697 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9020 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22506 hH))).trans (reductionSound9020 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9697 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw7034 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9697 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1185 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9697 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1185 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7034 hH))).trans (oldProjectionSound1185 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9697 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1183⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9697 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1183 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9697 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1183 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1183 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9697 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1181⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9697 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1181 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9697 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1181 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1181 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9747).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9697 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9747).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9697 (j : Fin 4)))
      2 72 144 4 ![36, 144, 144, 144] ![4, 1, 1, 1] reductionProjection9697 ![reductionProjection9020, oldProjection1185, oldProjection1183, oldProjection1181]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9698 : Integer.Sparse (Fin 1613) := [(20, -3), (94, 1), (106, 16), (1045, -48), (1213, -48), (1225, 16)]

def reductionPivot9698 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, 0, 2, -2], ![-3, 4, -1, 0], ![4, -4, -1, 1]]

theorem reductionSound9698 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode9753).moment H =
      Integer.Sparse.eval reductionProjection9698 (momentVector H) := by
  have heq : reductionPivot9698 = (fun u v => (normalNode9753).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9753).moment H = injectiveMoment H reductionPivot9698 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode9753).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode9753).entries)).symm
  have hshape : reductionPivot9698 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot9698 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![48, 1, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9698 (j : Fin 3))) j =
        Integer.Sparse.eval (![reductionProjection8306, reductionProjection9327, oldProjection193] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9698 (0 : Fin 3)) = canonicalInput22372.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9698 (0 : Fin 3)) =
        Integer.Sparse.eval reductionProjection8306 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9698 (0 : Fin 3)) =
          Integer.Sparse.eval reductionProjection8306 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22372 hH))).trans (reductionSound8306 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9698 (1 : Fin 3)) = canonicalInput31786.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9698 (1 : Fin 3)) =
        Integer.Sparse.eval reductionProjection9327 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9698 (1 : Fin 3)) =
          Integer.Sparse.eval reductionProjection9327 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31786 hH))).trans (reductionSound9327 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9698 (2 : Fin 3)) = canonicalInput31789.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9698 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection193 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9698 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection193 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31789 hH))).trans (oldProjectionSound193 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode9753).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9698 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9753).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9698 (j : Fin 3)))
      3 144 144 3 ![48, 1, 1] ![3, 144, 144] reductionProjection9698 ![reductionProjection8306, reductionProjection9327, oldProjection193]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9699 : Integer.Sparse (Fin 1613) := [(20, 1), (94, 1), (106, -8), (243, -8), (993, -36), (1045, 24), (1213, 12), (1217, 12), (1225, -4)]

def reductionPivot9699 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-2, 2, 0, 0], ![0, -1, -3, 4], ![0, -1, 4, -3], ![1, 0, 0, -1]]

theorem reductionSound9699 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * (normalNode5917).moment H =
      Integer.Sparse.eval reductionProjection9699 (momentVector H) := by
  have heq : reductionPivot9699 = (fun u v => (normalNode5917).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5917).moment H = injectiveMoment H reductionPivot9699 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5917).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot9699 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9699 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 144, 144, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9699 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection8099, reductionProjection9698, oldProjection1183, reductionProjection8110] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9699 (0 : Fin 4)) = canonicalInput23477.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9699 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8099 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9699 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8099 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23477 hH))).trans (reductionSound8099 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9699 (1 : Fin 4)) = canonicalInput12182.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9699 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9698 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9699 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9698 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12182 hH))).trans (reductionSound9698 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9699 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5399 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9699 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1183 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9699 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1183 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5399 hH))).trans (oldProjectionSound1183 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9699 (3 : Fin 4)) = canonicalInput12109.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9699 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8110 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9699 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8110 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12109 hH))).trans (reductionSound8110 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5917).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9699 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5917).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9699 (j : Fin 4)))
      2 72 144 4 ![72, 144, 144, 1] ![2, 1, 1, 144] reductionProjection9699 ![reductionProjection8099, reductionProjection9698, oldProjection1183, reductionProjection8110]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9700 : Integer.Sparse (Fin 1613) := [(20, 1), (94, 8), (243, -16), (1060, 48), (1147, -144), (1154, -144), (1184, -144), (1225, -16), (1251, -1)]

def reductionPivot9700 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-2, 2, 0, 0], ![0, -1, -3, 4], ![0, 0, 3, -3], ![1, -1, 1, -1]]

theorem reductionSound9700 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode5922).moment H =
      Integer.Sparse.eval reductionProjection9700 (momentVector H) := by
  have heq : reductionPivot9700 = (fun u v => (normalNode5922).entries (OAI.MUB6.Certificate.PairSemantics.permutation128 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5922).moment H = injectiveMoment H reductionPivot9700 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5922).entries OAI.MUB6.Certificate.PairSemantics.permutation128)).symm
  have hshape : reductionPivot9700 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9700 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9700 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1343, reductionProjection9021, oldProjection688, oldProjection691] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9700 (0 : Fin 4)) = canonicalInput23479.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9700 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1343 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9700 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1343 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23479 hH))).trans (oldProjectionSound1343 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9700 (1 : Fin 4)) = canonicalInput12184.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9700 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9021 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9700 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9021 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12184 hH))).trans (reductionSound9021 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9700 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5400 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9700 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection688 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9700 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection688 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5400 hH))).trans (oldProjectionSound688 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9700 (3 : Fin 4)) = canonicalInput12111.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9700 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection691 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9700 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection691 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12111 hH))).trans (oldProjectionSound691 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5922).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9700 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5922).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9700 (j : Fin 4)))
      2 288 288 2 ![144, 1, 1, 1] ![2, 288, 288, 288] reductionProjection9700 ![oldProjection1343, reductionProjection9021, oldProjection688, oldProjection691]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9701 : Integer.Sparse (Fin 1613) := [(3, -4), (19, -16), (20, -17), (94, -9), (105, 48), (106, 48), (241, 16), (243, 160), (244, 32), (700, 16), (738, 144), (993, 144), (1044, -96), (1045, -288), (1052, -48), (1053, -48), (1060, -48), (1147, 144), (1154, 144), (1184, 288), (1213, -48), (1217, -144), (1225, 80), (1226, 16), (1251, 8)]

def reductionPivot9701 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 2, 0, 0], ![0, -1, -3, 4], ![0, 0, 3, -3], ![1, 0, -1, 0], ![1, 0, 0, -1]]

theorem reductionSound9701 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode5915).moment H =
      Integer.Sparse.eval reductionProjection9701 (momentVector H) := by
  have heq : reductionPivot9701 = (fun u v => (normalNode5915).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5915).moment H = injectiveMoment H reductionPivot9701 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5915).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot9701 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9701 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![72, 144, 72, 288, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9701 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection9697, reductionProjection6633, reductionProjection9699, reductionProjection9398, reductionProjection9700] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9701 (0 : Fin 5)) = canonicalInput11005.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9701 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9697 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9701 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9697 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11005 hH))).trans (reductionSound9697 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9701 (1 : Fin 5)) = canonicalInput12103.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9701 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6633 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9701 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6633 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12103 hH))).trans (reductionSound6633 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9701 (2 : Fin 5)) = (normalNode5917).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9701 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9699 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9701 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9699 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9699 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9701 (3 : Fin 5)) = (normalNode5921).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9701 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9398 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9701 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9398 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9398 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9701 (4 : Fin 5)) = canonicalInput12110.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9701 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9700 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9701 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9700 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12110 hH))).trans (reductionSound9700 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5915).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9701 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5915).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9701 (j : Fin 5)))
      1 288 288 1 ![72, 144, 72, 288, 288] ![4, 2, 4, 1, 1] reductionProjection9701 ![reductionProjection9697, reductionProjection6633, reductionProjection9699, reductionProjection9398, reductionProjection9700]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9702 : Integer.Sparse (Fin 1613) := [(20, -1), (94, 6), (243, -8), (738, -72), (1045, 24), (1052, 24), (1217, 48), (1225, -16), (1226, -16), (1251, -1)]

def reductionPivot9702 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, 0, -1], ![-2, 2, 0, 0], ![0, -1, -3, 4], ![0, -1, 3, -2], ![1, 0, 0, -1]]

theorem reductionSound9702 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode5916).moment H =
      Integer.Sparse.eval reductionProjection9702 (momentVector H) := by
  have heq : reductionPivot9702 = (fun u v => (normalNode5916).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5916).moment H = injectiveMoment H reductionPivot9702 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5916).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot9702 0 = Pi.single (0 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9702 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 144, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9702 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection920, oldProjection1226, oldProjection1183, oldProjection582] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9702 (0 : Fin 4)) = canonicalInput23760.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9702 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection920 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9702 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection920 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23760 hH))).trans (oldProjectionSound920 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9702 (1 : Fin 4)) = canonicalInput12185.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9702 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1226 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9702 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1226 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12185 hH))).trans (oldProjectionSound1226 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9702 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5399 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9702 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1183 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9702 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1183 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5399 hH))).trans (oldProjectionSound1183 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9702 (3 : Fin 4)) = canonicalInput12108.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9702 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection582 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9702 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection582 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12108 hH))).trans (oldProjectionSound582 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5916).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9702 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5916).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9702 (j : Fin 4)))
      2 144 144 2 ![144, 144, 144, 1] ![1, 1, 1, 144] reductionProjection9702 ![oldProjection920, oldProjection1226, oldProjection1183, oldProjection582]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9703 : Integer.Sparse (Fin 1613) := [(19, -4), (94, -1), (713, -72), (716, -72), (750, -72), (1057, 24), (1223, 24), (1251, -1)]

def reductionPivot9703 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-2, 2, 0, 0], ![0, -1, -3, 4], ![0, 0, 2, -2], ![1, -1, 2, -2]]

theorem reductionSound9703 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode5920).moment H =
      Integer.Sparse.eval reductionProjection9703 (momentVector H) := by
  have heq : reductionPivot9703 = (fun u v => (normalNode5920).entries (OAI.MUB6.Certificate.PairSemantics.permutation128 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5920).moment H = injectiveMoment H reductionPivot9703 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5920).entries OAI.MUB6.Certificate.PairSemantics.permutation128)).symm
  have hshape : reductionPivot9703 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9703 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9703 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection701, reductionProjection6291, oldProjection584, oldProjection576] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9703 (0 : Fin 4)) = canonicalInput23478.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9703 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection701 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9703 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection701 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23478 hH))).trans (reductionSound701 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9703 (1 : Fin 4)) = canonicalInput12183.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9703 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6291 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9703 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6291 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12183 hH))).trans (reductionSound6291 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9703 (2 : Fin 4)) = canonicalInput12113.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9703 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection584 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9703 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection584 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12113 hH))).trans (oldProjectionSound584 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9703 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5395 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9703 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection576 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9703 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection576 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5395 hH))).trans (oldProjectionSound576 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5920).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9703 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5920).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9703 (j : Fin 4)))
      2 144 144 2 ![72, 1, 1, 1] ![2, 144, 144, 144] reductionProjection9703 ![reductionProjection701, reductionProjection6291, oldProjection584, oldProjection576]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9704 : Integer.Sparse (Fin 1613) := [(20, 1), (94, 8), (106, -16), (243, -48), (1040, 48), (1045, 96), (1052, 48), (1209, 48), (1213, 48), (1217, 96), (1225, -48), (1226, -16), (1251, -1)]

def reductionPivot9704 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 2, 0, 0], ![0, -1, -3, 4], ![1, -1, 3, -3], ![1, 0, -1, 0]]

theorem reductionSound9704 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode5919).moment H =
      Integer.Sparse.eval reductionProjection9704 (momentVector H) := by
  have heq : reductionPivot9704 = (fun u v => (normalNode5919).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5919).moment H = injectiveMoment H reductionPivot9704 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5919).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot9704 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9704 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9704 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection9236, oldProjection1226, reductionProjection9698, oldProjection1183] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9704 (0 : Fin 4)) = canonicalInput12233.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9704 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9236 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9704 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9236 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12233 hH))).trans (reductionSound9236 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9704 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5406 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9704 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1226 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9704 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1226 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5406 hH))).trans (oldProjectionSound1226 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9704 (2 : Fin 4)) = canonicalInput12112.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9704 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9698 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9704 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9698 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12112 hH))).trans (reductionSound9698 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9704 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5399 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9704 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1183 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9704 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1183 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5399 hH))).trans (oldProjectionSound1183 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5919).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9704 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5919).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9704 (j : Fin 4)))
      2 288 288 2 ![144, 144, 144, 144] ![2, 2, 2, 2] reductionProjection9704 ![reductionProjection9236, oldProjection1226, reductionProjection9698, oldProjection1183]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9705 : Integer.Sparse (Fin 1613) := [(0, -2), (19, -20), (20, 5), (81, -480), (94, -40), (106, 80), (227, -240), (229, -240), (243, 720), (682, -960), (698, 480), (704, 240), (713, 720), (716, 720), (750, 1440), (1040, -960), (1045, -720), (1052, -960), (1057, -240), (1059, 80), (1209, -480), (1213, -240), (1217, -960), (1221, -720), (1223, -240), (1225, 400), (1226, 480), (1227, 80), (1251, -55)]

def reductionPivot9705 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 2, 0, 0], ![0, -1, -3, 4], ![0, 0, 1, -1], ![1, -1, 2, -2], ![1, 0, -1, 0]]

theorem reductionSound9705 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5918).moment H =
      Integer.Sparse.eval reductionProjection9705 (momentVector H) := by
  have heq : reductionPivot9705 = (fun u v => (normalNode5918).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5918).moment H = injectiveMoment H reductionPivot9705 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5918).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot9705 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9705 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 1440, 144, 288, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9705 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection9669, reductionProjection5097, reductionProjection9703, reductionProjection9704, oldProjection2366] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9705 (0 : Fin 5)) = canonicalInput12232.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9705 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9669 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9705 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9669 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12232 hH))).trans (reductionSound9669 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9705 (1 : Fin 5)) = (normalNode5933).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9705 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5097 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9705 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5097 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound5097 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9705 (2 : Fin 5)) = (normalNode5920).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9705 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9703 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9705 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9703 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9703 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9705 (3 : Fin 5)) = (normalNode5919).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9705 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9704 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9705 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9704 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9704 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9705 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2366⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9705 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2366 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9705 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2366 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2366 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5918).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9705 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5918).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9705 (j : Fin 5)))
      1 1440 1440 1 ![288, 1440, 144, 288, 288] ![5, 1, 10, 5, 5] reductionProjection9705 ![reductionProjection9669, reductionProjection5097, reductionProjection9703, reductionProjection9704, oldProjection2366]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9706 : Integer.Sparse (Fin 1613) := [(20, -1), (94, 8), (243, -16), (1047, 48), (1154, -144), (1174, -144), (1197, -144), (1226, -16), (1251, 1)]

def reductionPivot9706 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, 0, -1], ![-2, 2, 0, 0], ![0, -1, -2, 3], ![0, 0, 3, -3], ![1, -1, -1, 1]]

theorem reductionSound9706 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode5935).moment H =
      Integer.Sparse.eval reductionProjection9706 (momentVector H) := by
  have heq : reductionPivot9706 = (fun u v => (normalNode5935).entries (OAI.MUB6.Certificate.PairSemantics.permutation128 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5935).moment H = injectiveMoment H reductionPivot9706 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5935).entries OAI.MUB6.Certificate.PairSemantics.permutation128)).symm
  have hshape : reductionPivot9706 0 = Pi.single (0 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9706 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9706 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1365, oldProjection689, oldProjection688, reductionProjection138] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9706 (0 : Fin 4)) = canonicalInput23761.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9706 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1365 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9706 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1365 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23761 hH))).trans (oldProjectionSound1365 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9706 (1 : Fin 4)) = canonicalInput12187.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9706 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection689 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9706 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection689 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12187 hH))).trans (oldProjectionSound689 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9706 (2 : Fin 4)) = canonicalInput12125.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9706 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection688 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9706 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection688 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12125 hH))).trans (oldProjectionSound688 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9706 (3 : Fin 4)) = canonicalInput12123.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9706 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection138 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9706 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection138 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12123 hH))).trans (reductionSound138 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5935).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9706 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5935).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9706 (j : Fin 4)))
      2 288 288 2 ![144, 1, 1, 1] ![2, 288, 288, 288] reductionProjection9706 ![oldProjection1365, oldProjection689, oldProjection688, reductionProjection138]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9707 : Integer.Sparse (Fin 1613) := [(19, -2), (20, 1), (94, -1), (105, 2), (241, 4), (243, 20), (244, 2), (698, 6), (700, 6), (738, 18), (998, 18), (1044, -12), (1045, -6), (1047, -6), (1052, -36), (1053, -6), (1154, 18), (1174, 18), (1197, 36), (1217, -18), (1221, -6), (1225, 2), (1226, 10), (1251, -2)]

def reductionPivot9707 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, 2, 0, 0], ![0, -1, -2, 3], ![0, 0, 3, -3], ![1, 0, -1, 0], ![1, 0, 0, -1]]

theorem reductionSound9707 {H : CMatrix} (hH : IsHadamard H) :
    (36 : ℝ) * (normalNode5923).moment H =
      Integer.Sparse.eval reductionProjection9707 (momentVector H) := by
  have heq : reductionPivot9707 = (fun u v => (normalNode5923).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5923).moment H = injectiveMoment H reductionPivot9707 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5923).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot9707 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9707 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 144, 72, 288, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9707 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection9035, reductionProjection6633, reductionProjection8415, reductionProjection9706, reductionProjection2878] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9707 (0 : Fin 5)) = canonicalInput10437.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9707 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9035 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9707 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9035 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10437 hH))).trans (reductionSound9035 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9707 (1 : Fin 5)) = canonicalInput12103.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9707 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6633 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9707 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6633 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12103 hH))).trans (reductionSound6633 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9707 (2 : Fin 5)) = (normalNode5929).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9707 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8415 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9707 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8415 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8415 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9707 (3 : Fin 5)) = (normalNode5935).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9707 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9706 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9707 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9706 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9706 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9707 (4 : Fin 5)) = canonicalInput12122.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9707 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2878 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9707 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2878 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12122 hH))).trans (reductionSound2878 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5923).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9707 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5923).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9707 (j : Fin 5)))
      1 36 288 8 ![288, 144, 72, 288, 288] ![1, 2, 4, 1, 1] reductionProjection9707 ![reductionProjection9035, reductionProjection6633, reductionProjection8415, reductionProjection9706, reductionProjection2878]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9708 : Integer.Sparse (Fin 1613) := [(0, 2), (94, -15), (243, -80), (698, -480), (700, -240), (704, -80), (1059, -160), (1226, -80), (1227, -160), (1251, 75)]

def reductionPivot9708 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, 0, -2, 3], ![0, 1, -1, 0], ![0, 1, 1, -2], ![1, -2, 1, 0]]

theorem reductionSound9708 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode9967).moment H =
      Integer.Sparse.eval reductionProjection9708 (momentVector H) := by
  have heq : reductionPivot9708 = (fun u v => (normalNode9967).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9967).moment H = injectiveMoment H reductionPivot9708 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9967).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot9708 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9708 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 720, 144, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9708 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1000, oldProjection801, oldProjection1231, oldProjection1049] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9708 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw7236 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9708 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1000 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9708 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1000 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7236 hH))).trans (oldProjectionSound1000 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9708 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw7116 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9708 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection801 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9708 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection801 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7116 hH))).trans (oldProjectionSound801 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9708 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1231⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9708 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1231 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9708 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1231 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1231 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9708 (3 : Fin 4)) = canonicalInput19677.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9708 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1049 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9708 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1049 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19677 hH))).trans (oldProjectionSound1049 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9967).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9708 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9967).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9708 (j : Fin 4)))
      2 1440 1440 2 ![720, 720, 144, 720] ![2, 2, 10, 2] reductionProjection9708 ![oldProjection1000, oldProjection801, oldProjection1231, oldProjection1049]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9709 : Integer.Sparse (Fin 1613) := [(0, -9), (81, -480), (94, 40), (243, 160), (427, 720), (430, 720), (433, 1440), (682, -240), (697, -480), (698, 1600), (700, 720), (704, 80), (1052, -1200), (1058, -240), (1059, 640), (1217, -240), (1221, -480), (1226, 400), (1227, 320), (1251, -255)]

def reductionPivot9709 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 2, 0, 0], ![0, -1, -2, 3], ![0, 0, 1, -1], ![1, 0, -1, 0], ![1, 0, 1, -2]]

theorem reductionSound9709 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5924).moment H =
      Integer.Sparse.eval reductionProjection9709 (momentVector H) := by
  have heq : reductionPivot9709 = (fun u v => (normalNode5924).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5924).moment H = injectiveMoment H reductionPivot9709 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5924).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot9709 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9709 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 240, 1440, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9709 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection9708, oldProjection1638, reductionProjection8398, oldProjection1642, reductionProjection5097] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9709 (0 : Fin 5)) = canonicalInput11007.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9709 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9708 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9709 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9708 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11007 hH))).trans (reductionSound9708 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9709 (1 : Fin 5)) = canonicalInput12104.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9709 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1638 (momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9709 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1638 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12104 hH))).trans (oldProjectionSound1638 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9709 (2 : Fin 5)) = (normalNode5927).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9709 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8398 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9709 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8398 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8398 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9709 (3 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw5401 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9709 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1642 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9709 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1642 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5401 hH))).trans (oldProjectionSound1642 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9709 (4 : Fin 5)) = canonicalInput12118.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9709 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5097 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9709 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5097 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12118 hH))).trans (reductionSound5097 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5924).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9709 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5924).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9709 (j : Fin 5)))
      1 1440 1440 1 ![1440, 240, 1440, 1440, 1440] ![1, 6, 1, 1, 1] reductionProjection9709 ![reductionProjection9708, oldProjection1638, reductionProjection8398, oldProjection1642, reductionProjection5097]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9710 : Integer.Sparse (Fin 1613) := [(0, -9), (19, -20), (94, -60), (241, 240), (243, 240), (418, 720), (423, 1440), (427, 720), (433, 720), (698, 880), (700, 320), (998, 720), (1050, -480), (1052, -1440), (1058, -240), (1059, 240), (1217, -240), (1221, -720), (1226, 400), (1227, 80), (1251, -55)]

def reductionPivot9710 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 2, 0, 0], ![0, -1, -2, 3], ![0, 0, 2, -2], ![1, 0, -1, 0], ![1, 0, 0, -1]]

theorem reductionSound9710 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5925).moment H =
      Integer.Sparse.eval reductionProjection9710 (momentVector H) := by
  have heq : reductionPivot9710 = (fun u v => (normalNode5925).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5925).moment H = injectiveMoment H reductionPivot9710 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5925).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot9710 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9710 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 1440, 72, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9710 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2710, oldProjection1633, reductionProjection8415, oldProjection1632, reductionProjection7345] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9710 (0 : Fin 5)) = canonicalInput11008.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9710 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2710 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9710 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2710 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11008 hH))).trans (oldProjectionSound2710 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9710 (1 : Fin 5)) = canonicalInput12105.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9710 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1633 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9710 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1633 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12105 hH))).trans (oldProjectionSound1633 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9710 (2 : Fin 5)) = (normalNode5929).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9710 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8415 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9710 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8415 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8415 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9710 (3 : Fin 5)) = canonicalInput12119.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9710 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1632 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9710 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1632 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12119 hH))).trans (oldProjectionSound1632 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9710 (4 : Fin 5)) = canonicalInput12120.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9710 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7345 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9710 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7345 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12120 hH))).trans (reductionSound7345 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5925).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9710 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5925).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9710 (j : Fin 5)))
      1 1440 1440 1 ![720, 1440, 72, 1440, 1440] ![2, 1, 20, 1, 1] reductionProjection9710 ![oldProjection2710, oldProjection1633, reductionProjection8415, oldProjection1632, reductionProjection7345]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9711 : Integer.Sparse (Fin 1613) := [(0, -4), (81, -240), (94, 35), (243, 160), (427, 1440), (430, 720), (433, 720), (682, -240), (697, -240), (698, 880), (704, 80), (890, 720), (919, 720), (998, 720), (1052, -720), (1058, -240), (1059, 240), (1217, -240), (1221, -960), (1226, 400), (1227, 400), (1251, -205), (1389, -240)]

def reductionPivot9711 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 2, 0, 0], ![0, -1, -2, 3], ![0, -1, 2, -1], ![1, 0, -1, 0], ![1, 0, 0, -1]]

theorem reductionSound9711 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5926).moment H =
      Integer.Sparse.eval reductionProjection9711 (momentVector H) := by
  have heq : reductionPivot9711 = (fun u v => (normalNode5926).entries (OAI.MUB6.Certificate.PairSemantics.permutation241 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5926).moment H = injectiveMoment H reductionPivot9711 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5926).entries OAI.MUB6.Certificate.PairSemantics.permutation241)).symm
  have hshape : reductionPivot9711 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9711 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 720, 72, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9711 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection4445, oldProjection2023, reductionProjection8415, oldProjection1672, reductionProjection8398] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9711 (0 : Fin 5)) = canonicalInput12234.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9711 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4445 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9711 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4445 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12234 hH))).trans (reductionSound4445 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9711 (1 : Fin 5)) = canonicalInput12126.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9711 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2023 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9711 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2023 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12126 hH))).trans (oldProjectionSound2023 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9711 (2 : Fin 5)) = (normalNode5929).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9711 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8415 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9711 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8415 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8415 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9711 (3 : Fin 5)) = canonicalInput12114.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9711 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1672 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9711 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1672 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12114 hH))).trans (oldProjectionSound1672 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9711 (4 : Fin 5)) = (normalNode5927).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9711 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8398 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9711 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8398 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8398 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5926).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9711 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5926).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9711 (j : Fin 5)))
      1 1440 1440 1 ![720, 720, 72, 1440, 1440] ![2, 2, 20, 1, 1] reductionProjection9711 ![reductionProjection4445, oldProjection2023, reductionProjection8415, oldProjection1672, reductionProjection8398]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9712 : Integer.Sparse (Fin 1613) := [(0, -3), (20, 10), (37, -240), (81, -240), (94, -110), (243, 560), (427, 720), (682, -480), (698, 640), (738, 720), (912, 720), (998, 1440), (1045, -240), (1052, -1440), (1059, 80), (1217, -960), (1221, -960), (1225, 160), (1226, 560), (1227, 160), (1251, -125)]

def reductionPivot9712 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 2, 0, 0], ![0, -1, -2, 3], ![0, -1, 3, -2], ![1, 0, 0, -1], ![1, 0, 0, -1]]

theorem reductionSound9712 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5928).moment H =
      Integer.Sparse.eval reductionProjection9712 (momentVector H) := by
  have heq : reductionPivot9712 = (fun u v => (normalNode5928).entries (OAI.MUB6.Certificate.PairSemantics.permutation241 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5928).moment H = injectiveMoment H reductionPivot9712 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5928).entries OAI.MUB6.Certificate.PairSemantics.permutation241)).symm
  have hshape : reductionPivot9712 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9712 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![72, 144, 1440, 72, 72] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9712 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection9023, reductionProjection9702, oldProjection1672, reductionProjection8415, reductionProjection8415] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9712 (0 : Fin 5)) = (normalNode5827).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9712 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9023 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9712 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9023 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9023 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9712 (1 : Fin 5)) = (normalNode5916).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9712 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9702 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9712 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9702 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9702 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9712 (2 : Fin 5)) = canonicalInput12114.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9712 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1672 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9712 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1672 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12114 hH))).trans (oldProjectionSound1672 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9712 (3 : Fin 5)) = (normalNode5929).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9712 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8415 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9712 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8415 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8415 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9712 (4 : Fin 5)) = canonicalInput12116.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9712 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8415 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9712 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8415 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12116 hH))).trans (reductionSound8415 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5928).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9712 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5928).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9712 (j : Fin 5)))
      1 1440 1440 1 ![72, 144, 1440, 72, 72] ![20, 10, 1, 20, 20] reductionProjection9712 ![reductionProjection9023, reductionProjection9702, oldProjection1672, reductionProjection8415, reductionProjection8415]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9713 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -20), (20, -10), (37, -240), (72, -240), (94, -10), (105, 80), (241, 80), (243, 560), (423, 720), (682, -240), (698, 160), (700, 160), (1040, -240), (1044, -480), (1045, -480), (1047, -240), (1050, -240), (1052, -960), (1154, 720), (1174, 720), (1183, 720), (1184, 720), (1197, 1440), (1217, -480), (1221, -240), (1225, 80), (1226, 320), (1251, 5)]

def reductionPivot9713 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 2, 0, 0], ![0, -1, -2, 3], ![0, 0, 3, -3], ![1, -1, 0, 0], ![1, 0, 0, -1]]

theorem reductionSound9713 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5930).moment H =
      Integer.Sparse.eval reductionProjection9713 (momentVector H) := by
  have heq : reductionPivot9713 = (fun u v => (normalNode5930).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5930).moment H = injectiveMoment H reductionPivot9713 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5930).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot9713 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9713 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![144, 288, 1440, 288, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9713 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection9033, reductionProjection9398, oldProjection1632, reductionProjection9706, reductionProjection2878] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9713 (0 : Fin 5)) = (normalNode5833).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9713 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9033 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9713 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9033 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9033 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9713 (1 : Fin 5)) = (normalNode5921).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9713 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9398 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9713 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9398 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9398 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9713 (2 : Fin 5)) = canonicalInput12119.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9713 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1632 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9713 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1632 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12119 hH))).trans (oldProjectionSound1632 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9713 (3 : Fin 5)) = (normalNode5935).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9713 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9706 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9713 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9706 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9706 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9713 (4 : Fin 5)) = (normalNode5936).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9713 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2878 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9713 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2878 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2878 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5930).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9713 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5930).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9713 (j : Fin 5)))
      1 1440 1440 1 ![144, 288, 1440, 288, 288] ![10, 5, 1, 5, 5] reductionProjection9713 ![reductionProjection9033, reductionProjection9398, oldProjection1632, reductionProjection9706, reductionProjection2878]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9714 : Integer.Sparse (Fin 1613) := [(0, 3), (81, -192), (94, 9), (243, 16), (418, 144), (423, 144), (433, 288), (682, -96), (698, 256), (1052, -144), (1058, -96), (1059, 64), (1217, -48), (1221, -192), (1226, 96), (1227, 128), (1251, -62), (1321, -48), (1389, -192)]

def reductionPivot9714 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 2, 0, 0], ![0, -1, -2, 3], ![0, 0, 1, -1], ![1, -1, 1, -1], ![1, 0, -1, 0]]

theorem reductionSound9714 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode5931).moment H =
      Integer.Sparse.eval reductionProjection9714 (momentVector H) := by
  have heq : reductionPivot9714 = (fun u v => (normalNode5931).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5931).moment H = injectiveMoment H reductionPivot9714 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5931).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot9714 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9714 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 1440, 1440, 720] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9714 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection5382, oldProjection2018, reductionProjection7345, reductionProjection5097, oldProjection1688] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9714 (0 : Fin 5)) = canonicalInput12235.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9714 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5382 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9714 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5382 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12235 hH))).trans (reductionSound5382 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9714 (1 : Fin 5)) = canonicalInput12133.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9714 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2018 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9714 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2018 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12133 hH))).trans (oldProjectionSound2018 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9714 (2 : Fin 5)) = (normalNode5934).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9714 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7345 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9714 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7345 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound7345 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9714 (3 : Fin 5)) = (normalNode5933).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9714 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5097 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9714 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5097 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound5097 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9714 (4 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw5402 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9714 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1688 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9714 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1688 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5402 hH))).trans (oldProjectionSound1688 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5931).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9714 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5931).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9714 (j : Fin 5)))
      1 288 1440 5 ![1440, 1440, 1440, 1440, 720] ![1, 1, 1, 1, 2] reductionProjection9714 ![reductionProjection5382, oldProjection2018, reductionProjection7345, reductionProjection5097, oldProjection1688]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9715 : Integer.Sparse (Fin 1613) := [(19, -4), (20, 1), (81, -48), (94, 1), (241, 32), (243, 32), (418, 144), (423, 288), (433, 144), (682, -48), (690, -48), (697, -48), (698, 144), (700, 16), (775, 144), (865, 144), (1044, -48), (1050, -96), (1052, -192), (1058, -48), (1059, 48), (1197, 144), (1217, -48), (1221, -96), (1226, 64), (1227, 16), (1251, -8)]

def reductionPivot9715 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 2, 0, 0], ![0, -1, -2, 3], ![0, 0, 2, -2], ![1, -1, 0, 0], ![1, 0, -1, 0]]

theorem reductionSound9715 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode5932).moment H =
      Integer.Sparse.eval reductionProjection9715 (momentVector H) := by
  have heq : reductionPivot9715 = (fun u v => (normalNode5932).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5932).moment H = injectiveMoment H reductionPivot9715 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5932).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot9715 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9715 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 1440, 288, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9715 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2350, oldProjection1999, reductionProjection2878, reductionProjection7345, oldProjection1632] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9715 (0 : Fin 5)) = canonicalInput12236.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9715 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2350 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9715 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2350 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12236 hH))).trans (oldProjectionSound2350 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9715 (1 : Fin 5)) = canonicalInput12136.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9715 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1999 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9715 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1999 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12136 hH))).trans (oldProjectionSound1999 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9715 (2 : Fin 5)) = (normalNode5936).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9715 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2878 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9715 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2878 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2878 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9715 (3 : Fin 5)) = (normalNode5934).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9715 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7345 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9715 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7345 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound7345 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9715 (4 : Fin 5)) = canonicalInput12119.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9715 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1632 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9715 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1632 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12119 hH))).trans (oldProjectionSound1632 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5932).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9715 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5932).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9715 (j : Fin 5)))
      1 288 1440 5 ![720, 1440, 288, 1440, 1440] ![2, 1, 5, 1, 1] reductionProjection9715 ![oldProjection2350, oldProjection1999, reductionProjection2878, reductionProjection7345, oldProjection1632]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9716 : Integer.Sparse (Fin 1613) := [(0, -2), (94, -5), (243, 48), (427, 144), (433, 288), (698, 160), (700, 144), (791, 144), (806, 288), (1044, -48), (1052, -192), (1059, 48), (1174, 288), (1219, -96), (1221, -96), (1226, 64), (1227, 32), (1251, -15)]

def reductionPivot9716 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, 2, 0, 0], ![0, -1, -1, 2], ![0, 0, 3, -3], ![1, 0, -1, 0], ![1, 0, -1, 0]]

theorem reductionSound9716 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode5937).moment H =
      Integer.Sparse.eval reductionProjection9716 (momentVector H) := by
  have heq : reductionPivot9716 = (fun u v => (normalNode5937).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5937).moment H = injectiveMoment H reductionPivot9716 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5937).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot9716 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9716 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 144, 1440, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9716 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2735, oldProjection1966, oldProjection1672, reductionProjection2786, reductionProjection2786] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9716 (0 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw4661 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9716 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2735 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9716 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2735 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4661 hH))).trans (oldProjectionSound2735 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9716 (1 : Fin 5)) = canonicalInput12106.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9716 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1966 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9716 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1966 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12106 hH))).trans (oldProjectionSound1966 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9716 (2 : Fin 5)) = canonicalInput12129.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9716 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1672 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9716 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1672 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12129 hH))).trans (oldProjectionSound1672 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9716 (3 : Fin 5)) = (normalNode5948).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9716 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2786 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9716 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2786 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2786 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9716 (4 : Fin 5)) = canonicalInput12137.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9716 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2786 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9716 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2786 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12137 hH))).trans (reductionSound2786 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5937).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9716 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5937).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9716 (j : Fin 5)))
      1 288 1440 5 ![288, 144, 1440, 1440, 1440] ![5, 10, 1, 1, 1] reductionProjection9716 ![oldProjection2735, oldProjection1966, oldProjection1672, reductionProjection2786, reductionProjection2786]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9717 : Integer.Sparse (Fin 1613) := [(0, 1), (430, -180), (563, -180), (698, -80), (1059, -40), (1221, 120), (1227, -40), (1251, 15)]

def reductionPivot9717 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 2, 0, 0], ![0, -1, -1, 2], ![1, -1, 2, -2], ![1, 0, -2, 1]]

theorem reductionSound9717 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * (normalNode5946).moment H =
      Integer.Sparse.eval reductionProjection9717 (momentVector H) := by
  have heq : reductionPivot9717 = (fun u v => (normalNode5946).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5946).moment H = injectiveMoment H reductionPivot9717 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5946).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot9717 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9717 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 360, 1, 360] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9717 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1046, oldProjection1010, oldProjection475, oldProjection1010] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9717 (0 : Fin 4)) = canonicalInput12242.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9717 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1046 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9717 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1046 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12242 hH))).trans (reductionSound1046 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9717 (1 : Fin 4)) = canonicalInput12147.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9717 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1010 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9717 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1010 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12147 hH))).trans (oldProjectionSound1010 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9717 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5409 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9717 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection475 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9717 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection475 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5409 hH))).trans (oldProjectionSound475 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9717 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5408 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9717 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1010 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9717 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1010 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5408 hH))).trans (oldProjectionSound1010 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5946).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9717 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5946).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9717 (j : Fin 4)))
      2 360 360 2 ![1, 360, 1, 360] ![360, 1, 360, 1] reductionProjection9717 ![reductionProjection1046, oldProjection1010, oldProjection475, oldProjection1010]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9718 : Integer.Sparse (Fin 1613) := [(0, 2), (94, 15), (427, 720), (430, 720), (433, 720), (563, 720), (666, 720), (669, 720), (697, -240), (698, 1040), (890, 720), (1058, -240), (1059, 400), (1221, -480), (1226, 80), (1227, 400), (1251, -335), (1272, -1440), (1389, -240)]

def reductionPivot9718 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 2, 0, 0], ![0, -1, -1, 2], ![0, 0, 1, -1], ![1, 0, -2, 1], ![1, 0, 1, -2]]

theorem reductionSound9718 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5938).moment H =
      Integer.Sparse.eval reductionProjection9718 (momentVector H) := by
  have heq : reductionPivot9718 = (fun u v => (normalNode5938).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5938).moment H = injectiveMoment H reductionPivot9718 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5938).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot9718 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9718 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 1, 1440, 360] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9718 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection3969, reductionProjection3457, reductionProjection3671, reductionProjection2808, reductionProjection9717] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9718 (0 : Fin 5)) = canonicalInput11023.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9718 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3969 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9718 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3969 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11023 hH))).trans (reductionSound3969 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9718 (1 : Fin 5)) = canonicalInput12107.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9718 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3457 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9718 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3457 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12107 hH))).trans (reductionSound3457 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9718 (2 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code1272).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9718 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3671 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9718 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3671 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound3671 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9718 (3 : Fin 5)) = canonicalInput12132.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9718 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2808 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9718 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2808 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12132 hH))).trans (reductionSound2808 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9718 (4 : Fin 5)) = canonicalInput12134.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9718 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9717 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9718 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9717 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12134 hH))).trans (reductionSound9717 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5938).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9718 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5938).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9718 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 1, 1440, 360] ![1, 1, 1440, 1, 4] reductionProjection9718 ![reductionProjection3969, reductionProjection3457, reductionProjection3671, reductionProjection2808, reductionProjection9717]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9719 : Integer.Sparse (Fin 1613) := [(0, 2), (19, 20), (94, -5), (698, -240), (1223, 240), (1226, -160), (1227, -80), (1251, 25)]

def reductionPivot9719 : Matrix (Fin 5) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, 0, 2, -2], ![0, 1, -3, 2], ![0, 1, 1, -2], ![1, -2, 0, 1]]

theorem reductionSound9719 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode10727).moment H =
      Integer.Sparse.eval reductionProjection9719 (momentVector H) := by
  have heq : reductionPivot9719 = (fun u v => (normalNode10727).entries (OAI.MUB6.Certificate.PairSemantics.permutation33 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10727).moment H = injectiveMoment H reductionPivot9719 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10727).entries OAI.MUB6.Certificate.PairSemantics.permutation33)).symm
  have hshape : reductionPivot9719 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9719 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 144, 720, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9719 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1277, oldProjection1329, oldProjection1347, oldProjection212] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9719 (0 : Fin 4)) = canonicalInput22405.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9719 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1277 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9719 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1277 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22405 hH))).trans (oldProjectionSound1277 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9719 (1 : Fin 4)) = canonicalInput31796.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9719 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1329 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9719 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1329 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31796 hH))).trans (oldProjectionSound1329 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9719 (2 : Fin 4)) = canonicalInput31803.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9719 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1347 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9719 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1347 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31803 hH))).trans (oldProjectionSound1347 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9719 (3 : Fin 4)) = canonicalInput31805.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9719 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection212 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9719 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection212 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31805 hH))).trans (oldProjectionSound212 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10727).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9719 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10727).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9719 (j : Fin 4)))
      2 1440 1440 2 ![720, 144, 720, 1] ![2, 10, 2, 1440] reductionProjection9719 ![oldProjection1277, oldProjection1329, oldProjection1347, oldProjection212]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9720 : Integer.Sparse (Fin 1613) := [(19, 4), (94, 1), (124, -144), (418, -144), (430, -144), (1058, 48), (1223, 48), (1251, 1)]

def reductionPivot9720 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, 0, -1], ![-2, 2, 0, 0], ![0, -1, -1, 2], ![0, 0, -2, 2], ![1, -1, 3, -3]]

theorem reductionSound9720 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode5941).moment H =
      Integer.Sparse.eval reductionProjection9720 (momentVector H) := by
  have heq : reductionPivot9720 = (fun u v => (normalNode5941).entries (OAI.MUB6.Certificate.PairSemantics.permutation128 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5941).moment H = injectiveMoment H reductionPivot9720 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5941).entries OAI.MUB6.Certificate.PairSemantics.permutation128)).symm
  have hshape : reductionPivot9720 0 = Pi.single (0 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9720 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9720 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1329, oldProjection471, oldProjection475, oldProjection394] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9720 (0 : Fin 4)) = canonicalInput23763.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9720 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1329 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9720 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1329 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23763 hH))).trans (oldProjectionSound1329 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9720 (1 : Fin 4)) = canonicalInput12189.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9720 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection471 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9720 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection471 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12189 hH))).trans (oldProjectionSound471 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9720 (2 : Fin 4)) = canonicalInput12142.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9720 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection475 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9720 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection475 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12142 hH))).trans (oldProjectionSound475 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9720 (3 : Fin 4)) = canonicalInput12131.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9720 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection394 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9720 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection394 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12131 hH))).trans (oldProjectionSound394 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5941).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9720 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5941).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9720 (j : Fin 4)))
      2 288 288 2 ![144, 1, 1, 1] ![2, 288, 288, 288] reductionProjection9720 ![oldProjection1329, oldProjection471, oldProjection475, oldProjection394]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9721 : Integer.Sparse (Fin 1613) := [(0, -2), (19, -20), (94, 5), (124, 360), (418, 720), (423, 360), (427, 360), (430, 720), (433, 720), (698, 240), (901, -720), (1058, -360), (1223, -240), (1226, 160), (1227, 80), (1251, -25)]

def reductionPivot9721 : Matrix (Fin 6) (Fin 4) ℤ := ![![1, 0, 0, -1], ![-2, 2, 0, 0], ![0, -1, -1, 2], ![0, -1, 3, -2], ![0, 0, -2, 2], ![1, 0, 0, -1]]

theorem reductionSound9721 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode5939).moment H =
      Integer.Sparse.eval reductionProjection9721 (momentVector H) := by
  have heq : reductionPivot9721 = (fun u v => (normalNode5939).entries (OAI.MUB6.Certificate.PairSemantics.permutation258 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5939).moment H = injectiveMoment H reductionPivot9721 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5939).entries OAI.MUB6.Certificate.PairSemantics.permutation258)).symm
  have hshape : reductionPivot9721 0 = Pi.single (0 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9721 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 288, 1440, 1] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9721 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection9719, reductionProjection7345, reductionProjection9720, reductionProjection8398, reductionProjection7748] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9721 (0 : Fin 5)) = canonicalInput23762.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9721 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9719 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9721 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9719 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23762 hH))).trans (reductionSound9719 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9721 (1 : Fin 5)) = canonicalInput12188.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9721 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7345 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9721 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7345 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12188 hH))).trans (reductionSound7345 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9721 (2 : Fin 5)) = canonicalInput12141.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9721 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9720 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9721 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9720 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12141 hH))).trans (reductionSound9720 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9721 (3 : Fin 5)) = canonicalInput12128.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9721 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8398 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9721 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8398 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12128 hH))).trans (reductionSound8398 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9721 (4 : Fin 5)) = canonicalInput12127.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9721 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7748 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9721 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7748 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12127 hH))).trans (reductionSound7748 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5939).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9721 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5939).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9721 (j : Fin 5)))
      1 720 1440 2 ![1440, 1440, 288, 1440, 1] ![1, 1, 5, 1, 1440] reductionProjection9721 ![reductionProjection9719, reductionProjection7345, reductionProjection9720, reductionProjection8398, reductionProjection7748]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9722 : Integer.Sparse (Fin 1613) := [(19, 4), (94, 1), (750, -144), (806, -144), (1047, 48), (1174, -144), (1219, 48), (1251, 1)]

def reductionPivot9722 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, 0, -1], ![-2, 2, 0, 0], ![0, -1, -1, 2], ![0, 0, 3, -3], ![1, -1, -2, 2]]

theorem reductionSound9722 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode5947).moment H =
      Integer.Sparse.eval reductionProjection9722 (momentVector H) := by
  have heq : reductionPivot9722 = (fun u v => (normalNode5947).entries (OAI.MUB6.Certificate.PairSemantics.permutation128 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5947).moment H = injectiveMoment H reductionPivot9722 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5947).entries OAI.MUB6.Certificate.PairSemantics.permutation128)).symm
  have hshape : reductionPivot9722 0 = Pi.single (0 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9722 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9722 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1369, oldProjection689, oldProjection584, oldProjection601] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9722 (0 : Fin 4)) = canonicalInput23764.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9722 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1369 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9722 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1369 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23764 hH))).trans (oldProjectionSound1369 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9722 (1 : Fin 4)) = canonicalInput12190.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9722 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection689 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9722 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection689 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12190 hH))).trans (oldProjectionSound689 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9722 (2 : Fin 4)) = canonicalInput12144.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9722 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection584 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9722 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection584 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12144 hH))).trans (oldProjectionSound584 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9722 (3 : Fin 4)) = canonicalInput12138.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9722 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection601 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9722 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection601 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12138 hH))).trans (oldProjectionSound601 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5947).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9722 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5947).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9722 (j : Fin 4)))
      2 288 288 2 ![144, 1, 1, 1] ![2, 288, 288, 288] reductionProjection9722 ![oldProjection1369, oldProjection689, oldProjection584, oldProjection601]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9723 : Integer.Sparse (Fin 1613) := [(0, -1), (19, 40), (20, 5), (94, -25), (124, 720), (418, 720), (430, 720), (691, -240), (716, 720), (750, 720), (758, 720), (806, 1440), (1047, -240), (1052, -240), (1058, -240), (1174, 720), (1178, -1440), (1219, -240), (1223, -240), (1251, -25)]

def reductionPivot9723 : Matrix (Fin 6) (Fin 4) ℤ := ![![1, -1, 0, 0], ![-2, 2, 0, 0], ![0, -1, -1, 2], ![0, 0, -2, 2], ![0, 0, 3, -3], ![1, 0, 0, -1]]

theorem reductionSound9723 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5940).moment H =
      Integer.Sparse.eval reductionProjection9723 (momentVector H) := by
  have heq : reductionPivot9723 = (fun u v => (normalNode5940).entries (OAI.MUB6.Certificate.PairSemantics.permutation258 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5940).moment H = injectiveMoment H reductionPivot9723 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5940).entries OAI.MUB6.Certificate.PairSemantics.permutation258)).symm
  have hshape : reductionPivot9723 0 = Pi.single (0 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9723 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 288, 288, 288, 1] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9723 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection7089, reductionProjection6989, reductionProjection9722, reductionProjection9720, reductionProjection2650] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9723 (0 : Fin 5)) = canonicalInput22863.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9723 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7089 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9723 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7089 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22863 hH))).trans (reductionSound7089 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9723 (1 : Fin 5)) = canonicalInput12180.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9723 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6989 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9723 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6989 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12180 hH))).trans (reductionSound6989 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9723 (2 : Fin 5)) = canonicalInput12139.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9723 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9722 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9723 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9722 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12139 hH))).trans (reductionSound9722 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9723 (3 : Fin 5)) = (normalNode5941).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9723 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9720 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9723 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9720 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9720 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9723 (4 : Fin 5)) = canonicalInput12130.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9723 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2650 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9723 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2650 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12130 hH))).trans (reductionSound2650 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5940).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9723 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5940).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9723 (j : Fin 5)))
      1 1440 1440 1 ![1440, 288, 288, 288, 1] ![1, 5, 5, 5, 1440] reductionProjection9723 ![reductionProjection7089, reductionProjection6989, reductionProjection9722, reductionProjection9720, reductionProjection2650]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9724 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -20), (20, 5), (94, -30), (243, 80), (293, 720), (433, 1440), (698, 240), (700, 160), (750, 720), (761, 720), (806, 1440), (865, 720), (869, 720), (1047, -480), (1055, -240), (1154, 720), (1174, 2160), (1197, 720), (1219, -720), (1226, 80), (1227, 80), (1251, -30), (1270, 720)]

def reductionPivot9724 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 2, 0, 0], ![0, -1, -1, 2], ![0, 0, 3, -3], ![1, -1, -1, 1], ![1, 0, 0, -1]]

theorem reductionSound9724 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5942).moment H =
      Integer.Sparse.eval reductionProjection9724 (momentVector H) := by
  have heq : reductionPivot9724 = (fun u v => (normalNode5942).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5942).moment H = injectiveMoment H reductionPivot9724 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5942).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot9724 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9724 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 288, 1440, 288, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9724 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection9061, reductionProjection9706, reductionProjection2778, reductionProjection9722, reductionProjection2786] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9724 (0 : Fin 5)) = (normalNode5853).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9724 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9061 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9724 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9061 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9061 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9724 (1 : Fin 5)) = (normalNode5935).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9724 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9706 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9724 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9706 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9706 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9724 (2 : Fin 5)) = canonicalInput12135.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9724 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2778 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9724 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2778 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12135 hH))).trans (reductionSound2778 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9724 (3 : Fin 5)) = (normalNode5947).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9724 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9722 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9724 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9722 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9722 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9724 (4 : Fin 5)) = (normalNode5948).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9724 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2786 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9724 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2786 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2786 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5942).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9724 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5942).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9724 (j : Fin 5)))
      1 1440 1440 1 ![1440, 288, 1440, 288, 1440] ![1, 5, 1, 5, 1] reductionProjection9724 ![reductionProjection9061, reductionProjection9706, reductionProjection2778, reductionProjection9722, reductionProjection2786]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9725 : Integer.Sparse (Fin 1613) := [(19, -4), (20, 1), (72, -48), (81, -48), (94, -3), (243, 32), (430, 144), (433, 144), (682, -48), (697, -48), (698, 96), (700, 64), (704, 16), (761, 144), (806, 432), (865, 144), (1044, -48), (1050, -48), (1052, -96), (1059, 48), (1174, 144), (1197, 144), (1217, -48), (1219, -48), (1221, -48), (1226, 16), (1227, 16), (1251, -12)]

def reductionPivot9725 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 2, 0, 0], ![0, -1, -1, 2], ![0, 0, 3, -3], ![1, -1, 0, 0], ![1, 0, -1, 0]]

theorem reductionSound9725 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode5943).moment H =
      Integer.Sparse.eval reductionProjection9725 (momentVector H) := by
  have heq : reductionPivot9725 = (fun u v => (normalNode5943).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5943).moment H = injectiveMoment H reductionPivot9725 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5943).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot9725 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9725 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 288, 1440, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9725 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection2898, reductionProjection2878, oldProjection1999, reductionProjection2786, reductionProjection2787] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9725 (0 : Fin 5)) = (normalNode5854).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9725 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2898 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9725 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2898 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2898 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9725 (1 : Fin 5)) = (normalNode5936).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9725 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2878 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9725 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2878 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2878 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9725 (2 : Fin 5)) = canonicalInput12136.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9725 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1999 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9725 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1999 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12136 hH))).trans (oldProjectionSound1999 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9725 (3 : Fin 5)) = (normalNode5948).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9725 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2786 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9725 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2786 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2786 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9725 (4 : Fin 5)) = (normalNode5949).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9725 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2787 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9725 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2787 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2787 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5943).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9725 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5943).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9725 (j : Fin 5)))
      1 288 1440 5 ![720, 288, 1440, 1440, 1440] ![2, 5, 1, 1, 1] reductionProjection9725 ![reductionProjection2898, reductionProjection2878, oldProjection1999, reductionProjection2786, reductionProjection2787]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9726 : Integer.Sparse (Fin 1613) := [(0, 2), (430, 45), (546, 45), (563, 90), (698, 70), (1059, 30), (1221, -60), (1227, 70), (1251, -25), (1273, -90), (1389, -60)]

def reductionPivot9726 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 2, 0, 0], ![0, -1, -1, 2], ![0, 0, 1, -1], ![1, -1, 1, -1], ![1, 0, -2, 1]]

theorem reductionSound9726 {H : CMatrix} (hH : IsHadamard H) :
    (90 : ℝ) * (normalNode5944).moment H =
      Integer.Sparse.eval reductionProjection9726 (momentVector H) := by
  have heq : reductionPivot9726 = (fun u v => (normalNode5944).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5944).moment H = injectiveMoment H reductionPivot9726 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5944).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot9726 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9726 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 1440, 1, 360, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9726 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection4825, oldProjection2018, reductionProjection2777, reductionProjection9717, oldProjection2018] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9726 (0 : Fin 5)) = canonicalInput12239.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9726 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4825 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9726 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4825 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12239 hH))).trans (reductionSound4825 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9726 (1 : Fin 5)) = canonicalInput12145.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9726 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2018 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9726 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2018 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12145 hH))).trans (oldProjectionSound2018 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9726 (2 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code1273).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9726 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2777 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9726 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2777 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2777 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9726 (3 : Fin 5)) = (normalNode5946).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9726 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9717 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9726 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9717 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9717 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9726 (4 : Fin 5)) = canonicalInput12133.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9726 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2018 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9726 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2018 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12133 hH))).trans (oldProjectionSound2018 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5944).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9726 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5944).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9726 (j : Fin 5)))
      1 90 1440 16 ![720, 1440, 1, 360, 1440] ![2, 1, 1440, 4, 1] reductionProjection9726 ![reductionProjection4825, oldProjection2018, reductionProjection2777, reductionProjection9717, oldProjection2018]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9727 : Integer.Sparse (Fin 1613) := [(0, 3), (19, -10), (94, -5), (430, 360), (563, 360), (698, 320), (806, 720), (865, 720), (1050, -240), (1059, 240), (1128, 720), (1221, -240), (1227, 80), (1250, 30), (1251, -40), (1273, -720)]

def reductionPivot9727 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 2, 0, 0], ![0, -1, -1, 2], ![0, 0, 2, -2], ![1, -1, 0, 0], ![1, 0, -2, 1]]

theorem reductionSound9727 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode5945).moment H =
      Integer.Sparse.eval reductionProjection9727 (momentVector H) := by
  have heq : reductionPivot9727 = (fun u v => (normalNode5945).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5945).moment H = injectiveMoment H reductionPivot9727 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5945).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot9727 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9727 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 1440, 1, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9727 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection3877, oldProjection1999, reductionProjection2787, reductionProjection2777, oldProjection1999] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9727 (0 : Fin 5)) = canonicalInput12240.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9727 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3877 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9727 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3877 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12240 hH))).trans (reductionSound3877 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9727 (1 : Fin 5)) = canonicalInput12146.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9727 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1999 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9727 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1999 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12146 hH))).trans (oldProjectionSound1999 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9727 (2 : Fin 5)) = (normalNode5949).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9727 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2787 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9727 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2787 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2787 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9727 (3 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code1273).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9727 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2777 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9727 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2777 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2777 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9727 (4 : Fin 5)) = canonicalInput12136.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9727 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1999 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9727 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1999 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12136 hH))).trans (oldProjectionSound1999 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5945).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9727 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5945).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9727 (j : Fin 5)))
      1 720 1440 2 ![1440, 1440, 1440, 1, 1440] ![1, 1, 1, 1440, 1] reductionProjection9727 ![reductionProjection3877, oldProjection1999, reductionProjection2787, reductionProjection2777, oldProjection1999]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization
