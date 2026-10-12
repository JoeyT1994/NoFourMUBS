import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes44
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput32256 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![1, -3, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32256 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node56⟩

theorem canonicalSound32256 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32256.moment H = canonicalOutput32256.moment H :=
  canonical_of_padded canonicalInput32256 canonicalOutput32256 (by decide) (by decide)
    ⟨false, true, canonicalPermutation60, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput32257 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, -3, 3, 0, 0, 0], ![0, 2, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32257 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node10⟩

theorem canonicalSound32257 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32257.moment H = canonicalOutput32257.moment H :=
  canonical_of_padded canonicalInput32257 canonicalOutput32257 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation254, OAI.MUB6.Certificate.PairSemantics.permutation180⟩ (by decide +kernel) hH

def canonicalInput32258 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, -2, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32258 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node11⟩

theorem canonicalSound32258 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32258.moment H = canonicalOutput32258.moment H :=
  canonical_of_padded canonicalInput32258 canonicalOutput32258 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation254, OAI.MUB6.Certificate.PairSemantics.permutation180⟩ (by decide +kernel) hH

def canonicalInput32259 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, -1, 0, 0], ![1, 0, 0, -1, 0, 0]]⟩

def canonicalOutput32259 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2851⟩

theorem canonicalSound32259 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32259.moment H = canonicalOutput32259.moment H :=
  canonical_of_padded canonicalInput32259 canonicalOutput32259 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation227, canonicalPermutation70⟩ (by decide +kernel) hH

def canonicalInput32260 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -1, 0], ![1, 0, 0, -2, 1, 0]]⟩

def canonicalOutput32260 : ExponentCode := normalNode10415

theorem canonicalSound32260 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32260.moment H = canonicalOutput32260.moment H :=
  canonical_of_padded canonicalInput32260 canonicalOutput32260 (by decide) (by decide)
    ⟨false, true, canonicalPermutation263, OAI.MUB6.Certificate.PairSemantics.permutation400⟩ (by decide +kernel) hH

def canonicalInput32261 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 3, -1, 0], ![0, 0, 0, -1, 1, 0], ![2, 0, 0, -2, 0, 0]]⟩

def canonicalOutput32261 : ExponentCode := normalNode10371

theorem canonicalSound32261 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32261.moment H = canonicalOutput32261.moment H :=
  canonical_of_padded canonicalInput32261 canonicalOutput32261 (by decide) (by decide)
    ⟨false, false, canonicalPermutation245, OAI.MUB6.Certificate.PairSemantics.permutation400⟩ (by decide +kernel) hH

def canonicalInput32262 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput32262 : ExponentCode := normalNode11165

theorem canonicalSound32262 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32262.moment H = canonicalOutput32262.moment H :=
  canonical_of_padded canonicalInput32262 canonicalOutput32262 (by decide) (by decide)
    ⟨false, true, canonicalPermutation259, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32263 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput32263 : ExponentCode := normalNode8361

theorem canonicalSound32263 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32263.moment H = canonicalOutput32263.moment H :=
  canonical_of_padded canonicalInput32263 canonicalOutput32263 (by decide) (by decide)
    ⟨false, false, canonicalPermutation316, OAI.MUB6.Certificate.PairSemantics.permutation178⟩ (by decide +kernel) hH

def canonicalInput32264 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput32264 : ExponentCode := normalNode8361

theorem canonicalSound32264 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32264.moment H = canonicalOutput32264.moment H :=
  canonical_of_padded canonicalInput32264 canonicalOutput32264 (by decide) (by decide)
    ⟨false, false, canonicalPermutation367, OAI.MUB6.Certificate.PairSemantics.permutation178⟩ (by decide +kernel) hH

def canonicalInput32265 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput32265 : ExponentCode := normalNode11165

theorem canonicalSound32265 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32265.moment H = canonicalOutput32265.moment H :=
  canonical_of_padded canonicalInput32265 canonicalOutput32265 (by decide) (by decide)
    ⟨false, true, canonicalPermutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32266 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput32266 : ExponentCode := normalNode8361

theorem canonicalSound32266 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32266.moment H = canonicalOutput32266.moment H :=
  canonical_of_padded canonicalInput32266 canonicalOutput32266 (by decide) (by decide)
    ⟨false, false, canonicalPermutation358, OAI.MUB6.Certificate.PairSemantics.permutation195⟩ (by decide +kernel) hH

def canonicalInput32267 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput32267 : ExponentCode := normalNode10645

theorem canonicalSound32267 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32267.moment H = canonicalOutput32267.moment H :=
  canonical_of_padded canonicalInput32267 canonicalOutput32267 (by decide) (by decide)
    ⟨false, false, canonicalPermutation392, OAI.MUB6.Certificate.PairSemantics.permutation184⟩ (by decide +kernel) hH

def canonicalInput32268 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput32268 : ExponentCode := normalNode10453

theorem canonicalSound32268 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32268.moment H = canonicalOutput32268.moment H :=
  canonical_of_padded canonicalInput32268 canonicalOutput32268 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation227, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput32269 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput32269 : ExponentCode := normalNode10453

theorem canonicalSound32269 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32269.moment H = canonicalOutput32269.moment H :=
  canonical_of_padded canonicalInput32269 canonicalOutput32269 (by decide) (by decide)
    ⟨false, false, canonicalPermutation260, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput32270 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32270 : ExponentCode := normalNode10645

theorem canonicalSound32270 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32270.moment H = canonicalOutput32270.moment H :=
  canonical_of_padded canonicalInput32270 canonicalOutput32270 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation237, OAI.MUB6.Certificate.PairSemantics.permutation184⟩ (by decide +kernel) hH

def canonicalInput32271 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput32271 : ExponentCode := normalNode8361

theorem canonicalSound32271 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32271.moment H = canonicalOutput32271.moment H :=
  canonical_of_padded canonicalInput32271 canonicalOutput32271 (by decide) (by decide)
    ⟨false, false, canonicalPermutation362, OAI.MUB6.Certificate.PairSemantics.permutation195⟩ (by decide +kernel) hH

def canonicalInput32272 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput32272 : ExponentCode := normalNode8361

theorem canonicalSound32272 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32272.moment H = canonicalOutput32272.moment H :=
  canonical_of_padded canonicalInput32272 canonicalOutput32272 (by decide) (by decide)
    ⟨false, false, canonicalPermutation360, OAI.MUB6.Certificate.PairSemantics.permutation195⟩ (by decide +kernel) hH

def canonicalInput32273 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput32273 : ExponentCode := normalNode10453

theorem canonicalSound32273 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32273.moment H = canonicalOutput32273.moment H :=
  canonical_of_padded canonicalInput32273 canonicalOutput32273 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation227, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput32274 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput32274 : ExponentCode := normalNode10645

theorem canonicalSound32274 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32274.moment H = canonicalOutput32274.moment H :=
  canonical_of_padded canonicalInput32274 canonicalOutput32274 (by decide) (by decide)
    ⟨false, false, canonicalPermutation392, canonicalPermutation14⟩ (by decide +kernel) hH

def canonicalInput32275 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32275 : ExponentCode := normalNode10645

theorem canonicalSound32275 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32275.moment H = canonicalOutput32275.moment H :=
  canonical_of_padded canonicalInput32275 canonicalOutput32275 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation237, canonicalPermutation14⟩ (by decide +kernel) hH

def canonicalInput32276 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput32276 : ExponentCode := normalNode10453

theorem canonicalSound32276 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32276.moment H = canonicalOutput32276.moment H :=
  canonical_of_padded canonicalInput32276 canonicalOutput32276 (by decide) (by decide)
    ⟨false, false, canonicalPermutation260, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput32277 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput32277 : ExponentCode := normalNode8361

theorem canonicalSound32277 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32277.moment H = canonicalOutput32277.moment H :=
  canonical_of_padded canonicalInput32277 canonicalOutput32277 (by decide) (by decide)
    ⟨false, false, canonicalPermutation313, OAI.MUB6.Certificate.PairSemantics.permutation195⟩ (by decide +kernel) hH

def canonicalInput32278 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput32278 : ExponentCode := normalNode11165

theorem canonicalSound32278 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32278.moment H = canonicalOutput32278.moment H :=
  canonical_of_padded canonicalInput32278 canonicalOutput32278 (by decide) (by decide)
    ⟨false, true, canonicalPermutation255, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32279 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput32279 : ExponentCode := normalNode8361

theorem canonicalSound32279 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32279.moment H = canonicalOutput32279.moment H :=
  canonical_of_padded canonicalInput32279 canonicalOutput32279 (by decide) (by decide)
    ⟨false, false, canonicalPermutation316, OAI.MUB6.Certificate.PairSemantics.permutation181⟩ (by decide +kernel) hH

def canonicalInput32280 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput32280 : ExponentCode := normalNode8361

theorem canonicalSound32280 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32280.moment H = canonicalOutput32280.moment H :=
  canonical_of_padded canonicalInput32280 canonicalOutput32280 (by decide) (by decide)
    ⟨false, false, canonicalPermutation367, OAI.MUB6.Certificate.PairSemantics.permutation181⟩ (by decide +kernel) hH

def canonicalInput32281 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput32281 : ExponentCode := normalNode11165

theorem canonicalSound32281 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32281.moment H = canonicalOutput32281.moment H :=
  canonical_of_padded canonicalInput32281 canonicalOutput32281 (by decide) (by decide)
    ⟨false, true, canonicalPermutation254, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32282 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput32282 : ExponentCode := normalNode10453

theorem canonicalSound32282 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32282.moment H = canonicalOutput32282.moment H :=
  canonical_of_padded canonicalInput32282 canonicalOutput32282 (by decide) (by decide)
    ⟨false, false, canonicalPermutation244, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput32283 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput32283 : ExponentCode := normalNode8361

theorem canonicalSound32283 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32283.moment H = canonicalOutput32283.moment H :=
  canonical_of_padded canonicalInput32283 canonicalOutput32283 (by decide) (by decide)
    ⟨false, false, canonicalPermutation362, OAI.MUB6.Certificate.PairSemantics.permutation181⟩ (by decide +kernel) hH

def canonicalInput32284 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput32284 : ExponentCode := normalNode10645

theorem canonicalSound32284 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32284.moment H = canonicalOutput32284.moment H :=
  canonical_of_padded canonicalInput32284 canonicalOutput32284 (by decide) (by decide)
    ⟨false, false, canonicalPermutation392, canonicalPermutation25⟩ (by decide +kernel) hH

def canonicalInput32285 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32285 : ExponentCode := normalNode10645

theorem canonicalSound32285 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32285.moment H = canonicalOutput32285.moment H :=
  canonical_of_padded canonicalInput32285 canonicalOutput32285 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation237, canonicalPermutation25⟩ (by decide +kernel) hH

def canonicalInput32286 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput32286 : ExponentCode := normalNode8361

theorem canonicalSound32286 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32286.moment H = canonicalOutput32286.moment H :=
  canonical_of_padded canonicalInput32286 canonicalOutput32286 (by decide) (by decide)
    ⟨false, false, canonicalPermutation358, OAI.MUB6.Certificate.PairSemantics.permutation181⟩ (by decide +kernel) hH

def canonicalInput32287 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput32287 : ExponentCode := normalNode10453

theorem canonicalSound32287 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32287.moment H = canonicalOutput32287.moment H :=
  canonical_of_padded canonicalInput32287 canonicalOutput32287 (by decide) (by decide)
    ⟨false, false, canonicalPermutation253, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput32288 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput32288 : ExponentCode := normalNode10645

theorem canonicalSound32288 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32288.moment H = canonicalOutput32288.moment H :=
  canonical_of_padded canonicalInput32288 canonicalOutput32288 (by decide) (by decide)
    ⟨false, false, canonicalPermutation154, OAI.MUB6.Certificate.PairSemantics.permutation184⟩ (by decide +kernel) hH

def canonicalInput32289 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput32289 : ExponentCode := normalNode10645

theorem canonicalSound32289 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32289.moment H = canonicalOutput32289.moment H :=
  canonical_of_padded canonicalInput32289 canonicalOutput32289 (by decide) (by decide)
    ⟨false, false, canonicalPermutation154, canonicalPermutation14⟩ (by decide +kernel) hH

def canonicalInput32290 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput32290 : ExponentCode := normalNode10645

theorem canonicalSound32290 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32290.moment H = canonicalOutput32290.moment H :=
  canonical_of_padded canonicalInput32290 canonicalOutput32290 (by decide) (by decide)
    ⟨false, false, canonicalPermutation154, canonicalPermutation25⟩ (by decide +kernel) hH

def canonicalInput32291 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32291 : ExponentCode := ⟨2, 2, OAI.MUB6.Certificate.PairSemantics.node5⟩

theorem canonicalSound32291 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32291.moment H = canonicalOutput32291.moment H :=
  canonical_of_padded canonicalInput32291 canonicalOutput32291 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation232, OAI.MUB6.Certificate.PairSemantics.permutation180⟩ (by decide +kernel) hH

def canonicalInput32292 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput32292 : ExponentCode := normalNode10645

theorem canonicalSound32292 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32292.moment H = canonicalOutput32292.moment H :=
  canonical_of_padded canonicalInput32292 canonicalOutput32292 (by decide) (by decide)
    ⟨false, false, canonicalPermutation390, canonicalPermutation25⟩ (by decide +kernel) hH

def canonicalInput32293 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput32293 : ExponentCode := normalNode10645

theorem canonicalSound32293 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32293.moment H = canonicalOutput32293.moment H :=
  canonical_of_padded canonicalInput32293 canonicalOutput32293 (by decide) (by decide)
    ⟨false, false, canonicalPermutation390, canonicalPermutation14⟩ (by decide +kernel) hH

def canonicalInput32294 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput32294 : ExponentCode := normalNode10645

theorem canonicalSound32294 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32294.moment H = canonicalOutput32294.moment H :=
  canonical_of_padded canonicalInput32294 canonicalOutput32294 (by decide) (by decide)
    ⟨false, false, canonicalPermutation390, OAI.MUB6.Certificate.PairSemantics.permutation184⟩ (by decide +kernel) hH

def canonicalInput32295 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput32295 : ExponentCode := normalNode8361

theorem canonicalSound32295 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32295.moment H = canonicalOutput32295.moment H :=
  canonical_of_padded canonicalInput32295 canonicalOutput32295 (by decide) (by decide)
    ⟨false, false, canonicalPermutation362, OAI.MUB6.Certificate.PairSemantics.permutation178⟩ (by decide +kernel) hH

def canonicalInput32296 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput32296 : ExponentCode := normalNode10453

theorem canonicalSound32296 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32296.moment H = canonicalOutput32296.moment H :=
  canonical_of_padded canonicalInput32296 canonicalOutput32296 (by decide) (by decide)
    ⟨false, false, canonicalPermutation244, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput32297 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32297 : ExponentCode := normalNode10645

theorem canonicalSound32297 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32297.moment H = canonicalOutput32297.moment H :=
  canonical_of_padded canonicalInput32297 canonicalOutput32297 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation238, canonicalPermutation25⟩ (by decide +kernel) hH

def canonicalInput32298 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput32298 : ExponentCode := normalNode10645

theorem canonicalSound32298 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32298.moment H = canonicalOutput32298.moment H :=
  canonical_of_padded canonicalInput32298 canonicalOutput32298 (by decide) (by decide)
    ⟨false, false, canonicalPermutation295, canonicalPermutation25⟩ (by decide +kernel) hH

def canonicalInput32299 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput32299 : ExponentCode := normalNode10453

theorem canonicalSound32299 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32299.moment H = canonicalOutput32299.moment H :=
  canonical_of_padded canonicalInput32299 canonicalOutput32299 (by decide) (by decide)
    ⟨false, false, canonicalPermutation253, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput32300 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput32300 : ExponentCode := normalNode8361

theorem canonicalSound32300 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32300.moment H = canonicalOutput32300.moment H :=
  canonical_of_padded canonicalInput32300 canonicalOutput32300 (by decide) (by decide)
    ⟨false, false, canonicalPermutation358, OAI.MUB6.Certificate.PairSemantics.permutation178⟩ (by decide +kernel) hH

def canonicalInput32301 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput32301 : ExponentCode := normalNode10453

theorem canonicalSound32301 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32301.moment H = canonicalOutput32301.moment H :=
  canonical_of_padded canonicalInput32301 canonicalOutput32301 (by decide) (by decide)
    ⟨false, false, canonicalPermutation248, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput32302 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32302 : ExponentCode := normalNode10645

theorem canonicalSound32302 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32302.moment H = canonicalOutput32302.moment H :=
  canonical_of_padded canonicalInput32302 canonicalOutput32302 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation238, canonicalPermutation14⟩ (by decide +kernel) hH

def canonicalInput32303 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput32303 : ExponentCode := normalNode8361

theorem canonicalSound32303 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32303.moment H = canonicalOutput32303.moment H :=
  canonical_of_padded canonicalInput32303 canonicalOutput32303 (by decide) (by decide)
    ⟨false, false, canonicalPermutation313, OAI.MUB6.Certificate.PairSemantics.permutation181⟩ (by decide +kernel) hH

def canonicalInput32304 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput32304 : ExponentCode := normalNode8361

theorem canonicalSound32304 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32304.moment H = canonicalOutput32304.moment H :=
  canonical_of_padded canonicalInput32304 canonicalOutput32304 (by decide) (by decide)
    ⟨false, false, canonicalPermutation360, OAI.MUB6.Certificate.PairSemantics.permutation181⟩ (by decide +kernel) hH

def canonicalInput32305 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput32305 : ExponentCode := normalNode10645

theorem canonicalSound32305 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32305.moment H = canonicalOutput32305.moment H :=
  canonical_of_padded canonicalInput32305 canonicalOutput32305 (by decide) (by decide)
    ⟨false, false, canonicalPermutation295, canonicalPermutation14⟩ (by decide +kernel) hH

def canonicalInput32306 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput32306 : ExponentCode := normalNode10453

theorem canonicalSound32306 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32306.moment H = canonicalOutput32306.moment H :=
  canonical_of_padded canonicalInput32306 canonicalOutput32306 (by decide) (by decide)
    ⟨false, false, canonicalPermutation246, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput32307 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput32307 : ExponentCode := normalNode8361

theorem canonicalSound32307 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32307.moment H = canonicalOutput32307.moment H :=
  canonical_of_padded canonicalInput32307 canonicalOutput32307 (by decide) (by decide)
    ⟨false, false, canonicalPermutation313, OAI.MUB6.Certificate.PairSemantics.permutation178⟩ (by decide +kernel) hH

def canonicalInput32308 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32308 : ExponentCode := normalNode10645

theorem canonicalSound32308 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32308.moment H = canonicalOutput32308.moment H :=
  canonical_of_padded canonicalInput32308 canonicalOutput32308 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation238, OAI.MUB6.Certificate.PairSemantics.permutation184⟩ (by decide +kernel) hH

def canonicalInput32309 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput32309 : ExponentCode := normalNode10453

theorem canonicalSound32309 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32309.moment H = canonicalOutput32309.moment H :=
  canonical_of_padded canonicalInput32309 canonicalOutput32309 (by decide) (by decide)
    ⟨false, false, canonicalPermutation248, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput32310 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput32310 : ExponentCode := normalNode10453

theorem canonicalSound32310 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32310.moment H = canonicalOutput32310.moment H :=
  canonical_of_padded canonicalInput32310 canonicalOutput32310 (by decide) (by decide)
    ⟨false, false, canonicalPermutation246, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput32311 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput32311 : ExponentCode := normalNode10645

theorem canonicalSound32311 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32311.moment H = canonicalOutput32311.moment H :=
  canonical_of_padded canonicalInput32311 canonicalOutput32311 (by decide) (by decide)
    ⟨false, false, canonicalPermutation295, OAI.MUB6.Certificate.PairSemantics.permutation184⟩ (by decide +kernel) hH

def canonicalInput32312 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput32312 : ExponentCode := normalNode8361

theorem canonicalSound32312 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32312.moment H = canonicalOutput32312.moment H :=
  canonical_of_padded canonicalInput32312 canonicalOutput32312 (by decide) (by decide)
    ⟨false, false, canonicalPermutation360, OAI.MUB6.Certificate.PairSemantics.permutation178⟩ (by decide +kernel) hH

def canonicalInput32313 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput32313 : ExponentCode := normalNode11165

theorem canonicalSound32313 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32313.moment H = canonicalOutput32313.moment H :=
  canonical_of_padded canonicalInput32313 canonicalOutput32313 (by decide) (by decide)
    ⟨false, true, canonicalPermutation250, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32314 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput32314 : ExponentCode := normalNode8361

theorem canonicalSound32314 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32314.moment H = canonicalOutput32314.moment H :=
  canonical_of_padded canonicalInput32314 canonicalOutput32314 (by decide) (by decide)
    ⟨false, false, canonicalPermutation316, OAI.MUB6.Certificate.PairSemantics.permutation195⟩ (by decide +kernel) hH

def canonicalInput32315 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput32315 : ExponentCode := normalNode8361

theorem canonicalSound32315 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32315.moment H = canonicalOutput32315.moment H :=
  canonical_of_padded canonicalInput32315 canonicalOutput32315 (by decide) (by decide)
    ⟨false, false, canonicalPermutation367, OAI.MUB6.Certificate.PairSemantics.permutation195⟩ (by decide +kernel) hH

def canonicalInput32316 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput32316 : ExponentCode := normalNode11165

theorem canonicalSound32316 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32316.moment H = canonicalOutput32316.moment H :=
  canonical_of_padded canonicalInput32316 canonicalOutput32316 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation226, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32317 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 2, 0, -2], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -2, 1, 1]]⟩

def canonicalOutput32317 : ExponentCode := normalNode10415

theorem canonicalSound32317 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32317.moment H = canonicalOutput32317.moment H :=
  canonical_of_padded canonicalInput32317 canonicalOutput32317 (by decide) (by decide)
    ⟨false, true, canonicalPermutation263, OAI.MUB6.Certificate.PairSemantics.permutation182⟩ (by decide +kernel) hH

def canonicalInput32318 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 3, -1, -2], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -2, 0, 2]]⟩

def canonicalOutput32318 : ExponentCode := normalNode10371

theorem canonicalSound32318 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32318.moment H = canonicalOutput32318.moment H :=
  canonical_of_padded canonicalInput32318 canonicalOutput32318 (by decide) (by decide)
    ⟨false, false, canonicalPermutation245, OAI.MUB6.Certificate.PairSemantics.permutation182⟩ (by decide +kernel) hH

def canonicalInput32319 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![2, 0, 0, 0, -2, 0], ![0, 0, 0, -1, 1, 0], ![-2, 0, 0, 1, 1, 0]]⟩

def canonicalOutput32319 : ExponentCode := normalNode10415

theorem canonicalSound32319 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32319.moment H = canonicalOutput32319.moment H :=
  canonical_of_padded canonicalInput32319 canonicalOutput32319 (by decide) (by decide)
    ⟨false, true, canonicalPermutation263, OAI.MUB6.Certificate.PairSemantics.permutation380⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
