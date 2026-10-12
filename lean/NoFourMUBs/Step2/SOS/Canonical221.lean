import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical233
import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes00
import NoFourMUBs.Step2.SOS.MomentCodes01
import NoFourMUBs.Step2.SOS.MomentCodes06
import NoFourMUBs.Step2.SOS.MomentCodes11
import NoFourMUBs.Step2.SOS.NormalizationNodes000
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes37
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations
import OAI.Analysis.MutuallyUnbiased.PairTargets.ExtraPermutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput14144 : ExponentCode := ⟨4, 3, ![![-1, -2, 3], ![0, 2, -2], ![0, -2, 2], ![1, 2, -3]]⟩

def canonicalOutput14144 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node264⟩

theorem canonicalSound14144 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14144.moment H = canonicalOutput14144.moment H :=
  canonical_of_padded canonicalInput14144 canonicalOutput14144 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14145 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.raw7468step0⟩

def canonicalOutput14145 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node274⟩

theorem canonicalSound14145 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14145.moment H = canonicalOutput14145.moment H :=
  by
  change injectiveMoment H OAI.MUB6.Certificate.PairSemantics.raw7468step0 = _
  have heq : OAI.MUB6.Certificate.PairSemantics.raw7468step0 = OAI.MUB6.Certificate.PairSemantics.raw7468.transpose := by ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  rw [heq]
  exact (injectiveMoment_transpose H OAI.MUB6.Certificate.PairSemantics.raw7468).trans (OAI.MUB6.Certificate.PairSemantics.canonical7468 hH)

def canonicalInput14146 : ExponentCode := ⟨3, 3, ![![-1, -2, 3], ![1, -3, 2], ![0, 5, -5]]⟩

def canonicalOutput14146 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node60⟩

theorem canonicalSound14146 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14146.moment H = canonicalOutput14146.moment H :=
  canonical_of_padded canonicalInput14146 canonicalOutput14146 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14147 : ExponentCode := ⟨3, 4, ![![-1, -2, 3, 0], ![-3, 3, -2, 2], ![4, -1, -1, -2]]⟩

def canonicalOutput14147 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code78

theorem canonicalSound14147 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14147.moment H = canonicalOutput14147.moment H :=
  canonical_of_padded canonicalInput14147 canonicalOutput14147 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput14148 : ExponentCode := ⟨3, 4, ![![-1, -2, 3, 0], ![-3, 3, -1, 1], ![4, -1, -2, -1]]⟩

def canonicalOutput14148 : ExponentCode := normalNode216

theorem canonicalSound14148 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14148.moment H = canonicalOutput14148.moment H :=
  canonical_of_padded canonicalInput14148 canonicalOutput14148 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14149 : ExponentCode := ⟨3, 4, ![![-1, -2, 3, 0], ![-2, 1, -2, 3], ![3, 1, -1, -3]]⟩

def canonicalOutput14149 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code84

theorem canonicalSound14149 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14149.moment H = canonicalOutput14149.moment H :=
  canonical_of_padded canonicalInput14149 canonicalOutput14149 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput14150 : ExponentCode := ⟨3, 4, ![![-1, -2, 3, 0], ![-2, 1, 2, -1], ![3, 1, -5, 1]]⟩

def canonicalOutput14150 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node72⟩

theorem canonicalSound14150 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14150.moment H = canonicalOutput14150.moment H :=
  canonical_of_padded canonicalInput14150 canonicalOutput14150 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14151 : ExponentCode := ⟨3, 4, ![![-1, -2, 3, 0], ![-2, 2, -2, 2], ![3, 0, -1, -2]]⟩

def canonicalOutput14151 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node110⟩

theorem canonicalSound14151 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14151.moment H = canonicalOutput14151.moment H :=
  canonical_of_padded canonicalInput14151 canonicalOutput14151 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput14152 : ExponentCode := ⟨3, 4, ![![-1, -2, 3, 0], ![-2, 3, -2, 1], ![3, -1, -1, -1]]⟩

def canonicalOutput14152 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node108⟩

theorem canonicalSound14152 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14152.moment H = canonicalOutput14152.moment H :=
  canonical_of_padded canonicalInput14152 canonicalOutput14152 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput14153 : ExponentCode := ⟨3, 4, ![![-1, -2, 3, 0], ![-2, 3, 0, -1], ![3, -1, -3, 1]]⟩

def canonicalOutput14153 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node95⟩

theorem canonicalSound14153 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14153.moment H = canonicalOutput14153.moment H :=
  canonical_of_padded canonicalInput14153 canonicalOutput14153 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14154 : ExponentCode := ⟨3, 4, ![![-1, -2, 3, 0], ![-2, 4, -1, -1], ![3, -2, -2, 1]]⟩

def canonicalOutput14154 : ExponentCode := normalNode235

theorem canonicalSound14154 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14154.moment H = canonicalOutput14154.moment H :=
  canonical_of_padded canonicalInput14154 canonicalOutput14154 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14155 : ExponentCode := ⟨5, 4, ![![-1, -2, 3, 0], ![-1, -1, -1, 3], ![0, 3, -1, -2], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput14155 : ExponentCode := normalNode6660

theorem canonicalSound14155 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14155.moment H = canonicalOutput14155.moment H :=
  canonical_of_padded canonicalInput14155 canonicalOutput14155 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput14156 : ExponentCode := ⟨3, 4, ![![-1, -2, 3, 0], ![-1, 0, -3, 4], ![2, 2, 0, -4]]⟩

def canonicalOutput14156 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node99⟩

theorem canonicalSound14156 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14156.moment H = canonicalOutput14156.moment H :=
  canonical_of_padded canonicalInput14156 canonicalOutput14156 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput14157 : ExponentCode := ⟨3, 4, ![![-1, -2, 3, 0], ![-1, 1, -4, 4], ![2, 1, 1, -4]]⟩

def canonicalOutput14157 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code43

theorem canonicalSound14157 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14157.moment H = canonicalOutput14157.moment H :=
  canonical_of_padded canonicalInput14157 canonicalOutput14157 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput14158 : ExponentCode := ⟨3, 4, ![![-1, -2, 3, 0], ![-1, 1, 2, -2], ![2, 1, -5, 2]]⟩

def canonicalOutput14158 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node74⟩

theorem canonicalSound14158 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14158.moment H = canonicalOutput14158.moment H :=
  canonical_of_padded canonicalInput14158 canonicalOutput14158 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14159 : ExponentCode := ⟨3, 4, ![![-1, -2, 3, 0], ![-1, 2, -2, 1], ![2, 0, -1, -1]]⟩

def canonicalOutput14159 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node226⟩

theorem canonicalSound14159 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14159.moment H = canonicalOutput14159.moment H :=
  canonical_of_padded canonicalInput14159 canonicalOutput14159 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput14160 : ExponentCode := ⟨5, 4, ![![-1, -2, 3, 0], ![-1, 3, 0, -2], ![0, -1, -2, 3], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput14160 : ExponentCode := normalNode6674

theorem canonicalSound14160 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14160.moment H = canonicalOutput14160.moment H :=
  canonical_of_padded canonicalInput14160 canonicalOutput14160 (by decide) (by decide)
    ⟨false, false, canonicalPermutation41, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput14161 : ExponentCode := ⟨3, 4, ![![-1, -2, 3, 0], ![-1, 3, 0, -2], ![2, -1, -3, 2]]⟩

def canonicalOutput14161 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node97⟩

theorem canonicalSound14161 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14161.moment H = canonicalOutput14161.moment H :=
  canonical_of_padded canonicalInput14161 canonicalOutput14161 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14162 : ExponentCode := ⟨3, 4, ![![-1, -2, 3, 0], ![-1, 4, -1, -2], ![2, -2, -2, 2]]⟩

def canonicalOutput14162 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node112⟩

theorem canonicalSound14162 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14162.moment H = canonicalOutput14162.moment H :=
  canonical_of_padded canonicalInput14162 canonicalOutput14162 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14163 : ExponentCode := ⟨3, 4, ![![-1, -2, 3, 0], ![0, -1, 2, -1], ![1, 3, -5, 1]]⟩

def canonicalOutput14163 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node123⟩

theorem canonicalSound14163 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14163.moment H = canonicalOutput14163.moment H :=
  canonical_of_padded canonicalInput14163 canonicalOutput14163 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput14164 : ExponentCode := ⟨5, 4, ![![-1, -2, 3, 0], ![0, 0, -3, 3], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput14164 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2430⟩

theorem canonicalSound14164 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14164.moment H = canonicalOutput14164.moment H :=
  canonical_of_padded canonicalInput14164 canonicalOutput14164 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput14165 : ExponentCode := ⟨5, 4, ![![-1, -2, 3, 0], ![0, 0, -1, 1], ![0, 1, -2, 1], ![0, 1, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput14165 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2425⟩

theorem canonicalSound14165 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14165.moment H = canonicalOutput14165.moment H :=
  canonical_of_padded canonicalInput14165 canonicalOutput14165 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput14166 : ExponentCode := ⟨5, 4, ![![-1, -2, 3, 0], ![0, 0, 1, -1], ![0, 1, -4, 3], ![0, 1, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput14166 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2417⟩

theorem canonicalSound14166 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14166.moment H = canonicalOutput14166.moment H :=
  canonical_of_padded canonicalInput14166 canonicalOutput14166 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput14167 : ExponentCode := ⟨4, 4, ![![-1, -2, 3, 0], ![0, 1, -4, 3], ![0, 1, 1, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput14167 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node817⟩

theorem canonicalSound14167 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14167.moment H = canonicalOutput14167.moment H :=
  canonical_of_padded canonicalInput14167 canonicalOutput14167 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput14168 : ExponentCode := ⟨3, 4, ![![-1, -2, 3, 0], ![0, 1, -4, 3], ![1, 1, 1, -3]]⟩

def canonicalOutput14168 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node87⟩

theorem canonicalSound14168 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14168.moment H = canonicalOutput14168.moment H :=
  canonical_of_padded canonicalInput14168 canonicalOutput14168 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput14169 : ExponentCode := ⟨3, 4, ![![-1, -2, 3, 0], ![0, 1, 1, -2], ![1, 1, -4, 2]]⟩

def canonicalOutput14169 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node206⟩

theorem canonicalSound14169 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14169.moment H = canonicalOutput14169.moment H :=
  canonical_of_padded canonicalInput14169 canonicalOutput14169 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput14170 : ExponentCode := ⟨3, 4, ![![-1, -2, 3, 0], ![0, 1, 2, -3], ![1, 1, -5, 3]]⟩

def canonicalOutput14170 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node76⟩

theorem canonicalSound14170 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14170.moment H = canonicalOutput14170.moment H :=
  canonical_of_padded canonicalInput14170 canonicalOutput14170 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14171 : ExponentCode := ⟨3, 4, ![![-1, -2, 3, 0], ![0, 2, 1, -3], ![1, 0, -4, 3]]⟩

def canonicalOutput14171 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node88⟩

theorem canonicalSound14171 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14171.moment H = canonicalOutput14171.moment H :=
  canonical_of_padded canonicalInput14171 canonicalOutput14171 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14172 : ExponentCode := ⟨3, 4, ![![-1, -2, 3, 0], ![0, 3, 0, -3], ![1, -1, -3, 3]]⟩

def canonicalOutput14172 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node92⟩

theorem canonicalSound14172 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14172.moment H = canonicalOutput14172.moment H :=
  canonical_of_padded canonicalInput14172 canonicalOutput14172 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput14173 : ExponentCode := ⟨3, 4, ![![-1, -2, 3, 0], ![0, 4, -1, -3], ![1, -2, -2, 3]]⟩

def canonicalOutput14173 : ExponentCode := normalNode241

theorem canonicalSound14173 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14173.moment H = canonicalOutput14173.moment H :=
  canonical_of_padded canonicalInput14173 canonicalOutput14173 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14174 : ExponentCode := ⟨3, 4, ![![-1, -2, 3, 0], ![1, -1, 2, -2], ![0, 3, -5, 2]]⟩

def canonicalOutput14174 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node73⟩

theorem canonicalSound14174 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14174.moment H = canonicalOutput14174.moment H :=
  canonical_of_padded canonicalInput14174 canonicalOutput14174 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14175 : ExponentCode := ⟨3, 4, ![![-1, -2, 3, 0], ![1, 0, 1, -2], ![0, 2, -4, 2]]⟩

def canonicalOutput14175 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node201⟩

theorem canonicalSound14175 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14175.moment H = canonicalOutput14175.moment H :=
  canonical_of_padded canonicalInput14175 canonicalOutput14175 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput14176 : ExponentCode := ⟨3, 4, ![![-1, -2, 3, 0], ![1, 1, 1, -3], ![0, 1, -4, 3]]⟩

def canonicalOutput14176 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node87⟩

theorem canonicalSound14176 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14176.moment H = canonicalOutput14176.moment H :=
  canonical_of_padded canonicalInput14176 canonicalOutput14176 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14177 : ExponentCode := ⟨3, 4, ![![-1, -2, 3, 0], ![2, -2, 1, -1], ![-1, 4, -4, 1]]⟩

def canonicalOutput14177 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node82⟩

theorem canonicalSound14177 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14177.moment H = canonicalOutput14177.moment H :=
  canonical_of_padded canonicalInput14177 canonicalOutput14177 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14178 : ExponentCode := ⟨3, 4, ![![-1, -2, 3, 0], ![2, -1, 0, -1], ![-1, 3, -3, 1]]⟩

def canonicalOutput14178 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node222⟩

theorem canonicalSound14178 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14178.moment H = canonicalOutput14178.moment H :=
  canonical_of_padded canonicalInput14178 canonicalOutput14178 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput14179 : ExponentCode := ⟨3, 4, ![![-1, -2, 3, 0], ![2, 0, 1, -3], ![-1, 2, -4, 3]]⟩

def canonicalOutput14179 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node86⟩

theorem canonicalSound14179 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14179.moment H = canonicalOutput14179.moment H :=
  canonical_of_padded canonicalInput14179 canonicalOutput14179 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14180 : ExponentCode := ⟨3, 4, ![![-1, -2, 3, 0], ![2, 1, 0, -3], ![-1, 1, -3, 3]]⟩

def canonicalOutput14180 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node98⟩

theorem canonicalSound14180 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14180.moment H = canonicalOutput14180.moment H :=
  canonical_of_padded canonicalInput14180 canonicalOutput14180 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput14181 : ExponentCode := ⟨3, 4, ![![-1, -2, 3, 0], ![3, -1, -1, -1], ![-2, 3, -2, 1]]⟩

def canonicalOutput14181 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node108⟩

theorem canonicalSound14181 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14181.moment H = canonicalOutput14181.moment H :=
  canonical_of_padded canonicalInput14181 canonicalOutput14181 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14182 : ExponentCode := ⟨3, 4, ![![-1, -2, 3, 0], ![3, -1, 0, -2], ![-2, 3, -3, 2]]⟩

def canonicalOutput14182 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node96⟩

theorem canonicalSound14182 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14182.moment H = canonicalOutput14182.moment H :=
  canonical_of_padded canonicalInput14182 canonicalOutput14182 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14183 : ExponentCode := ⟨6, 6, ![![-1, -2, 3, 0, 0, 0], ![-2, 2, 0, 0, 0, 0], ![3, 0, -3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput14183 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node37⟩

theorem canonicalSound14183 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14183.moment H = canonicalOutput14183.moment H :=
  canonical_of_padded canonicalInput14183 canonicalOutput14183 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation253, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput14184 : ExponentCode := ⟨6, 6, ![![-1, -2, 3, 0, 0, 0], ![-2, 3, -1, 0, 0, 0], ![3, -1, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput14184 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node21⟩

theorem canonicalSound14184 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14184.moment H = canonicalOutput14184.moment H :=
  canonical_of_padded canonicalInput14184 canonicalOutput14184 (by decide) (by decide)
    ⟨false, true, canonicalPermutation60, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput14185 : ExponentCode := ⟨6, 6, ![![-1, -2, 3, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![2, 1, -3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput14185 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node63⟩

theorem canonicalSound14185 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14185.moment H = canonicalOutput14185.moment H :=
  canonical_of_padded canonicalInput14185 canonicalOutput14185 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation253, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput14186 : ExponentCode := ⟨6, 6, ![![-1, -2, 3, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![2, 0, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput14186 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node36⟩

theorem canonicalSound14186 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14186.moment H = canonicalOutput14186.moment H :=
  canonical_of_padded canonicalInput14186 canonicalOutput14186 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation253, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput14187 : ExponentCode := ⟨6, 6, ![![-1, -2, 3, 0, 0, 0], ![-1, 3, -2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput14187 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node43⟩

theorem canonicalSound14187 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14187.moment H = canonicalOutput14187.moment H :=
  canonical_of_padded canonicalInput14187 canonicalOutput14187 (by decide) (by decide)
    ⟨false, true, canonicalPermutation63, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput14188 : ExponentCode := ⟨6, 6, ![![-1, -2, 3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, 2, -3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput14188 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node10⟩

theorem canonicalSound14188 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14188.moment H = canonicalOutput14188.moment H :=
  canonical_of_padded canonicalInput14188 canonicalOutput14188 (by decide) (by decide)
    ⟨true, false, canonicalPermutation60, canonicalPermutation84⟩ (by decide +kernel) hH

def canonicalInput14189 : ExponentCode := ⟨6, 6, ![![-1, -2, 3, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput14189 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node56⟩

theorem canonicalSound14189 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14189.moment H = canonicalOutput14189.moment H :=
  canonical_of_padded canonicalInput14189 canonicalOutput14189 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput14190 : ExponentCode := ⟨6, 6, ![![-1, -2, 3, 0, 0, 0], ![0, 2, -2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput14190 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node57⟩

theorem canonicalSound14190 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14190.moment H = canonicalOutput14190.moment H :=
  canonical_of_padded canonicalInput14190 canonicalOutput14190 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput14191 : ExponentCode := ⟨6, 6, ![![-1, -2, 3, 0, 0, 0], ![0, 3, -3, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput14191 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node58⟩

theorem canonicalSound14191 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14191.moment H = canonicalOutput14191.moment H :=
  canonical_of_padded canonicalInput14191 canonicalOutput14191 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput14192 : ExponentCode := ⟨6, 6, ![![-1, -2, 3, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 3, -3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput14192 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node58⟩

theorem canonicalSound14192 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14192.moment H = canonicalOutput14192.moment H :=
  canonical_of_padded canonicalInput14192 canonicalOutput14192 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation253, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput14193 : ExponentCode := ⟨6, 6, ![![-1, -2, 3, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 2, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput14193 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node57⟩

theorem canonicalSound14193 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14193.moment H = canonicalOutput14193.moment H :=
  canonical_of_padded canonicalInput14193 canonicalOutput14193 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation253, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput14194 : ExponentCode := ⟨6, 6, ![![-1, -2, 3, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput14194 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node56⟩

theorem canonicalSound14194 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14194.moment H = canonicalOutput14194.moment H :=
  canonical_of_padded canonicalInput14194 canonicalOutput14194 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation253, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput14195 : ExponentCode := ⟨6, 6, ![![-1, -2, 3, 0, 0, 0], ![1, 2, -3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput14195 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node10⟩

theorem canonicalSound14195 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14195.moment H = canonicalOutput14195.moment H :=
  canonical_of_padded canonicalInput14195 canonicalOutput14195 (by decide) (by decide)
    ⟨true, false, canonicalPermutation60, OAI.MUB6.Certificate.PairSemantics.permutation232⟩ (by decide +kernel) hH

def canonicalInput14196 : ExponentCode := ⟨6, 6, ![![-1, -2, 3, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 3, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput14196 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node43⟩

theorem canonicalSound14196 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14196.moment H = canonicalOutput14196.moment H :=
  canonical_of_padded canonicalInput14196 canonicalOutput14196 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput14197 : ExponentCode := ⟨6, 6, ![![-1, -2, 3, 0, 0, 0], ![2, 0, -2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput14197 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node36⟩

theorem canonicalSound14197 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14197.moment H = canonicalOutput14197.moment H :=
  canonical_of_padded canonicalInput14197 canonicalOutput14197 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput14198 : ExponentCode := ⟨6, 6, ![![-1, -2, 3, 0, 0, 0], ![2, 1, -3, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput14198 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node63⟩

theorem canonicalSound14198 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14198.moment H = canonicalOutput14198.moment H :=
  canonical_of_padded canonicalInput14198 canonicalOutput14198 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation253, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput14199 : ExponentCode := ⟨6, 6, ![![-1, -2, 3, 0, 0, 0], ![3, -1, -2, 0, 0, 0], ![-2, 3, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput14199 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node21⟩

theorem canonicalSound14199 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14199.moment H = canonicalOutput14199.moment H :=
  canonical_of_padded canonicalInput14199 canonicalOutput14199 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation254, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput14200 : ExponentCode := ⟨6, 6, ![![-1, -2, 3, 0, 0, 0], ![3, 0, -3, 0, 0, 0], ![-2, 2, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput14200 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node37⟩

theorem canonicalSound14200 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14200.moment H = canonicalOutput14200.moment H :=
  canonical_of_padded canonicalInput14200 canonicalOutput14200 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput14201 : ExponentCode := ⟨5, 4, ![![-1, -2, 4, -1], ![0, 0, -3, 3], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput14201 : ExponentCode := normalNode6507

theorem canonicalSound14201 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14201.moment H = canonicalOutput14201.moment H :=
  canonical_of_padded canonicalInput14201 canonicalOutput14201 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput14202 : ExponentCode := ⟨4, 4, ![![-1, -2, 4, -1], ![0, 1, -4, 3], ![0, 1, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput14202 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node981⟩

theorem canonicalSound14202 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14202.moment H = canonicalOutput14202.moment H :=
  canonical_of_padded canonicalInput14202 canonicalOutput14202 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput14203 : ExponentCode := ⟨4, 4, ![![-1, -1, -3, 5], ![-1, -1, 2, 0], ![1, 0, 1, -2], ![1, 2, 0, -3]]⟩

def canonicalOutput14203 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code414

theorem canonicalSound14203 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14203.moment H = canonicalOutput14203.moment H :=
  canonical_of_padded canonicalInput14203 canonicalOutput14203 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput14204 : ExponentCode := ⟨4, 4, ![![-1, -1, -3, 5], ![-1, -1, 2, 0], ![1, 1, 0, -2], ![1, 1, 1, -3]]⟩

def canonicalOutput14204 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code712

theorem canonicalSound14204 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14204.moment H = canonicalOutput14204.moment H :=
  canonical_of_padded canonicalInput14204 canonicalOutput14204 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput14205 : ExponentCode := ⟨4, 4, ![![-1, -1, -3, 5], ![-1, -1, 2, 0], ![1, 1, 1, -3], ![1, 1, 0, -2]]⟩

def canonicalOutput14205 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code712

theorem canonicalSound14205 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14205.moment H = canonicalOutput14205.moment H :=
  canonical_of_padded canonicalInput14205 canonicalOutput14205 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput14206 : ExponentCode := ⟨4, 4, ![![-1, -1, -3, 5], ![-1, -1, 3, -1], ![1, 1, 0, -2], ![1, 1, 0, -2]]⟩

def canonicalOutput14206 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code117

theorem canonicalSound14206 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14206.moment H = canonicalOutput14206.moment H :=
  canonical_of_padded canonicalInput14206 canonicalOutput14206 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput14207 : ExponentCode := ⟨4, 4, ![![-1, -1, -3, 5], ![-1, 0, 2, -1], ![0, 1, 1, -2], ![2, 0, 0, -2]]⟩

def canonicalOutput14207 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node887⟩

theorem canonicalSound14207 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14207.moment H = canonicalOutput14207.moment H :=
  canonical_of_padded canonicalInput14207 canonicalOutput14207 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
