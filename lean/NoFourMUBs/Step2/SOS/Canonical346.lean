import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes033
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations
import OAI.Analysis.MutuallyUnbiased.PairTargets.ExtraPermutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput22144 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -1, 0], ![1, 0, 0, -2, 1, 0]]⟩

def canonicalOutput22144 : ExponentCode := normalNode8330

theorem canonicalSound22144 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22144.moment H = canonicalOutput22144.moment H :=
  canonical_of_padded canonicalInput22144 canonicalOutput22144 (by decide) (by decide)
    ⟨false, false, canonicalPermutation98, OAI.MUB6.Certificate.PairSemantics.permutation342⟩ (by decide +kernel) hH

def canonicalInput22145 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![-2, 0, 0, 3, -1, 0], ![0, 0, 0, -1, 1, 0], ![2, 0, 0, -2, 0, 0]]⟩

def canonicalOutput22145 : ExponentCode := normalNode8406

theorem canonicalSound22145 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22145.moment H = canonicalOutput22145.moment H :=
  canonical_of_padded canonicalInput22145 canonicalOutput22145 (by decide) (by decide)
    ⟨false, false, canonicalPermutation100, OAI.MUB6.Certificate.PairSemantics.permutation342⟩ (by decide +kernel) hH

def canonicalInput22146 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput22146 : ExponentCode := normalNode8064

theorem canonicalSound22146 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22146.moment H = canonicalOutput22146.moment H :=
  canonical_of_padded canonicalInput22146 canonicalOutput22146 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation213, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61⟩ (by decide +kernel) hH

def canonicalInput22147 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput22147 : ExponentCode := normalNode8066

theorem canonicalSound22147 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22147.moment H = canonicalOutput22147.moment H :=
  canonical_of_padded canonicalInput22147 canonicalOutput22147 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation213, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61⟩ (by decide +kernel) hH

def canonicalInput22148 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput22148 : ExponentCode := normalNode8066

theorem canonicalSound22148 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22148.moment H = canonicalOutput22148.moment H :=
  canonical_of_padded canonicalInput22148 canonicalOutput22148 (by decide) (by decide)
    ⟨false, false, canonicalPermutation100, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61⟩ (by decide +kernel) hH

def canonicalInput22149 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput22149 : ExponentCode := normalNode8064

theorem canonicalSound22149 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22149.moment H = canonicalOutput22149.moment H :=
  canonical_of_padded canonicalInput22149 canonicalOutput22149 (by decide) (by decide)
    ⟨false, false, canonicalPermutation100, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61⟩ (by decide +kernel) hH

def canonicalInput22150 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput22150 : ExponentCode := normalNode8066

theorem canonicalSound22150 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22150.moment H = canonicalOutput22150.moment H :=
  canonical_of_padded canonicalInput22150 canonicalOutput22150 (by decide) (by decide)
    ⟨false, false, canonicalPermutation90, OAI.MUB6.Certificate.PairSemantics.permutation210⟩ (by decide +kernel) hH

def canonicalInput22151 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput22151 : ExponentCode := normalNode8361

theorem canonicalSound22151 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22151.moment H = canonicalOutput22151.moment H :=
  canonical_of_padded canonicalInput22151 canonicalOutput22151 (by decide) (by decide)
    ⟨false, false, canonicalPermutation210, canonicalPermutation93⟩ (by decide +kernel) hH

def canonicalInput22152 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput22152 : ExponentCode := normalNode8067

theorem canonicalSound22152 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22152.moment H = canonicalOutput22152.moment H :=
  canonical_of_padded canonicalInput22152 canonicalOutput22152 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation213, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61⟩ (by decide +kernel) hH

def canonicalInput22153 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput22153 : ExponentCode := normalNode8067

theorem canonicalSound22153 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22153.moment H = canonicalOutput22153.moment H :=
  canonical_of_padded canonicalInput22153 canonicalOutput22153 (by decide) (by decide)
    ⟨false, false, canonicalPermutation100, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61⟩ (by decide +kernel) hH

def canonicalInput22154 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput22154 : ExponentCode := normalNode8361

theorem canonicalSound22154 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22154.moment H = canonicalOutput22154.moment H :=
  canonical_of_padded canonicalInput22154 canonicalOutput22154 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation347, canonicalPermutation93⟩ (by decide +kernel) hH

def canonicalInput22155 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput22155 : ExponentCode := normalNode8066

theorem canonicalSound22155 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22155.moment H = canonicalOutput22155.moment H :=
  canonical_of_padded canonicalInput22155 canonicalOutput22155 (by decide) (by decide)
    ⟨false, false, canonicalPermutation98, OAI.MUB6.Certificate.PairSemantics.permutation210⟩ (by decide +kernel) hH

def canonicalInput22156 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput22156 : ExponentCode := normalNode8066

theorem canonicalSound22156 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22156.moment H = canonicalOutput22156.moment H :=
  canonical_of_padded canonicalInput22156 canonicalOutput22156 (by decide) (by decide)
    ⟨false, false, canonicalPermutation92, OAI.MUB6.Certificate.PairSemantics.permutation210⟩ (by decide +kernel) hH

def canonicalInput22157 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput22157 : ExponentCode := normalNode8067

theorem canonicalSound22157 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22157.moment H = canonicalOutput22157.moment H :=
  canonical_of_padded canonicalInput22157 canonicalOutput22157 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation213, OAI.MUB6.Certificate.PairSemantics.permutation208⟩ (by decide +kernel) hH

def canonicalInput22158 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput22158 : ExponentCode := normalNode8361

theorem canonicalSound22158 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22158.moment H = canonicalOutput22158.moment H :=
  canonical_of_padded canonicalInput22158 canonicalOutput22158 (by decide) (by decide)
    ⟨false, false, canonicalPermutation210, OAI.MUB6.Certificate.PairSemantics.permutation340⟩ (by decide +kernel) hH

def canonicalInput22159 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput22159 : ExponentCode := normalNode8361

theorem canonicalSound22159 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22159.moment H = canonicalOutput22159.moment H :=
  canonical_of_padded canonicalInput22159 canonicalOutput22159 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation347, OAI.MUB6.Certificate.PairSemantics.permutation340⟩ (by decide +kernel) hH

def canonicalInput22160 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput22160 : ExponentCode := normalNode8067

theorem canonicalSound22160 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22160.moment H = canonicalOutput22160.moment H :=
  canonical_of_padded canonicalInput22160 canonicalOutput22160 (by decide) (by decide)
    ⟨false, false, canonicalPermutation100, OAI.MUB6.Certificate.PairSemantics.permutation208⟩ (by decide +kernel) hH

def canonicalInput22161 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput22161 : ExponentCode := normalNode8066

theorem canonicalSound22161 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22161.moment H = canonicalOutput22161.moment H :=
  canonical_of_padded canonicalInput22161 canonicalOutput22161 (by decide) (by decide)
    ⟨false, false, canonicalPermutation57, OAI.MUB6.Certificate.PairSemantics.permutation210⟩ (by decide +kernel) hH

def canonicalInput22162 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput22162 : ExponentCode := normalNode8064

theorem canonicalSound22162 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22162.moment H = canonicalOutput22162.moment H :=
  canonical_of_padded canonicalInput22162 canonicalOutput22162 (by decide) (by decide)
    ⟨false, false, canonicalPermutation98, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61⟩ (by decide +kernel) hH

def canonicalInput22163 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput22163 : ExponentCode := normalNode8066

theorem canonicalSound22163 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22163.moment H = canonicalOutput22163.moment H :=
  canonical_of_padded canonicalInput22163 canonicalOutput22163 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation213, OAI.MUB6.Certificate.PairSemantics.permutation208⟩ (by decide +kernel) hH

def canonicalInput22164 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput22164 : ExponentCode := normalNode8066

theorem canonicalSound22164 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22164.moment H = canonicalOutput22164.moment H :=
  canonical_of_padded canonicalInput22164 canonicalOutput22164 (by decide) (by decide)
    ⟨false, false, canonicalPermutation100, OAI.MUB6.Certificate.PairSemantics.permutation208⟩ (by decide +kernel) hH

def canonicalInput22165 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput22165 : ExponentCode := normalNode8064

theorem canonicalSound22165 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22165.moment H = canonicalOutput22165.moment H :=
  canonical_of_padded canonicalInput22165 canonicalOutput22165 (by decide) (by decide)
    ⟨false, false, canonicalPermutation90, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61⟩ (by decide +kernel) hH

def canonicalInput22166 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput22166 : ExponentCode := normalNode8067

theorem canonicalSound22166 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22166.moment H = canonicalOutput22166.moment H :=
  canonical_of_padded canonicalInput22166 canonicalOutput22166 (by decide) (by decide)
    ⟨false, false, canonicalPermutation98, OAI.MUB6.Certificate.PairSemantics.permutation208⟩ (by decide +kernel) hH

def canonicalInput22167 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput22167 : ExponentCode := normalNode8066

theorem canonicalSound22167 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22167.moment H = canonicalOutput22167.moment H :=
  canonical_of_padded canonicalInput22167 canonicalOutput22167 (by decide) (by decide)
    ⟨false, false, canonicalPermutation98, OAI.MUB6.Certificate.PairSemantics.permutation208⟩ (by decide +kernel) hH

def canonicalInput22168 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput22168 : ExponentCode := normalNode8361

theorem canonicalSound22168 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22168.moment H = canonicalOutput22168.moment H :=
  canonical_of_padded canonicalInput22168 canonicalOutput22168 (by decide) (by decide)
    ⟨false, false, canonicalPermutation210, canonicalPermutation217⟩ (by decide +kernel) hH

def canonicalInput22169 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput22169 : ExponentCode := normalNode8361

theorem canonicalSound22169 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22169.moment H = canonicalOutput22169.moment H :=
  canonical_of_padded canonicalInput22169 canonicalOutput22169 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation347, canonicalPermutation217⟩ (by decide +kernel) hH

def canonicalInput22170 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput22170 : ExponentCode := normalNode8066

theorem canonicalSound22170 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22170.moment H = canonicalOutput22170.moment H :=
  canonical_of_padded canonicalInput22170 canonicalOutput22170 (by decide) (by decide)
    ⟨false, false, canonicalPermutation90, OAI.MUB6.Certificate.PairSemantics.permutation208⟩ (by decide +kernel) hH

def canonicalInput22171 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput22171 : ExponentCode := normalNode8067

theorem canonicalSound22171 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22171.moment H = canonicalOutput22171.moment H :=
  canonical_of_padded canonicalInput22171 canonicalOutput22171 (by decide) (by decide)
    ⟨false, false, canonicalPermutation90, OAI.MUB6.Certificate.PairSemantics.permutation208⟩ (by decide +kernel) hH

def canonicalInput22172 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput22172 : ExponentCode := normalNode8361

theorem canonicalSound22172 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22172.moment H = canonicalOutput22172.moment H :=
  canonical_of_padded canonicalInput22172 canonicalOutput22172 (by decide) (by decide)
    ⟨false, false, canonicalPermutation264, canonicalPermutation93⟩ (by decide +kernel) hH

def canonicalInput22173 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput22173 : ExponentCode := normalNode8361

theorem canonicalSound22173 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22173.moment H = canonicalOutput22173.moment H :=
  canonical_of_padded canonicalInput22173 canonicalOutput22173 (by decide) (by decide)
    ⟨false, false, canonicalPermutation264, OAI.MUB6.Certificate.PairSemantics.permutation340⟩ (by decide +kernel) hH

def canonicalInput22174 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput22174 : ExponentCode := normalNode8361

theorem canonicalSound22174 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22174.moment H = canonicalOutput22174.moment H :=
  canonical_of_padded canonicalInput22174 canonicalOutput22174 (by decide) (by decide)
    ⟨false, false, canonicalPermutation264, canonicalPermutation217⟩ (by decide +kernel) hH

def canonicalInput22175 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput22175 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node61⟩

theorem canonicalSound22175 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22175.moment H = canonicalOutput22175.moment H :=
  canonical_of_padded canonicalInput22175 canonicalOutput22175 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation254, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput22176 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput22176 : ExponentCode := normalNode8361

theorem canonicalSound22176 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22176.moment H = canonicalOutput22176.moment H :=
  canonical_of_padded canonicalInput22176 canonicalOutput22176 (by decide) (by decide)
    ⟨false, false, canonicalPermutation265, canonicalPermutation217⟩ (by decide +kernel) hH

def canonicalInput22177 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput22177 : ExponentCode := normalNode8361

theorem canonicalSound22177 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22177.moment H = canonicalOutput22177.moment H :=
  canonical_of_padded canonicalInput22177 canonicalOutput22177 (by decide) (by decide)
    ⟨false, false, canonicalPermutation265, OAI.MUB6.Certificate.PairSemantics.permutation340⟩ (by decide +kernel) hH

def canonicalInput22178 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput22178 : ExponentCode := normalNode8361

theorem canonicalSound22178 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22178.moment H = canonicalOutput22178.moment H :=
  canonical_of_padded canonicalInput22178 canonicalOutput22178 (by decide) (by decide)
    ⟨false, false, canonicalPermutation265, canonicalPermutation93⟩ (by decide +kernel) hH

def canonicalInput22179 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput22179 : ExponentCode := normalNode8066

theorem canonicalSound22179 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22179.moment H = canonicalOutput22179.moment H :=
  canonical_of_padded canonicalInput22179 canonicalOutput22179 (by decide) (by decide)
    ⟨false, false, canonicalPermutation98, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61⟩ (by decide +kernel) hH

def canonicalInput22180 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput22180 : ExponentCode := normalNode8067

theorem canonicalSound22180 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22180.moment H = canonicalOutput22180.moment H :=
  canonical_of_padded canonicalInput22180 canonicalOutput22180 (by decide) (by decide)
    ⟨false, false, canonicalPermutation98, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61⟩ (by decide +kernel) hH

def canonicalInput22181 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput22181 : ExponentCode := normalNode8361

theorem canonicalSound22181 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22181.moment H = canonicalOutput22181.moment H :=
  canonical_of_padded canonicalInput22181 canonicalOutput22181 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation353, canonicalPermutation217⟩ (by decide +kernel) hH

def canonicalInput22182 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput22182 : ExponentCode := normalNode8361

theorem canonicalSound22182 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22182.moment H = canonicalOutput22182.moment H :=
  canonical_of_padded canonicalInput22182 canonicalOutput22182 (by decide) (by decide)
    ⟨false, false, canonicalPermutation266, canonicalPermutation217⟩ (by decide +kernel) hH

def canonicalInput22183 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput22183 : ExponentCode := normalNode8067

theorem canonicalSound22183 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22183.moment H = canonicalOutput22183.moment H :=
  canonical_of_padded canonicalInput22183 canonicalOutput22183 (by decide) (by decide)
    ⟨false, false, canonicalPermutation90, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61⟩ (by decide +kernel) hH

def canonicalInput22184 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput22184 : ExponentCode := normalNode8066

theorem canonicalSound22184 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22184.moment H = canonicalOutput22184.moment H :=
  canonical_of_padded canonicalInput22184 canonicalOutput22184 (by decide) (by decide)
    ⟨false, false, canonicalPermutation90, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61⟩ (by decide +kernel) hH

def canonicalInput22185 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput22185 : ExponentCode := normalNode8067

theorem canonicalSound22185 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22185.moment H = canonicalOutput22185.moment H :=
  canonical_of_padded canonicalInput22185 canonicalOutput22185 (by decide) (by decide)
    ⟨false, false, canonicalPermutation57, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61⟩ (by decide +kernel) hH

def canonicalInput22186 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput22186 : ExponentCode := normalNode8361

theorem canonicalSound22186 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22186.moment H = canonicalOutput22186.moment H :=
  canonical_of_padded canonicalInput22186 canonicalOutput22186 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation353, OAI.MUB6.Certificate.PairSemantics.permutation340⟩ (by decide +kernel) hH

def canonicalInput22187 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput22187 : ExponentCode := normalNode8066

theorem canonicalSound22187 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22187.moment H = canonicalOutput22187.moment H :=
  canonical_of_padded canonicalInput22187 canonicalOutput22187 (by decide) (by decide)
    ⟨false, false, canonicalPermutation57, OAI.MUB6.Certificate.PairSemantics.permutation208⟩ (by decide +kernel) hH

def canonicalInput22188 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput22188 : ExponentCode := normalNode8066

theorem canonicalSound22188 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22188.moment H = canonicalOutput22188.moment H :=
  canonical_of_padded canonicalInput22188 canonicalOutput22188 (by decide) (by decide)
    ⟨false, false, canonicalPermutation92, OAI.MUB6.Certificate.PairSemantics.permutation208⟩ (by decide +kernel) hH

def canonicalInput22189 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput22189 : ExponentCode := normalNode8361

theorem canonicalSound22189 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22189.moment H = canonicalOutput22189.moment H :=
  canonical_of_padded canonicalInput22189 canonicalOutput22189 (by decide) (by decide)
    ⟨false, false, canonicalPermutation266, OAI.MUB6.Certificate.PairSemantics.permutation340⟩ (by decide +kernel) hH

def canonicalInput22190 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput22190 : ExponentCode := normalNode8067

theorem canonicalSound22190 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22190.moment H = canonicalOutput22190.moment H :=
  canonical_of_padded canonicalInput22190 canonicalOutput22190 (by decide) (by decide)
    ⟨false, false, canonicalPermutation92, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61⟩ (by decide +kernel) hH

def canonicalInput22191 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput22191 : ExponentCode := normalNode8066

theorem canonicalSound22191 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22191.moment H = canonicalOutput22191.moment H :=
  canonical_of_padded canonicalInput22191 canonicalOutput22191 (by decide) (by decide)
    ⟨false, false, canonicalPermutation57, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61⟩ (by decide +kernel) hH

def canonicalInput22192 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput22192 : ExponentCode := normalNode8361

theorem canonicalSound22192 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22192.moment H = canonicalOutput22192.moment H :=
  canonical_of_padded canonicalInput22192 canonicalOutput22192 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation353, canonicalPermutation93⟩ (by decide +kernel) hH

def canonicalInput22193 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput22193 : ExponentCode := normalNode8067

theorem canonicalSound22193 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22193.moment H = canonicalOutput22193.moment H :=
  canonical_of_padded canonicalInput22193 canonicalOutput22193 (by decide) (by decide)
    ⟨false, false, canonicalPermutation57, OAI.MUB6.Certificate.PairSemantics.permutation208⟩ (by decide +kernel) hH

def canonicalInput22194 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput22194 : ExponentCode := normalNode8067

theorem canonicalSound22194 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22194.moment H = canonicalOutput22194.moment H :=
  canonical_of_padded canonicalInput22194 canonicalOutput22194 (by decide) (by decide)
    ⟨false, false, canonicalPermutation92, OAI.MUB6.Certificate.PairSemantics.permutation208⟩ (by decide +kernel) hH

def canonicalInput22195 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput22195 : ExponentCode := normalNode8361

theorem canonicalSound22195 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22195.moment H = canonicalOutput22195.moment H :=
  canonical_of_padded canonicalInput22195 canonicalOutput22195 (by decide) (by decide)
    ⟨false, false, canonicalPermutation266, canonicalPermutation93⟩ (by decide +kernel) hH

def canonicalInput22196 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput22196 : ExponentCode := normalNode8066

theorem canonicalSound22196 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22196.moment H = canonicalOutput22196.moment H :=
  canonical_of_padded canonicalInput22196 canonicalOutput22196 (by decide) (by decide)
    ⟨false, false, canonicalPermutation92, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61⟩ (by decide +kernel) hH

def canonicalInput22197 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput22197 : ExponentCode := normalNode8064

theorem canonicalSound22197 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22197.moment H = canonicalOutput22197.moment H :=
  canonical_of_padded canonicalInput22197 canonicalOutput22197 (by decide) (by decide)
    ⟨false, false, canonicalPermutation57, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61⟩ (by decide +kernel) hH

def canonicalInput22198 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput22198 : ExponentCode := normalNode8066

theorem canonicalSound22198 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22198.moment H = canonicalOutput22198.moment H :=
  canonical_of_padded canonicalInput22198 canonicalOutput22198 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation213, OAI.MUB6.Certificate.PairSemantics.permutation210⟩ (by decide +kernel) hH

def canonicalInput22199 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput22199 : ExponentCode := normalNode8066

theorem canonicalSound22199 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22199.moment H = canonicalOutput22199.moment H :=
  canonical_of_padded canonicalInput22199 canonicalOutput22199 (by decide) (by decide)
    ⟨false, false, canonicalPermutation100, OAI.MUB6.Certificate.PairSemantics.permutation210⟩ (by decide +kernel) hH

def canonicalInput22200 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput22200 : ExponentCode := normalNode8064

theorem canonicalSound22200 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22200.moment H = canonicalOutput22200.moment H :=
  canonical_of_padded canonicalInput22200 canonicalOutput22200 (by decide) (by decide)
    ⟨false, false, canonicalPermutation92, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61⟩ (by decide +kernel) hH

def canonicalInput22201 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 2, 0, -2], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -2, 1, 1]]⟩

def canonicalOutput22201 : ExponentCode := normalNode8068

theorem canonicalSound22201 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22201.moment H = canonicalOutput22201.moment H :=
  canonical_of_padded canonicalInput22201 canonicalOutput22201 (by decide) (by decide)
    ⟨false, false, canonicalPermutation98, canonicalPermutation221⟩ (by decide +kernel) hH

def canonicalInput22202 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 3, -1, -2], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -2, 0, 2]]⟩

def canonicalOutput22202 : ExponentCode := normalNode8458

theorem canonicalSound22202 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22202.moment H = canonicalOutput22202.moment H :=
  canonical_of_padded canonicalInput22202 canonicalOutput22202 (by decide) (by decide)
    ⟨false, false, canonicalPermutation100, OAI.MUB6.Certificate.PairSemantics.permutation209⟩ (by decide +kernel) hH

def canonicalInput22203 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![2, 0, 0, 0, -2, 0], ![0, 0, 0, -1, 1, 0], ![-2, 0, 0, 1, 1, 0]]⟩

def canonicalOutput22203 : ExponentCode := normalNode8346

theorem canonicalSound22203 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22203.moment H = canonicalOutput22203.moment H :=
  canonical_of_padded canonicalInput22203 canonicalOutput22203 (by decide) (by decide)
    ⟨false, false, canonicalPermutation98, OAI.MUB6.Certificate.PairSemantics.permutation340⟩ (by decide +kernel) hH

def canonicalInput22204 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![2, 0, -2, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput22204 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node11⟩

theorem canonicalSound22204 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22204.moment H = canonicalOutput22204.moment H :=
  canonical_of_padded canonicalInput22204 canonicalOutput22204 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation254, canonicalPermutation84⟩ (by decide +kernel) hH

def canonicalInput22205 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![2, 1, -3, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput22205 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node56⟩

theorem canonicalSound22205 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22205.moment H = canonicalOutput22205.moment H :=
  canonical_of_padded canonicalInput22205 canonicalOutput22205 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation254, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput22206 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![3, -3, 0, 0, 0, 0], ![-2, 3, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput22206 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node58⟩

theorem canonicalSound22206 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22206.moment H = canonicalOutput22206.moment H :=
  canonical_of_padded canonicalInput22206 canonicalOutput22206 (by decide) (by decide)
    ⟨false, false, canonicalPermutation63, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput22207 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![3, -2, -1, 0, 0, 0], ![-2, 2, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput22207 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node57⟩

theorem canonicalSound22207 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22207.moment H = canonicalOutput22207.moment H :=
  canonical_of_padded canonicalInput22207 canonicalOutput22207 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, canonicalPermutation63⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
