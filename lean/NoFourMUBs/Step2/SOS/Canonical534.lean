import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations
import OAI.Analysis.MutuallyUnbiased.PairTargets.ExtraPermutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput34176 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput34176 : ExponentCode := normalNode11165

theorem canonicalSound34176 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34176.moment H = canonicalOutput34176.moment H :=
  canonical_of_padded canonicalInput34176 canonicalOutput34176 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation294, canonicalPermutation139⟩ (by decide +kernel) hH

def canonicalInput34177 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput34177 : ExponentCode := normalNode10869

theorem canonicalSound34177 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34177.moment H = canonicalOutput34177.moment H :=
  canonical_of_padded canonicalInput34177 canonicalOutput34177 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation309, OAI.MUB6.Certificate.PairSemantics.permutation257⟩ (by decide +kernel) hH

def canonicalInput34178 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput34178 : ExponentCode := normalNode10869

theorem canonicalSound34178 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34178.moment H = canonicalOutput34178.moment H :=
  canonical_of_padded canonicalInput34178 canonicalOutput34178 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation259, OAI.MUB6.Certificate.PairSemantics.permutation257⟩ (by decide +kernel) hH

def canonicalInput34179 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34179 : ExponentCode := normalNode11165

theorem canonicalSound34179 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34179.moment H = canonicalOutput34179.moment H :=
  canonical_of_padded canonicalInput34179 canonicalOutput34179 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation395, canonicalPermutation139⟩ (by decide +kernel) hH

def canonicalInput34180 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput34180 : ExponentCode := normalNode8064

theorem canonicalSound34180 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34180.moment H = canonicalOutput34180.moment H :=
  canonical_of_padded canonicalInput34180 canonicalOutput34180 (by decide) (by decide)
    ⟨false, false, canonicalPermutation119, OAI.MUB6.Certificate.PairSemantics.permutation294⟩ (by decide +kernel) hH

def canonicalInput34181 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput34181 : ExponentCode := normalNode8064

theorem canonicalSound34181 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34181.moment H = canonicalOutput34181.moment H :=
  canonical_of_padded canonicalInput34181 canonicalOutput34181 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation358, OAI.MUB6.Certificate.PairSemantics.permutation294⟩ (by decide +kernel) hH

def canonicalInput34182 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput34182 : ExponentCode := normalNode10869

theorem canonicalSound34182 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34182.moment H = canonicalOutput34182.moment H :=
  canonical_of_padded canonicalInput34182 canonicalOutput34182 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation309, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput34183 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput34183 : ExponentCode := normalNode11165

theorem canonicalSound34183 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34183.moment H = canonicalOutput34183.moment H :=
  canonical_of_padded canonicalInput34183 canonicalOutput34183 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation389⟩ (by decide +kernel) hH

def canonicalInput34184 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34184 : ExponentCode := normalNode11165

theorem canonicalSound34184 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34184.moment H = canonicalOutput34184.moment H :=
  canonical_of_padded canonicalInput34184 canonicalOutput34184 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation389⟩ (by decide +kernel) hH

def canonicalInput34185 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput34185 : ExponentCode := normalNode10869

theorem canonicalSound34185 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34185.moment H = canonicalOutput34185.moment H :=
  canonical_of_padded canonicalInput34185 canonicalOutput34185 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation259, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput34186 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput34186 : ExponentCode := normalNode8064

theorem canonicalSound34186 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34186.moment H = canonicalOutput34186.moment H :=
  canonical_of_padded canonicalInput34186 canonicalOutput34186 (by decide) (by decide)
    ⟨false, false, canonicalPermutation140, OAI.MUB6.Certificate.PairSemantics.permutation294⟩ (by decide +kernel) hH

def canonicalInput34187 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput34187 : ExponentCode := normalNode3656

theorem canonicalSound34187 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34187.moment H = canonicalOutput34187.moment H :=
  canonical_of_padded canonicalInput34187 canonicalOutput34187 (by decide) (by decide)
    ⟨false, true, canonicalPermutation30, OAI.MUB6.Certificate.PairSemantics.permutation180⟩ (by decide +kernel) hH

def canonicalInput34188 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput34188 : ExponentCode := normalNode8064

theorem canonicalSound34188 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34188.moment H = canonicalOutput34188.moment H :=
  canonical_of_padded canonicalInput34188 canonicalOutput34188 (by decide) (by decide)
    ⟨false, false, canonicalPermutation146, canonicalPermutation142⟩ (by decide +kernel) hH

def canonicalInput34189 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput34189 : ExponentCode := normalNode8064

theorem canonicalSound34189 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34189.moment H = canonicalOutput34189.moment H :=
  canonical_of_padded canonicalInput34189 canonicalOutput34189 (by decide) (by decide)
    ⟨false, false, canonicalPermutation145, canonicalPermutation142⟩ (by decide +kernel) hH

def canonicalInput34190 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput34190 : ExponentCode := normalNode3656

theorem canonicalSound34190 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34190.moment H = canonicalOutput34190.moment H :=
  canonical_of_padded canonicalInput34190 canonicalOutput34190 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation180⟩ (by decide +kernel) hH

def canonicalInput34191 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput34191 : ExponentCode := normalNode10869

theorem canonicalSound34191 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34191.moment H = canonicalOutput34191.moment H :=
  canonical_of_padded canonicalInput34191 canonicalOutput34191 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput34192 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput34192 : ExponentCode := normalNode8064

theorem canonicalSound34192 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34192.moment H = canonicalOutput34192.moment H :=
  canonical_of_padded canonicalInput34192 canonicalOutput34192 (by decide) (by decide)
    ⟨false, false, canonicalPermutation119, canonicalPermutation142⟩ (by decide +kernel) hH

def canonicalInput34193 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput34193 : ExponentCode := normalNode11165

theorem canonicalSound34193 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34193.moment H = canonicalOutput34193.moment H :=
  canonical_of_padded canonicalInput34193 canonicalOutput34193 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput34194 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34194 : ExponentCode := normalNode11165

theorem canonicalSound34194 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34194.moment H = canonicalOutput34194.moment H :=
  canonical_of_padded canonicalInput34194 canonicalOutput34194 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput34195 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput34195 : ExponentCode := normalNode8064

theorem canonicalSound34195 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34195.moment H = canonicalOutput34195.moment H :=
  canonical_of_padded canonicalInput34195 canonicalOutput34195 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation357, canonicalPermutation142⟩ (by decide +kernel) hH

def canonicalInput34196 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput34196 : ExponentCode := normalNode10869

theorem canonicalSound34196 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34196.moment H = canonicalOutput34196.moment H :=
  canonical_of_padded canonicalInput34196 canonicalOutput34196 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput34197 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput34197 : ExponentCode := normalNode11165

theorem canonicalSound34197 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34197.moment H = canonicalOutput34197.moment H :=
  canonical_of_padded canonicalInput34197 canonicalOutput34197 (by decide) (by decide)
    ⟨false, true, canonicalPermutation142, canonicalPermutation139⟩ (by decide +kernel) hH

def canonicalInput34198 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput34198 : ExponentCode := normalNode11165

theorem canonicalSound34198 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34198.moment H = canonicalOutput34198.moment H :=
  canonical_of_padded canonicalInput34198 canonicalOutput34198 (by decide) (by decide)
    ⟨false, true, canonicalPermutation142, OAI.MUB6.Certificate.PairSemantics.permutation389⟩ (by decide +kernel) hH

def canonicalInput34199 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput34199 : ExponentCode := normalNode11165

theorem canonicalSound34199 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34199.moment H = canonicalOutput34199.moment H :=
  canonical_of_padded canonicalInput34199 canonicalOutput34199 (by decide) (by decide)
    ⟨false, true, canonicalPermutation142, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput34200 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34200 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node44⟩

theorem canonicalSound34200 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34200.moment H = canonicalOutput34200.moment H :=
  canonical_of_padded canonicalInput34200 canonicalOutput34200 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput34201 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput34201 : ExponentCode := normalNode11165

theorem canonicalSound34201 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34201.moment H = canonicalOutput34201.moment H :=
  canonical_of_padded canonicalInput34201 canonicalOutput34201 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput34202 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput34202 : ExponentCode := normalNode11165

theorem canonicalSound34202 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34202.moment H = canonicalOutput34202.moment H :=
  canonical_of_padded canonicalInput34202 canonicalOutput34202 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation389⟩ (by decide +kernel) hH

def canonicalInput34203 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput34203 : ExponentCode := normalNode11165

theorem canonicalSound34203 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34203.moment H = canonicalOutput34203.moment H :=
  canonical_of_padded canonicalInput34203 canonicalOutput34203 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation248, canonicalPermutation139⟩ (by decide +kernel) hH

def canonicalInput34204 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput34204 : ExponentCode := normalNode8064

theorem canonicalSound34204 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34204.moment H = canonicalOutput34204.moment H :=
  canonical_of_padded canonicalInput34204 canonicalOutput34204 (by decide) (by decide)
    ⟨false, false, canonicalPermutation119, OAI.MUB6.Certificate.PairSemantics.permutation248⟩ (by decide +kernel) hH

def canonicalInput34205 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput34205 : ExponentCode := normalNode10869

theorem canonicalSound34205 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34205.moment H = canonicalOutput34205.moment H :=
  canonical_of_padded canonicalInput34205 canonicalOutput34205 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation257⟩ (by decide +kernel) hH

def canonicalInput34206 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34206 : ExponentCode := normalNode11165

theorem canonicalSound34206 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34206.moment H = canonicalOutput34206.moment H :=
  canonical_of_padded canonicalInput34206 canonicalOutput34206 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput34207 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput34207 : ExponentCode := normalNode11165

theorem canonicalSound34207 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34207.moment H = canonicalOutput34207.moment H :=
  canonical_of_padded canonicalInput34207 canonicalOutput34207 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation288, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput34208 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput34208 : ExponentCode := normalNode10869

theorem canonicalSound34208 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34208.moment H = canonicalOutput34208.moment H :=
  canonical_of_padded canonicalInput34208 canonicalOutput34208 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation257⟩ (by decide +kernel) hH

def canonicalInput34209 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput34209 : ExponentCode := normalNode8064

theorem canonicalSound34209 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34209.moment H = canonicalOutput34209.moment H :=
  canonical_of_padded canonicalInput34209 canonicalOutput34209 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation357, OAI.MUB6.Certificate.PairSemantics.permutation248⟩ (by decide +kernel) hH

def canonicalInput34210 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput34210 : ExponentCode := normalNode10869

theorem canonicalSound34210 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34210.moment H = canonicalOutput34210.moment H :=
  canonical_of_padded canonicalInput34210 canonicalOutput34210 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation242, OAI.MUB6.Certificate.PairSemantics.permutation257⟩ (by decide +kernel) hH

def canonicalInput34211 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34211 : ExponentCode := normalNode11165

theorem canonicalSound34211 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34211.moment H = canonicalOutput34211.moment H :=
  canonical_of_padded canonicalInput34211 canonicalOutput34211 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation389⟩ (by decide +kernel) hH

def canonicalInput34212 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput34212 : ExponentCode := normalNode8064

theorem canonicalSound34212 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34212.moment H = canonicalOutput34212.moment H :=
  canonical_of_padded canonicalInput34212 canonicalOutput34212 (by decide) (by decide)
    ⟨false, false, canonicalPermutation140, canonicalPermutation142⟩ (by decide +kernel) hH

def canonicalInput34213 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput34213 : ExponentCode := normalNode8064

theorem canonicalSound34213 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34213.moment H = canonicalOutput34213.moment H :=
  canonical_of_padded canonicalInput34213 canonicalOutput34213 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation358, canonicalPermutation142⟩ (by decide +kernel) hH

def canonicalInput34214 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput34214 : ExponentCode := normalNode11165

theorem canonicalSound34214 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34214.moment H = canonicalOutput34214.moment H :=
  canonical_of_padded canonicalInput34214 canonicalOutput34214 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation288, OAI.MUB6.Certificate.PairSemantics.permutation389⟩ (by decide +kernel) hH

def canonicalInput34215 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput34215 : ExponentCode := normalNode10869

theorem canonicalSound34215 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34215.moment H = canonicalOutput34215.moment H :=
  canonical_of_padded canonicalInput34215 canonicalOutput34215 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation241, OAI.MUB6.Certificate.PairSemantics.permutation257⟩ (by decide +kernel) hH

def canonicalInput34216 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput34216 : ExponentCode := normalNode8064

theorem canonicalSound34216 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34216.moment H = canonicalOutput34216.moment H :=
  canonical_of_padded canonicalInput34216 canonicalOutput34216 (by decide) (by decide)
    ⟨false, false, canonicalPermutation140, OAI.MUB6.Certificate.PairSemantics.permutation248⟩ (by decide +kernel) hH

def canonicalInput34217 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34217 : ExponentCode := normalNode11165

theorem canonicalSound34217 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34217.moment H = canonicalOutput34217.moment H :=
  canonical_of_padded canonicalInput34217 canonicalOutput34217 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation373, canonicalPermutation139⟩ (by decide +kernel) hH

def canonicalInput34218 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput34218 : ExponentCode := normalNode10869

theorem canonicalSound34218 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34218.moment H = canonicalOutput34218.moment H :=
  canonical_of_padded canonicalInput34218 canonicalOutput34218 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation242, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput34219 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput34219 : ExponentCode := normalNode10869

theorem canonicalSound34219 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34219.moment H = canonicalOutput34219.moment H :=
  canonical_of_padded canonicalInput34219 canonicalOutput34219 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation241, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput34220 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput34220 : ExponentCode := normalNode11165

theorem canonicalSound34220 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34220.moment H = canonicalOutput34220.moment H :=
  canonical_of_padded canonicalInput34220 canonicalOutput34220 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation288, canonicalPermutation139⟩ (by decide +kernel) hH

def canonicalInput34221 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput34221 : ExponentCode := normalNode8064

theorem canonicalSound34221 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34221.moment H = canonicalOutput34221.moment H :=
  canonical_of_padded canonicalInput34221 canonicalOutput34221 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation358, OAI.MUB6.Certificate.PairSemantics.permutation248⟩ (by decide +kernel) hH

def canonicalInput34222 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput34222 : ExponentCode := normalNode3656

theorem canonicalSound34222 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34222.moment H = canonicalOutput34222.moment H :=
  canonical_of_padded canonicalInput34222 canonicalOutput34222 (by decide) (by decide)
    ⟨false, true, canonicalPermutation26, OAI.MUB6.Certificate.PairSemantics.permutation180⟩ (by decide +kernel) hH

def canonicalInput34223 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput34223 : ExponentCode := normalNode8064

theorem canonicalSound34223 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34223.moment H = canonicalOutput34223.moment H :=
  canonical_of_padded canonicalInput34223 canonicalOutput34223 (by decide) (by decide)
    ⟨false, false, canonicalPermutation146, OAI.MUB6.Certificate.PairSemantics.permutation294⟩ (by decide +kernel) hH

def canonicalInput34224 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput34224 : ExponentCode := normalNode8064

theorem canonicalSound34224 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34224.moment H = canonicalOutput34224.moment H :=
  canonical_of_padded canonicalInput34224 canonicalOutput34224 (by decide) (by decide)
    ⟨false, false, canonicalPermutation145, OAI.MUB6.Certificate.PairSemantics.permutation294⟩ (by decide +kernel) hH

def canonicalInput34225 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput34225 : ExponentCode := normalNode3656

theorem canonicalSound34225 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34225.moment H = canonicalOutput34225.moment H :=
  canonical_of_padded canonicalInput34225 canonicalOutput34225 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation180⟩ (by decide +kernel) hH

def canonicalInput34226 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 2, 0, -2], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -2, 1, 1]]⟩

def canonicalOutput34226 : ExponentCode := normalNode8063

theorem canonicalSound34226 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34226.moment H = canonicalOutput34226.moment H :=
  canonical_of_padded canonicalInput34226 canonicalOutput34226 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation294⟩ (by decide +kernel) hH

def canonicalInput34227 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 3, -1, -2], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -2, 0, 2]]⟩

def canonicalOutput34227 : ExponentCode := normalNode6527

theorem canonicalSound34227 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34227.moment H = canonicalOutput34227.moment H :=
  canonical_of_padded canonicalInput34227 canonicalOutput34227 (by decide) (by decide)
    ⟨false, false, canonicalPermutation145, OAI.MUB6.Certificate.PairSemantics.permutation294⟩ (by decide +kernel) hH

def canonicalInput34228 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![2, 0, 0, 0, -2, 0], ![0, 0, 0, -1, 1, 0], ![-2, 0, 0, 1, 1, 0]]⟩

def canonicalOutput34228 : ExponentCode := normalNode8237

theorem canonicalSound34228 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34228.moment H = canonicalOutput34228.moment H :=
  canonical_of_padded canonicalInput34228 canonicalOutput34228 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation337, OAI.MUB6.Certificate.PairSemantics.permutation392⟩ (by decide +kernel) hH

def canonicalInput34229 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 3, -2, 0, 0, 0], ![-1, -2, 3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34229 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node43⟩

theorem canonicalSound34229 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34229.moment H = canonicalOutput34229.moment H :=
  canonical_of_padded canonicalInput34229 canonicalOutput34229 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput34230 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![0, -2, 2, 0, 0, 0], ![-2, 3, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34230 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node36⟩

theorem canonicalSound34230 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34230.moment H = canonicalOutput34230.moment H :=
  canonical_of_padded canonicalInput34230 canonicalOutput34230 (by decide) (by decide)
    ⟨false, false, canonicalPermutation63, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput34231 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-2, 2, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34231 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node62⟩

theorem canonicalSound34231 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34231.moment H = canonicalOutput34231.moment H :=
  canonical_of_padded canonicalInput34231 canonicalOutput34231 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation253, canonicalPermutation63⟩ (by decide +kernel) hH

def canonicalInput34232 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34232 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node11⟩

theorem canonicalSound34232 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34232.moment H = canonicalOutput34232.moment H :=
  canonical_of_padded canonicalInput34232 canonicalOutput34232 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation252, canonicalPermutation84⟩ (by decide +kernel) hH

def canonicalInput34233 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-2, 0, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34233 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node62⟩

theorem canonicalSound34233 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34233.moment H = canonicalOutput34233.moment H :=
  canonical_of_padded canonicalInput34233 canonicalOutput34233 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation253, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput34234 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![0, 2, -2, 0, 0, 0], ![-2, -1, 3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34234 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node36⟩

theorem canonicalSound34234 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34234.moment H = canonicalOutput34234.moment H :=
  canonical_of_padded canonicalInput34234 canonicalOutput34234 (by decide) (by decide)
    ⟨false, false, canonicalPermutation63, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput34235 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![-3, 3, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34235 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node63⟩

theorem canonicalSound34235 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34235.moment H = canonicalOutput34235.moment H :=
  canonical_of_padded canonicalInput34235 canonicalOutput34235 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation253, canonicalPermutation63⟩ (by decide +kernel) hH

def canonicalInput34236 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-3, 2, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34236 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node56⟩

theorem canonicalSound34236 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34236.moment H = canonicalOutput34236.moment H :=
  canonical_of_padded canonicalInput34236 canonicalOutput34236 (by decide) (by decide)
    ⟨false, true, canonicalPermutation63, canonicalPermutation63⟩ (by decide +kernel) hH

def canonicalInput34237 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-3, 1, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34237 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node56⟩

theorem canonicalSound34237 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34237.moment H = canonicalOutput34237.moment H :=
  canonical_of_padded canonicalInput34237 canonicalOutput34237 (by decide) (by decide)
    ⟨false, true, canonicalPermutation63, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput34238 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![-3, 0, 3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34238 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node63⟩

theorem canonicalSound34238 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34238.moment H = canonicalOutput34238.moment H :=
  canonical_of_padded canonicalInput34238 canonicalOutput34238 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation253, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput34239 : ExponentCode := ⟨6, 6, ![![2, -1, 0, -2, 1, 0], ![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34239 : ExponentCode := normalNode10462

theorem canonicalSound34239 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34239.moment H = canonicalOutput34239.moment H :=
  canonical_of_padded canonicalInput34239 canonicalOutput34239 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation405, canonicalPermutation85⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
