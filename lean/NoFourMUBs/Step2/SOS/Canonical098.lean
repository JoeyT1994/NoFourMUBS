import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes09
import NoFourMUBs.Step2.SOS.NormalizationNodes001
import NoFourMUBs.Step2.SOS.NormalizationNodes012
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes22
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes30
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput6272 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, 0, 2, -2], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput6272 : ExponentCode := normalNode10833

theorem canonicalSound6272 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6272.moment H = canonicalOutput6272.moment H :=
  canonical_of_padded canonicalInput6272 canonicalOutput6272 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6273 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, 0, 2, -2], ![0, 1, -1, 0], ![1, -1, 1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput6273 : ExponentCode := normalNode10844

theorem canonicalSound6273 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6273.moment H = canonicalOutput6273.moment H :=
  canonical_of_padded canonicalInput6273 canonicalOutput6273 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6274 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, 0, 2, -2], ![0, 1, -1, 0], ![1, -1, 2, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput6274 : ExponentCode := normalNode10607

theorem canonicalSound6274 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6274.moment H = canonicalOutput6274.moment H :=
  canonical_of_padded canonicalInput6274 canonicalOutput6274 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6275 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, 0, 2, -2], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, -1, 2, -2]]⟩

def canonicalOutput6275 : ExponentCode := normalNode10607

theorem canonicalSound6275 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6275.moment H = canonicalOutput6275.moment H :=
  canonical_of_padded canonicalInput6275 canonicalOutput6275 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation179, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6276 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, 0, 2, -2], ![0, 1, 0, -1], ![0, 1, -1, 0], ![2, -2, 1, -1]]⟩

def canonicalOutput6276 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1930⟩

theorem canonicalSound6276 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6276.moment H = canonicalOutput6276.moment H :=
  canonical_of_padded canonicalInput6276 canonicalOutput6276 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6277 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, 0, 2, -2], ![0, 1, 0, -1], ![1, -1, 1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput6277 : ExponentCode := normalNode10633

theorem canonicalSound6277 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6277.moment H = canonicalOutput6277.moment H :=
  canonical_of_padded canonicalInput6277 canonicalOutput6277 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6278 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, 0, 2, -2], ![0, 1, 1, -2], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput6278 : ExponentCode := normalNode10284

theorem canonicalSound6278 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6278.moment H = canonicalOutput6278.moment H :=
  canonical_of_padded canonicalInput6278 canonicalOutput6278 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6279 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, 0, 2, -2], ![1, -2, 1, 0], ![1, 2, -1, -2]]⟩

def canonicalOutput6279 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node498⟩

theorem canonicalSound6279 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6279.moment H = canonicalOutput6279.moment H :=
  canonical_of_padded canonicalInput6279 canonicalOutput6279 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput6280 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, 0, 2, -2], ![1, -2, 2, -1], ![1, 2, -2, -1]]⟩

def canonicalOutput6280 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code583

theorem canonicalSound6280 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6280.moment H = canonicalOutput6280.moment H :=
  canonical_of_padded canonicalInput6280 canonicalOutput6280 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6281 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, 0, 2, -2], ![1, -1, -1, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput6281 : ExponentCode := normalNode7939

theorem canonicalSound6281 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6281.moment H = canonicalOutput6281.moment H :=
  canonical_of_padded canonicalInput6281 canonicalOutput6281 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6282 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, 0, 2, -2], ![1, -1, 0, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput6282 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1037⟩

theorem canonicalSound6282 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6282.moment H = canonicalOutput6282.moment H :=
  canonical_of_padded canonicalInput6282 canonicalOutput6282 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6283 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, 0, 2, -2], ![1, -1, 2, -2], ![1, 1, -2, 0]]⟩

def canonicalOutput6283 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1055⟩

theorem canonicalSound6283 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6283.moment H = canonicalOutput6283.moment H :=
  canonical_of_padded canonicalInput6283 canonicalOutput6283 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6284 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, 0, 2, -2], ![1, 1, -2, 0], ![1, -1, 2, -2]]⟩

def canonicalOutput6284 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1055⟩

theorem canonicalSound6284 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6284.moment H = canonicalOutput6284.moment H :=
  canonical_of_padded canonicalInput6284 canonicalOutput6284 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6285 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, 0, 2, -2], ![1, 2, -2, -1], ![1, -2, 2, -1]]⟩

def canonicalOutput6285 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code583

theorem canonicalSound6285 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6285.moment H = canonicalOutput6285.moment H :=
  canonical_of_padded canonicalInput6285 canonicalOutput6285 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6286 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, 0, 3, -3], ![0, 0, 0, 0], ![1, -1, 0, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput6286 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1075⟩

theorem canonicalSound6286 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6286.moment H = canonicalOutput6286.moment H :=
  canonical_of_padded canonicalInput6286 canonicalOutput6286 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation154, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput6287 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, 0, 3, -3], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput6287 : ExponentCode := normalNode10843

theorem canonicalSound6287 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6287.moment H = canonicalOutput6287.moment H :=
  canonical_of_padded canonicalInput6287 canonicalOutput6287 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6288 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, 0, 3, -3], ![0, 1, -1, 0], ![1, -1, 1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput6288 : ExponentCode := normalNode10612

theorem canonicalSound6288 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6288.moment H = canonicalOutput6288.moment H :=
  canonical_of_padded canonicalInput6288 canonicalOutput6288 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6289 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, 0, 3, -3], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, -1, 1, -1]]⟩

def canonicalOutput6289 : ExponentCode := normalNode10612

theorem canonicalSound6289 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6289.moment H = canonicalOutput6289.moment H :=
  canonical_of_padded canonicalInput6289 canonicalOutput6289 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation179, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6290 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, 0, 3, -3], ![0, 1, -1, 0], ![2, -1, 0, -1]]⟩

def canonicalOutput6290 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1300⟩

theorem canonicalSound6290 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6290.moment H = canonicalOutput6290.moment H :=
  canonical_of_padded canonicalInput6290 canonicalOutput6290 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6291 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, 0, 3, -3], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput6291 : ExponentCode := normalNode10589

theorem canonicalSound6291 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6291.moment H = canonicalOutput6291.moment H :=
  canonical_of_padded canonicalInput6291 canonicalOutput6291 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6292 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, 0, 3, -3], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput6292 : ExponentCode := normalNode10630

theorem canonicalSound6292 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6292.moment H = canonicalOutput6292.moment H :=
  canonical_of_padded canonicalInput6292 canonicalOutput6292 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6293 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, 0, 3, -3], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput6293 : ExponentCode := normalNode10630

theorem canonicalSound6293 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6293.moment H = canonicalOutput6293.moment H :=
  canonical_of_padded canonicalInput6293 canonicalOutput6293 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation179, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6294 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, 0, 3, -3], ![0, 1, 0, -1], ![2, -1, -1, 0]]⟩

def canonicalOutput6294 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1175⟩

theorem canonicalSound6294 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6294.moment H = canonicalOutput6294.moment H :=
  canonical_of_padded canonicalInput6294 canonicalOutput6294 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput6295 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, 0, 3, -3], ![1, -2, 1, 0], ![1, 2, -2, -1]]⟩

def canonicalOutput6295 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code591

theorem canonicalSound6295 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6295.moment H = canonicalOutput6295.moment H :=
  canonical_of_padded canonicalInput6295 canonicalOutput6295 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6296 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, 0, 3, -3], ![1, -1, -1, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput6296 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1026⟩

theorem canonicalSound6296 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6296.moment H = canonicalOutput6296.moment H :=
  canonical_of_padded canonicalInput6296 canonicalOutput6296 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6297 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, 0, 3, -3], ![1, -1, 1, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput6297 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1064⟩

theorem canonicalSound6297 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6297.moment H = canonicalOutput6297.moment H :=
  canonical_of_padded canonicalInput6297 canonicalOutput6297 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6298 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, 0, 3, -3], ![1, 1, -2, 0], ![1, -1, 1, -1]]⟩

def canonicalOutput6298 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1064⟩

theorem canonicalSound6298 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6298.moment H = canonicalOutput6298.moment H :=
  canonical_of_padded canonicalInput6298 canonicalOutput6298 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6299 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, 0, 3, -3], ![1, 2, -2, -1], ![1, -2, 1, 0]]⟩

def canonicalOutput6299 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code591

theorem canonicalSound6299 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6299.moment H = canonicalOutput6299.moment H :=
  canonical_of_padded canonicalInput6299 canonicalOutput6299 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6300 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, 0, 4, -4], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput6300 : ExponentCode := normalNode10615

theorem canonicalSound6300 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6300.moment H = canonicalOutput6300.moment H :=
  canonical_of_padded canonicalInput6300 canonicalOutput6300 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6301 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, 0, 4, -4], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput6301 : ExponentCode := normalNode10615

theorem canonicalSound6301 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6301.moment H = canonicalOutput6301.moment H :=
  canonical_of_padded canonicalInput6301 canonicalOutput6301 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation179, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6302 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, 0, 4, -4], ![1, -1, 0, 0], ![1, 1, -2, 0]]⟩

def canonicalOutput6302 : ExponentCode := normalNode9116

theorem canonicalSound6302 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6302.moment H = canonicalOutput6302.moment H :=
  canonical_of_padded canonicalInput6302 canonicalOutput6302 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6303 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, 0, 4, -4], ![1, 1, -2, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput6303 : ExponentCode := normalNode9116

theorem canonicalSound6303 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6303.moment H = canonicalOutput6303.moment H :=
  canonical_of_padded canonicalInput6303 canonicalOutput6303 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6304 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, 1, -1, 0], ![0, 0, 0, 0], ![1, -1, 0, 0], ![1, 0, 3, -4]]⟩

def canonicalOutput6304 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1227⟩

theorem canonicalSound6304 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6304.moment H = canonicalOutput6304.moment H :=
  canonical_of_padded canonicalInput6304 canonicalOutput6304 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, canonicalPermutation32⟩ (by decide +kernel) hH

def canonicalInput6305 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, 1, -1, 0], ![0, 0, 0, 0], ![1, -1, 1, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput6305 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1298⟩

theorem canonicalSound6305 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6305.moment H = canonicalOutput6305.moment H :=
  canonical_of_padded canonicalInput6305 canonicalOutput6305 (by decide) (by decide)
    ⟨false, true, canonicalPermutation79, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6306 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, 1, -1, 0], ![0, 0, 0, 0], ![1, -1, 2, -2], ![1, 0, 1, -2]]⟩

def canonicalOutput6306 : ExponentCode := normalNode10836

theorem canonicalSound6306 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6306.moment H = canonicalOutput6306.moment H :=
  canonical_of_padded canonicalInput6306 canonicalOutput6306 (by decide) (by decide)
    ⟨false, true, canonicalPermutation79, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6307 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, 1, -1, 0], ![0, 0, 0, 0], ![1, -1, 3, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput6307 : ExponentCode := normalNode9720

theorem canonicalSound6307 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6307.moment H = canonicalOutput6307.moment H :=
  canonical_of_padded canonicalInput6307 canonicalOutput6307 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation17⟩ (by decide +kernel) hH

def canonicalInput6308 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, 1, -1, 0], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput6308 : ExponentCode := normalNode10830

theorem canonicalSound6308 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6308.moment H = canonicalOutput6308.moment H :=
  canonical_of_padded canonicalInput6308 canonicalOutput6308 (by decide) (by decide)
    ⟨false, true, canonicalPermutation38, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6309 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, 1, -1, 0], ![0, 0, 1, -1], ![2, -1, 2, -3]]⟩

def canonicalOutput6309 : ExponentCode := normalNode9744

theorem canonicalSound6309 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6309.moment H = canonicalOutput6309.moment H :=
  canonical_of_padded canonicalInput6309 canonicalOutput6309 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput6310 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, 1, -1, 0], ![0, 0, 2, -2], ![1, -1, 1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput6310 : ExponentCode := normalNode10844

theorem canonicalSound6310 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6310.moment H = canonicalOutput6310.moment H :=
  canonical_of_padded canonicalInput6310 canonicalOutput6310 (by decide) (by decide)
    ⟨false, true, canonicalPermutation38, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6311 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, 1, -1, 0], ![0, 0, 3, -3], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput6311 : ExponentCode := normalNode10843

theorem canonicalSound6311 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6311.moment H = canonicalOutput6311.moment H :=
  canonical_of_padded canonicalInput6311 canonicalOutput6311 (by decide) (by decide)
    ⟨false, true, canonicalPermutation38, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6312 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, 1, -1, 0], ![0, 0, 3, -3], ![2, -1, 0, -1]]⟩

def canonicalOutput6312 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1300⟩

theorem canonicalSound6312 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6312.moment H = canonicalOutput6312.moment H :=
  canonical_of_padded canonicalInput6312 canonicalOutput6312 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6313 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, -1, 3, -3], ![1, -1, 1, -1]]⟩

def canonicalOutput6313 : ExponentCode := normalNode3317

theorem canonicalSound6313 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6313.moment H = canonicalOutput6313.moment H :=
  canonical_of_padded canonicalInput6313 canonicalOutput6313 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6314 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, 1, -1, 0], ![0, 1, -1, 0], ![2, -2, 4, -4]]⟩

def canonicalOutput6314 : ExponentCode := normalNode7440

theorem canonicalSound6314 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6314.moment H = canonicalOutput6314.moment H :=
  canonical_of_padded canonicalInput6314 canonicalOutput6314 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput6315 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 2, -2], ![1, -1, 1, -1]]⟩

def canonicalOutput6315 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1936⟩

theorem canonicalSound6315 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6315.moment H = canonicalOutput6315.moment H :=
  canonical_of_padded canonicalInput6315 canonicalOutput6315 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6316 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, 1, -1, 0], ![1, -2, 0, 1], ![1, 1, 3, -5]]⟩

def canonicalOutput6316 : ExponentCode := normalNode9980

theorem canonicalSound6316 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6316.moment H = canonicalOutput6316.moment H :=
  canonical_of_padded canonicalInput6316 canonicalOutput6316 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput6317 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, 1, -1, 0], ![1, -2, 2, -1], ![1, 1, 1, -3]]⟩

def canonicalOutput6317 : ExponentCode := normalNode9552

theorem canonicalSound6317 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6317.moment H = canonicalOutput6317.moment H :=
  canonical_of_padded canonicalInput6317 canonicalOutput6317 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput6318 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, 1, -1, 0], ![1, -2, 3, -2], ![1, 1, 0, -2]]⟩

def canonicalOutput6318 : ExponentCode := normalNode9008

theorem canonicalSound6318 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6318.moment H = canonicalOutput6318.moment H :=
  canonical_of_padded canonicalInput6318 canonicalOutput6318 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput6319 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, 1, -1, 0], ![1, -2, 4, -3], ![1, 1, -1, -1]]⟩

def canonicalOutput6319 : ExponentCode := normalNode7430

theorem canonicalSound6319 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6319.moment H = canonicalOutput6319.moment H :=
  canonical_of_padded canonicalInput6319 canonicalOutput6319 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput6320 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, 1, -1, 0], ![1, -1, 2, -2], ![1, 0, 1, -2]]⟩

def canonicalOutput6320 : ExponentCode := normalNode10836

theorem canonicalSound6320 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6320.moment H = canonicalOutput6320.moment H :=
  canonical_of_padded canonicalInput6320 canonicalOutput6320 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6321 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, 1, -1, 0], ![1, -1, 3, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput6321 : ExponentCode := normalNode9720

theorem canonicalSound6321 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6321.moment H = canonicalOutput6321.moment H :=
  canonical_of_padded canonicalInput6321 canonicalOutput6321 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput6322 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, 1, -1, 0], ![1, -1, 4, -4], ![1, 0, -1, 0]]⟩

def canonicalOutput6322 : ExponentCode := normalNode7477

theorem canonicalSound6322 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6322.moment H = canonicalOutput6322.moment H :=
  canonical_of_padded canonicalInput6322 canonicalOutput6322 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput6323 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, -1, 4, -4]]⟩

def canonicalOutput6323 : ExponentCode := normalNode7477

theorem canonicalSound6323 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6323.moment H = canonicalOutput6323.moment H :=
  canonical_of_padded canonicalInput6323 canonicalOutput6323 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput6324 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, -1, 3, -3]]⟩

def canonicalOutput6324 : ExponentCode := normalNode9720

theorem canonicalSound6324 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6324.moment H = canonicalOutput6324.moment H :=
  canonical_of_padded canonicalInput6324 canonicalOutput6324 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput6325 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, 1, -1, 0], ![1, 0, 1, -2], ![1, -1, 2, -2]]⟩

def canonicalOutput6325 : ExponentCode := normalNode10836

theorem canonicalSound6325 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6325.moment H = canonicalOutput6325.moment H :=
  canonical_of_padded canonicalInput6325 canonicalOutput6325 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6326 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, 1, 0, -1], ![0, 0, 1, -1], ![1, -1, 2, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput6326 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2768⟩

theorem canonicalSound6326 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6326.moment H = canonicalOutput6326.moment H :=
  canonical_of_padded canonicalInput6326 canonicalOutput6326 (by decide) (by decide)
    ⟨false, true, canonicalPermutation38, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6327 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, 1, 0, -1], ![0, 0, 3, -3], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput6327 : ExponentCode := normalNode10630

theorem canonicalSound6327 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6327.moment H = canonicalOutput6327.moment H :=
  canonical_of_padded canonicalInput6327 canonicalOutput6327 (by decide) (by decide)
    ⟨false, true, canonicalPermutation38, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6328 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, 1, 0, -1], ![0, 1, -1, 0], ![1, -2, 3, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput6328 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1934⟩

theorem canonicalSound6328 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6328.moment H = canonicalOutput6328.moment H :=
  canonical_of_padded canonicalInput6328 canonicalOutput6328 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6329 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, 1, 0, -1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, -1, 3, -3]]⟩

def canonicalOutput6329 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1935⟩

theorem canonicalSound6329 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6329.moment H = canonicalOutput6329.moment H :=
  canonical_of_padded canonicalInput6329 canonicalOutput6329 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6330 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, 1, 0, -1], ![0, 1, -1, 0], ![1, -1, 1, -1], ![1, -1, 2, -2]]⟩

def canonicalOutput6330 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1936⟩

theorem canonicalSound6330 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6330.moment H = canonicalOutput6330.moment H :=
  canonical_of_padded canonicalInput6330 canonicalOutput6330 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6331 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, 1, 0, -1], ![0, 1, -1, 0], ![2, -2, 3, -3]]⟩

def canonicalOutput6331 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1051⟩

theorem canonicalSound6331 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6331.moment H = canonicalOutput6331.moment H :=
  canonical_of_padded canonicalInput6331 canonicalOutput6331 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput6332 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -2, 1, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput6332 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1462⟩

theorem canonicalSound6332 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6332.moment H = canonicalOutput6332.moment H :=
  canonical_of_padded canonicalInput6332 canonicalOutput6332 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput6333 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -2, 2, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput6333 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1459⟩

theorem canonicalSound6333 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6333.moment H = canonicalOutput6333.moment H :=
  canonical_of_padded canonicalInput6333 canonicalOutput6333 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput6334 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, 1, -1], ![1, -1, 1, -1]]⟩

def canonicalOutput6334 : ExponentCode := normalNode439

theorem canonicalSound6334 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6334.moment H = canonicalOutput6334.moment H :=
  canonical_of_padded canonicalInput6334 canonicalOutput6334 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput6335 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, 2, -2], ![1, -1, 0, 0]]⟩

def canonicalOutput6335 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1458⟩

theorem canonicalSound6335 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6335.moment H = canonicalOutput6335.moment H :=
  canonical_of_padded canonicalInput6335 canonicalOutput6335 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
