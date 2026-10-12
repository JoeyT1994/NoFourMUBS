import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput30272 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput30272 : ExponentCode := normalNode8361

theorem canonicalSound30272 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30272.moment H = canonicalOutput30272.moment H :=
  canonical_of_padded canonicalInput30272 canonicalOutput30272 (by decide) (by decide)
    ⟨false, false, canonicalPermutation34, canonicalPermutation233⟩ (by decide +kernel) hH

def canonicalInput30273 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput30273 : ExponentCode := normalNode10645

theorem canonicalSound30273 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30273.moment H = canonicalOutput30273.moment H :=
  canonical_of_padded canonicalInput30273 canonicalOutput30273 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation184, canonicalPermutation235⟩ (by decide +kernel) hH

def canonicalInput30274 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput30274 : ExponentCode := normalNode10645

theorem canonicalSound30274 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30274.moment H = canonicalOutput30274.moment H :=
  canonical_of_padded canonicalInput30274 canonicalOutput30274 (by decide) (by decide)
    ⟨false, false, canonicalPermutation14, canonicalPermutation235⟩ (by decide +kernel) hH

def canonicalInput30275 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput30275 : ExponentCode := normalNode8361

theorem canonicalSound30275 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30275.moment H = canonicalOutput30275.moment H :=
  canonical_of_padded canonicalInput30275 canonicalOutput30275 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation197, canonicalPermutation233⟩ (by decide +kernel) hH

def canonicalInput30276 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput30276 : ExponentCode := normalNode10453

theorem canonicalSound30276 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30276.moment H = canonicalOutput30276.moment H :=
  canonical_of_padded canonicalInput30276 canonicalOutput30276 (by decide) (by decide)
    ⟨false, false, canonicalPermutation8, canonicalPermutation229⟩ (by decide +kernel) hH

def canonicalInput30277 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput30277 : ExponentCode := normalNode10645

theorem canonicalSound30277 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30277.moment H = canonicalOutput30277.moment H :=
  canonical_of_padded canonicalInput30277 canonicalOutput30277 (by decide) (by decide)
    ⟨false, false, canonicalPermutation25, canonicalPermutation110⟩ (by decide +kernel) hH

def canonicalInput30278 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput30278 : ExponentCode := normalNode10645

theorem canonicalSound30278 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30278.moment H = canonicalOutput30278.moment H :=
  canonical_of_padded canonicalInput30278 canonicalOutput30278 (by decide) (by decide)
    ⟨false, false, canonicalPermutation25, canonicalPermutation230⟩ (by decide +kernel) hH

def canonicalInput30279 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput30279 : ExponentCode := normalNode10645

theorem canonicalSound30279 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30279.moment H = canonicalOutput30279.moment H :=
  canonical_of_padded canonicalInput30279 canonicalOutput30279 (by decide) (by decide)
    ⟨false, false, canonicalPermutation25, canonicalPermutation235⟩ (by decide +kernel) hH

def canonicalInput30280 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput30280 : ExponentCode := ⟨2, 2, OAI.MUB6.Certificate.PairSemantics.node5⟩

theorem canonicalSound30280 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30280.moment H = canonicalOutput30280.moment H :=
  canonical_of_padded canonicalInput30280 canonicalOutput30280 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation213⟩ (by decide +kernel) hH

def canonicalInput30281 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput30281 : ExponentCode := normalNode10645

theorem canonicalSound30281 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30281.moment H = canonicalOutput30281.moment H :=
  canonical_of_padded canonicalInput30281 canonicalOutput30281 (by decide) (by decide)
    ⟨false, false, canonicalPermutation55, canonicalPermutation235⟩ (by decide +kernel) hH

def canonicalInput30282 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput30282 : ExponentCode := normalNode10645

theorem canonicalSound30282 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30282.moment H = canonicalOutput30282.moment H :=
  canonical_of_padded canonicalInput30282 canonicalOutput30282 (by decide) (by decide)
    ⟨false, false, canonicalPermutation55, canonicalPermutation230⟩ (by decide +kernel) hH

def canonicalInput30283 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput30283 : ExponentCode := normalNode10645

theorem canonicalSound30283 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30283.moment H = canonicalOutput30283.moment H :=
  canonical_of_padded canonicalInput30283 canonicalOutput30283 (by decide) (by decide)
    ⟨false, false, canonicalPermutation55, canonicalPermutation110⟩ (by decide +kernel) hH

def canonicalInput30284 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput30284 : ExponentCode := normalNode8361

theorem canonicalSound30284 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30284.moment H = canonicalOutput30284.moment H :=
  canonical_of_padded canonicalInput30284 canonicalOutput30284 (by decide) (by decide)
    ⟨false, false, canonicalPermutation34, canonicalPermutation226⟩ (by decide +kernel) hH

def canonicalInput30285 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput30285 : ExponentCode := normalNode10453

theorem canonicalSound30285 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30285.moment H = canonicalOutput30285.moment H :=
  canonical_of_padded canonicalInput30285 canonicalOutput30285 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation205⟩ (by decide +kernel) hH

def canonicalInput30286 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput30286 : ExponentCode := normalNode10645

theorem canonicalSound30286 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30286.moment H = canonicalOutput30286.moment H :=
  canonical_of_padded canonicalInput30286 canonicalOutput30286 (by decide) (by decide)
    ⟨false, false, canonicalPermutation21, canonicalPermutation235⟩ (by decide +kernel) hH

def canonicalInput30287 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput30287 : ExponentCode := normalNode10645

theorem canonicalSound30287 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30287.moment H = canonicalOutput30287.moment H :=
  canonical_of_padded canonicalInput30287 canonicalOutput30287 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation186, canonicalPermutation235⟩ (by decide +kernel) hH

def canonicalInput30288 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput30288 : ExponentCode := normalNode10453

theorem canonicalSound30288 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30288.moment H = canonicalOutput30288.moment H :=
  canonical_of_padded canonicalInput30288 canonicalOutput30288 (by decide) (by decide)
    ⟨false, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation205⟩ (by decide +kernel) hH

def canonicalInput30289 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput30289 : ExponentCode := normalNode8361

theorem canonicalSound30289 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30289.moment H = canonicalOutput30289.moment H :=
  canonical_of_padded canonicalInput30289 canonicalOutput30289 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation197, canonicalPermutation226⟩ (by decide +kernel) hH

def canonicalInput30290 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput30290 : ExponentCode := normalNode10453

theorem canonicalSound30290 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30290.moment H = canonicalOutput30290.moment H :=
  canonical_of_padded canonicalInput30290 canonicalOutput30290 (by decide) (by decide)
    ⟨false, false, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation205⟩ (by decide +kernel) hH

def canonicalInput30291 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput30291 : ExponentCode := normalNode10645

theorem canonicalSound30291 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30291.moment H = canonicalOutput30291.moment H :=
  canonical_of_padded canonicalInput30291 canonicalOutput30291 (by decide) (by decide)
    ⟨false, false, canonicalPermutation21, canonicalPermutation230⟩ (by decide +kernel) hH

def canonicalInput30292 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput30292 : ExponentCode := normalNode8361

theorem canonicalSound30292 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30292.moment H = canonicalOutput30292.moment H :=
  canonical_of_padded canonicalInput30292 canonicalOutput30292 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation182, canonicalPermutation233⟩ (by decide +kernel) hH

def canonicalInput30293 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput30293 : ExponentCode := normalNode8361

theorem canonicalSound30293 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30293.moment H = canonicalOutput30293.moment H :=
  canonical_of_padded canonicalInput30293 canonicalOutput30293 (by decide) (by decide)
    ⟨false, false, canonicalPermutation31, canonicalPermutation233⟩ (by decide +kernel) hH

def canonicalInput30294 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput30294 : ExponentCode := normalNode10645

theorem canonicalSound30294 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30294.moment H = canonicalOutput30294.moment H :=
  canonical_of_padded canonicalInput30294 canonicalOutput30294 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation186, canonicalPermutation230⟩ (by decide +kernel) hH

def canonicalInput30295 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput30295 : ExponentCode := normalNode10453

theorem canonicalSound30295 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30295.moment H = canonicalOutput30295.moment H :=
  canonical_of_padded canonicalInput30295 canonicalOutput30295 (by decide) (by decide)
    ⟨false, false, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation205⟩ (by decide +kernel) hH

def canonicalInput30296 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput30296 : ExponentCode := normalNode8361

theorem canonicalSound30296 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30296.moment H = canonicalOutput30296.moment H :=
  canonical_of_padded canonicalInput30296 canonicalOutput30296 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation182, canonicalPermutation226⟩ (by decide +kernel) hH

def canonicalInput30297 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput30297 : ExponentCode := normalNode10645

theorem canonicalSound30297 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30297.moment H = canonicalOutput30297.moment H :=
  canonical_of_padded canonicalInput30297 canonicalOutput30297 (by decide) (by decide)
    ⟨false, false, canonicalPermutation21, canonicalPermutation110⟩ (by decide +kernel) hH

def canonicalInput30298 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput30298 : ExponentCode := normalNode10453

theorem canonicalSound30298 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30298.moment H = canonicalOutput30298.moment H :=
  canonical_of_padded canonicalInput30298 canonicalOutput30298 (by decide) (by decide)
    ⟨false, false, canonicalPermutation7, canonicalPermutation229⟩ (by decide +kernel) hH

def canonicalInput30299 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput30299 : ExponentCode := normalNode10453

theorem canonicalSound30299 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30299.moment H = canonicalOutput30299.moment H :=
  canonical_of_padded canonicalInput30299 canonicalOutput30299 (by decide) (by decide)
    ⟨false, false, canonicalPermutation9, canonicalPermutation229⟩ (by decide +kernel) hH

def canonicalInput30300 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput30300 : ExponentCode := normalNode10645

theorem canonicalSound30300 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30300.moment H = canonicalOutput30300.moment H :=
  canonical_of_padded canonicalInput30300 canonicalOutput30300 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation186, canonicalPermutation110⟩ (by decide +kernel) hH

def canonicalInput30301 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput30301 : ExponentCode := normalNode8361

theorem canonicalSound30301 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30301.moment H = canonicalOutput30301.moment H :=
  canonical_of_padded canonicalInput30301 canonicalOutput30301 (by decide) (by decide)
    ⟨false, false, canonicalPermutation31, canonicalPermutation226⟩ (by decide +kernel) hH

def canonicalInput30302 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput30302 : ExponentCode := normalNode11165

theorem canonicalSound30302 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30302.moment H = canonicalOutput30302.moment H :=
  canonical_of_padded canonicalInput30302 canonicalOutput30302 (by decide) (by decide)
    ⟨false, true, canonicalPermutation47, OAI.MUB6.Certificate.PairSemantics.permutation202⟩ (by decide +kernel) hH

def canonicalInput30303 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput30303 : ExponentCode := normalNode8361

theorem canonicalSound30303 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30303.moment H = canonicalOutput30303.moment H :=
  canonical_of_padded canonicalInput30303 canonicalOutput30303 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, canonicalPermutation228⟩ (by decide +kernel) hH

def canonicalInput30304 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput30304 : ExponentCode := normalNode8361

theorem canonicalSound30304 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30304.moment H = canonicalOutput30304.moment H :=
  canonical_of_padded canonicalInput30304 canonicalOutput30304 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation177, canonicalPermutation228⟩ (by decide +kernel) hH

def canonicalInput30305 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput30305 : ExponentCode := normalNode11165

theorem canonicalSound30305 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30305.moment H = canonicalOutput30305.moment H :=
  canonical_of_padded canonicalInput30305 canonicalOutput30305 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation172, OAI.MUB6.Certificate.PairSemantics.permutation202⟩ (by decide +kernel) hH

def canonicalInput30306 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 2, 0, -2], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -2, 1, 1]]⟩

def canonicalOutput30306 : ExponentCode := normalNode10415

theorem canonicalSound30306 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30306.moment H = canonicalOutput30306.moment H :=
  canonical_of_padded canonicalInput30306 canonicalOutput30306 (by decide) (by decide)
    ⟨false, true, canonicalPermutation81, canonicalPermutation231⟩ (by decide +kernel) hH

def canonicalInput30307 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 3, -1, -2], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -2, 0, 2]]⟩

def canonicalOutput30307 : ExponentCode := normalNode10371

theorem canonicalSound30307 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30307.moment H = canonicalOutput30307.moment H :=
  canonical_of_padded canonicalInput30307 canonicalOutput30307 (by decide) (by decide)
    ⟨false, false, canonicalPermutation18, canonicalPermutation231⟩ (by decide +kernel) hH

def canonicalInput30308 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![2, 0, 0, 0, -2, 0], ![0, 0, 0, -1, 1, 0], ![-2, 0, 0, 1, 1, 0]]⟩

def canonicalOutput30308 : ExponentCode := normalNode10274

theorem canonicalSound30308 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30308.moment H = canonicalOutput30308.moment H :=
  canonical_of_padded canonicalInput30308 canonicalOutput30308 (by decide) (by decide)
    ⟨false, true, canonicalPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation220⟩ (by decide +kernel) hH

def canonicalInput30309 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, -1, 0, 0], ![1, 0, 0, -1, 0, 0]]⟩

def canonicalOutput30309 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node1291⟩

theorem canonicalSound30309 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30309.moment H = canonicalOutput30309.moment H :=
  canonical_of_padded canonicalInput30309 canonicalOutput30309 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation159, canonicalPermutation272⟩ (by decide +kernel) hH

def canonicalInput30310 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -1, 0], ![1, 0, 0, -2, 1, 0]]⟩

def canonicalOutput30310 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2758⟩

theorem canonicalSound30310 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30310.moment H = canonicalOutput30310.moment H :=
  canonical_of_padded canonicalInput30310 canonicalOutput30310 (by decide) (by decide)
    ⟨false, false, canonicalPermutation40, OAI.MUB6.Certificate.PairSemantics.permutation238⟩ (by decide +kernel) hH

def canonicalInput30311 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-2, 0, 0, 3, -1, 0], ![0, 0, 0, -1, 1, 0], ![2, 0, 0, -2, 0, 0]]⟩

def canonicalOutput30311 : ExponentCode := normalNode9917

theorem canonicalSound30311 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30311.moment H = canonicalOutput30311.moment H :=
  canonical_of_padded canonicalInput30311 canonicalOutput30311 (by decide) (by decide)
    ⟨false, false, canonicalPermutation79, canonicalPermutation273⟩ (by decide +kernel) hH

def canonicalInput30312 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput30312 : ExponentCode := normalNode11165

theorem canonicalSound30312 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30312.moment H = canonicalOutput30312.moment H :=
  canonical_of_padded canonicalInput30312 canonicalOutput30312 (by decide) (by decide)
    ⟨false, true, canonicalPermutation24, OAI.MUB6.Certificate.PairSemantics.permutation221⟩ (by decide +kernel) hH

def canonicalInput30313 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput30313 : ExponentCode := normalNode8361

theorem canonicalSound30313 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30313.moment H = canonicalOutput30313.moment H :=
  canonical_of_padded canonicalInput30313 canonicalOutput30313 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation229⟩ (by decide +kernel) hH

def canonicalInput30314 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput30314 : ExponentCode := normalNode8361

theorem canonicalSound30314 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30314.moment H = canonicalOutput30314.moment H :=
  canonical_of_padded canonicalInput30314 canonicalOutput30314 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation177, OAI.MUB6.Certificate.PairSemantics.permutation229⟩ (by decide +kernel) hH

def canonicalInput30315 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput30315 : ExponentCode := normalNode11165

theorem canonicalSound30315 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30315.moment H = canonicalOutput30315.moment H :=
  canonical_of_padded canonicalInput30315 canonicalOutput30315 (by decide) (by decide)
    ⟨false, true, canonicalPermutation29, OAI.MUB6.Certificate.PairSemantics.permutation221⟩ (by decide +kernel) hH

def canonicalInput30316 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput30316 : ExponentCode := normalNode8361

theorem canonicalSound30316 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30316.moment H = canonicalOutput30316.moment H :=
  canonical_of_padded canonicalInput30316 canonicalOutput30316 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation197, canonicalPermutation180⟩ (by decide +kernel) hH

def canonicalInput30317 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput30317 : ExponentCode := normalNode10645

theorem canonicalSound30317 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30317.moment H = canonicalOutput30317.moment H :=
  canonical_of_padded canonicalInput30317 canonicalOutput30317 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation184, canonicalPermutation249⟩ (by decide +kernel) hH

def canonicalInput30318 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput30318 : ExponentCode := normalNode10453

theorem canonicalSound30318 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30318.moment H = canonicalOutput30318.moment H :=
  canonical_of_padded canonicalInput30318 canonicalOutput30318 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation226⟩ (by decide +kernel) hH

def canonicalInput30319 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput30319 : ExponentCode := normalNode10453

theorem canonicalSound30319 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30319.moment H = canonicalOutput30319.moment H :=
  canonical_of_padded canonicalInput30319 canonicalOutput30319 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation226⟩ (by decide +kernel) hH

def canonicalInput30320 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput30320 : ExponentCode := normalNode10645

theorem canonicalSound30320 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30320.moment H = canonicalOutput30320.moment H :=
  canonical_of_padded canonicalInput30320 canonicalOutput30320 (by decide) (by decide)
    ⟨false, false, canonicalPermutation14, canonicalPermutation249⟩ (by decide +kernel) hH

def canonicalInput30321 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput30321 : ExponentCode := normalNode8361

theorem canonicalSound30321 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30321.moment H = canonicalOutput30321.moment H :=
  canonical_of_padded canonicalInput30321 canonicalOutput30321 (by decide) (by decide)
    ⟨false, false, canonicalPermutation34, canonicalPermutation180⟩ (by decide +kernel) hH

def canonicalInput30322 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput30322 : ExponentCode := normalNode8361

theorem canonicalSound30322 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30322.moment H = canonicalOutput30322.moment H :=
  canonical_of_padded canonicalInput30322 canonicalOutput30322 (by decide) (by decide)
    ⟨false, false, canonicalPermutation31, canonicalPermutation180⟩ (by decide +kernel) hH

def canonicalInput30323 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput30323 : ExponentCode := normalNode10453

theorem canonicalSound30323 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30323.moment H = canonicalOutput30323.moment H :=
  canonical_of_padded canonicalInput30323 canonicalOutput30323 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, canonicalPermutation250⟩ (by decide +kernel) hH

def canonicalInput30324 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput30324 : ExponentCode := normalNode10645

theorem canonicalSound30324 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30324.moment H = canonicalOutput30324.moment H :=
  canonical_of_padded canonicalInput30324 canonicalOutput30324 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation184, canonicalPermutation251⟩ (by decide +kernel) hH

def canonicalInput30325 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput30325 : ExponentCode := normalNode10645

theorem canonicalSound30325 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30325.moment H = canonicalOutput30325.moment H :=
  canonical_of_padded canonicalInput30325 canonicalOutput30325 (by decide) (by decide)
    ⟨false, false, canonicalPermutation14, canonicalPermutation251⟩ (by decide +kernel) hH

def canonicalInput30326 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput30326 : ExponentCode := normalNode10453

theorem canonicalSound30326 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30326.moment H = canonicalOutput30326.moment H :=
  canonical_of_padded canonicalInput30326 canonicalOutput30326 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation161, canonicalPermutation250⟩ (by decide +kernel) hH

def canonicalInput30327 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput30327 : ExponentCode := normalNode8361

theorem canonicalSound30327 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30327.moment H = canonicalOutput30327.moment H :=
  canonical_of_padded canonicalInput30327 canonicalOutput30327 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation182, canonicalPermutation180⟩ (by decide +kernel) hH

def canonicalInput30328 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput30328 : ExponentCode := normalNode11165

theorem canonicalSound30328 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30328.moment H = canonicalOutput30328.moment H :=
  canonical_of_padded canonicalInput30328 canonicalOutput30328 (by decide) (by decide)
    ⟨false, true, canonicalPermutation16, OAI.MUB6.Certificate.PairSemantics.permutation221⟩ (by decide +kernel) hH

def canonicalInput30329 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput30329 : ExponentCode := normalNode8361

theorem canonicalSound30329 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30329.moment H = canonicalOutput30329.moment H :=
  canonical_of_padded canonicalInput30329 canonicalOutput30329 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, canonicalPermutation274⟩ (by decide +kernel) hH

def canonicalInput30330 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput30330 : ExponentCode := normalNode8361

theorem canonicalSound30330 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30330.moment H = canonicalOutput30330.moment H :=
  canonical_of_padded canonicalInput30330 canonicalOutput30330 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation177, canonicalPermutation274⟩ (by decide +kernel) hH

def canonicalInput30331 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput30331 : ExponentCode := normalNode11165

theorem canonicalSound30331 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30331.moment H = canonicalOutput30331.moment H :=
  canonical_of_padded canonicalInput30331 canonicalOutput30331 (by decide) (by decide)
    ⟨false, true, canonicalPermutation40, OAI.MUB6.Certificate.PairSemantics.permutation221⟩ (by decide +kernel) hH

def canonicalInput30332 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput30332 : ExponentCode := normalNode10453

theorem canonicalSound30332 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30332.moment H = canonicalOutput30332.moment H :=
  canonical_of_padded canonicalInput30332 canonicalOutput30332 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation250⟩ (by decide +kernel) hH

def canonicalInput30333 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput30333 : ExponentCode := normalNode8361

theorem canonicalSound30333 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30333.moment H = canonicalOutput30333.moment H :=
  canonical_of_padded canonicalInput30333 canonicalOutput30333 (by decide) (by decide)
    ⟨false, false, canonicalPermutation34, canonicalPermutation274⟩ (by decide +kernel) hH

def canonicalInput30334 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput30334 : ExponentCode := normalNode10645

theorem canonicalSound30334 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30334.moment H = canonicalOutput30334.moment H :=
  canonical_of_padded canonicalInput30334 canonicalOutput30334 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation184, canonicalPermutation256⟩ (by decide +kernel) hH

def canonicalInput30335 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput30335 : ExponentCode := normalNode10645

theorem canonicalSound30335 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30335.moment H = canonicalOutput30335.moment H :=
  canonical_of_padded canonicalInput30335 canonicalOutput30335 (by decide) (by decide)
    ⟨false, false, canonicalPermutation14, canonicalPermutation256⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
