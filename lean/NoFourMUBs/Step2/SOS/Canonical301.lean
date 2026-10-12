import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes018
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes34
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes35
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput19264 : ExponentCode := ⟨5, 4, ![![-1, 0, -3, 4], ![0, -1, 0, 1], ![0, 1, 0, -1], ![1, -1, 1, -1], ![0, 1, 2, -3]]⟩

def canonicalOutput19264 : ExponentCode := normalNode9671

theorem canonicalSound19264 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19264.moment H = canonicalOutput19264.moment H :=
  canonical_of_padded canonicalInput19264 canonicalOutput19264 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19265 : ExponentCode := ⟨5, 4, ![![-1, 0, -3, 4], ![0, -1, 0, 1], ![0, 1, 0, -1], ![1, -1, 2, -2], ![0, 1, 1, -2]]⟩

def canonicalOutput19265 : ExponentCode := normalNode9670

theorem canonicalSound19265 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19265.moment H = canonicalOutput19265.moment H :=
  canonical_of_padded canonicalInput19265 canonicalOutput19265 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19266 : ExponentCode := ⟨5, 4, ![![-1, 0, -3, 4], ![0, -1, 0, 1], ![0, 1, 1, -2], ![0, 0, 0, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput19266 : ExponentCode := normalNode9674

theorem canonicalSound19266 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19266.moment H = canonicalOutput19266.moment H :=
  canonical_of_padded canonicalInput19266 canonicalOutput19266 (by decide) (by decide)
    ⟨false, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19267 : ExponentCode := ⟨5, 4, ![![-1, 0, -3, 4], ![0, -1, 0, 1], ![0, 1, 1, -2], ![1, -1, 0, 0], ![0, 1, 2, -3]]⟩

def canonicalOutput19267 : ExponentCode := normalNode9673

theorem canonicalSound19267 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19267.moment H = canonicalOutput19267.moment H :=
  canonical_of_padded canonicalInput19267 canonicalOutput19267 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19268 : ExponentCode := ⟨5, 4, ![![-1, 0, -3, 4], ![0, -1, 1, 0], ![-1, 2, -1, 0], ![1, -1, 3, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput19268 : ExponentCode := normalNode5401

theorem canonicalSound19268 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19268.moment H = canonicalOutput19268.moment H :=
  canonical_of_padded canonicalInput19268 canonicalOutput19268 (by decide) (by decide)
    ⟨false, true, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput19269 : ExponentCode := ⟨5, 4, ![![-1, 0, -3, 4], ![0, -1, 1, 0], ![-1, 2, 0, -1], ![1, -1, 0, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput19269 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2248⟩

theorem canonicalSound19269 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19269.moment H = canonicalOutput19269.moment H :=
  canonical_of_padded canonicalInput19269 canonicalOutput19269 (by decide) (by decide)
    ⟨false, true, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19270 : ExponentCode := ⟨5, 4, ![![-1, 0, -3, 4], ![0, -1, 1, 0], ![-1, 2, 2, -3], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput19270 : ExponentCode := normalNode4861

theorem canonicalSound19270 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19270.moment H = canonicalOutput19270.moment H :=
  canonical_of_padded canonicalInput19270 canonicalOutput19270 (by decide) (by decide)
    ⟨false, true, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19271 : ExponentCode := ⟨5, 4, ![![-1, 0, -3, 4], ![0, -1, 1, 0], ![0, 0, 0, 0], ![0, 1, 0, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput19271 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1167⟩

theorem canonicalSound19271 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19271.moment H = canonicalOutput19271.moment H :=
  canonical_of_padded canonicalInput19271 canonicalOutput19271 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19272 : ExponentCode := ⟨5, 4, ![![-1, 0, -3, 4], ![0, -1, 1, 0], ![0, 0, 0, 0], ![0, 1, 2, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput19272 : ExponentCode := normalNode9704

theorem canonicalSound19272 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19272.moment H = canonicalOutput19272.moment H :=
  canonical_of_padded canonicalInput19272 canonicalOutput19272 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19273 : ExponentCode := ⟨5, 4, ![![-1, 0, -3, 4], ![0, -1, 1, 0], ![0, 1, -1, 0], ![0, 0, 1, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput19273 : ExponentCode := normalNode9690

theorem canonicalSound19273 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19273.moment H = canonicalOutput19273.moment H :=
  canonical_of_padded canonicalInput19273 canonicalOutput19273 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19274 : ExponentCode := ⟨5, 4, ![![-1, 0, -3, 4], ![0, -1, 1, 0], ![0, 1, -1, 0], ![0, 0, 3, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput19274 : ExponentCode := normalNode9696

theorem canonicalSound19274 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19274.moment H = canonicalOutput19274.moment H :=
  canonical_of_padded canonicalInput19274 canonicalOutput19274 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19275 : ExponentCode := ⟨5, 4, ![![-1, 0, -3, 4], ![0, -1, 1, 0], ![0, 1, -1, 0], ![1, -1, 3, -3], ![0, 1, 0, -1]]⟩

def canonicalOutput19275 : ExponentCode := normalNode9698

theorem canonicalSound19275 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19275.moment H = canonicalOutput19275.moment H :=
  canonical_of_padded canonicalInput19275 canonicalOutput19275 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19276 : ExponentCode := ⟨5, 4, ![![-1, 0, -3, 4], ![0, -1, 1, 0], ![0, 1, 0, -1], ![0, 0, 0, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput19276 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1167⟩

theorem canonicalSound19276 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19276.moment H = canonicalOutput19276.moment H :=
  canonical_of_padded canonicalInput19276 canonicalOutput19276 (by decide) (by decide)
    ⟨false, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19277 : ExponentCode := ⟨5, 4, ![![-1, 0, -3, 4], ![0, -1, 1, 0], ![0, 1, 0, -1], ![0, 0, 1, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput19277 : ExponentCode := normalNode9692

theorem canonicalSound19277 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19277.moment H = canonicalOutput19277.moment H :=
  canonical_of_padded canonicalInput19277 canonicalOutput19277 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19278 : ExponentCode := ⟨5, 4, ![![-1, 0, -3, 4], ![0, -1, 1, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![0, 1, 2, -3]]⟩

def canonicalOutput19278 : ExponentCode := normalNode9703

theorem canonicalSound19278 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19278.moment H = canonicalOutput19278.moment H :=
  canonical_of_padded canonicalInput19278 canonicalOutput19278 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19279 : ExponentCode := ⟨5, 4, ![![-1, 0, -3, 4], ![0, -1, 1, 0], ![0, 1, 2, -3], ![0, 0, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput19279 : ExponentCode := normalNode9704

theorem canonicalSound19279 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19279.moment H = canonicalOutput19279.moment H :=
  canonical_of_padded canonicalInput19279 canonicalOutput19279 (by decide) (by decide)
    ⟨false, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19280 : ExponentCode := ⟨5, 4, ![![-1, 0, -3, 4], ![0, -1, 1, 0], ![0, 1, 2, -3], ![1, -1, 0, 0], ![0, 1, 0, -1]]⟩

def canonicalOutput19280 : ExponentCode := normalNode9703

theorem canonicalSound19280 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19280.moment H = canonicalOutput19280.moment H :=
  canonical_of_padded canonicalInput19280 canonicalOutput19280 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19281 : ExponentCode := ⟨4, 4, ![![-1, 0, -3, 4], ![0, -1, 1, 0], ![0, 2, 1, -3], ![1, -1, 1, -1]]⟩

def canonicalOutput19281 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node934⟩

theorem canonicalSound19281 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19281.moment H = canonicalOutput19281.moment H :=
  canonical_of_padded canonicalInput19281 canonicalOutput19281 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput19282 : ExponentCode := ⟨4, 4, ![![-1, 0, -3, 4], ![0, -1, 1, 0], ![0, 2, 2, -4], ![1, -1, 0, 0]]⟩

def canonicalOutput19282 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1069⟩

theorem canonicalSound19282 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19282.moment H = canonicalOutput19282.moment H :=
  canonical_of_padded canonicalInput19282 canonicalOutput19282 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation161, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput19283 : ExponentCode := ⟨5, 4, ![![-1, 0, -3, 4], ![0, -1, 3, -2], ![-1, 2, -1, 0], ![1, -1, 0, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput19283 : ExponentCode := normalNode5429

theorem canonicalSound19283 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19283.moment H = canonicalOutput19283.moment H :=
  canonical_of_padded canonicalInput19283 canonicalOutput19283 (by decide) (by decide)
    ⟨false, true, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput19284 : ExponentCode := ⟨5, 4, ![![-1, 0, -3, 4], ![0, -1, 3, -2], ![-1, 2, -1, 0], ![1, -1, 1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput19284 : ExponentCode := normalNode5400

theorem canonicalSound19284 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19284.moment H = canonicalOutput19284.moment H :=
  canonical_of_padded canonicalInput19284 canonicalOutput19284 (by decide) (by decide)
    ⟨false, true, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput19285 : ExponentCode := ⟨5, 4, ![![-1, 0, -3, 4], ![0, -1, 3, -2], ![-1, 2, 0, -1], ![1, -1, 1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput19285 : ExponentCode := normalNode5414

theorem canonicalSound19285 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19285.moment H = canonicalOutput19285.moment H :=
  canonical_of_padded canonicalInput19285 canonicalOutput19285 (by decide) (by decide)
    ⟨false, true, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19286 : ExponentCode := ⟨5, 4, ![![-1, 0, -3, 4], ![0, -1, 3, -2], ![0, 0, 0, 0], ![0, 1, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput19286 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node919⟩

theorem canonicalSound19286 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19286.moment H = canonicalOutput19286.moment H :=
  canonical_of_padded canonicalInput19286 canonicalOutput19286 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation22⟩ (by decide +kernel) hH

def canonicalInput19287 : ExponentCode := ⟨5, 4, ![![-1, 0, -3, 4], ![0, -1, 3, -2], ![0, 1, -1, 0], ![0, 0, 0, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput19287 : ExponentCode := normalNode9720

theorem canonicalSound19287 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19287.moment H = canonicalOutput19287.moment H :=
  canonical_of_padded canonicalInput19287 canonicalOutput19287 (by decide) (by decide)
    ⟨false, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19288 : ExponentCode := ⟨5, 4, ![![-1, 0, -3, 4], ![0, -1, 3, -2], ![0, 1, -1, 0], ![0, 0, 1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput19288 : ExponentCode := normalNode9715

theorem canonicalSound19288 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19288.moment H = canonicalOutput19288.moment H :=
  canonical_of_padded canonicalInput19288 canonicalOutput19288 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19289 : ExponentCode := ⟨5, 4, ![![-1, 0, -3, 4], ![0, -1, 3, -2], ![0, 1, -1, 0], ![1, -1, 0, 0], ![0, 1, 1, -2]]⟩

def canonicalOutput19289 : ExponentCode := normalNode9719

theorem canonicalSound19289 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19289.moment H = canonicalOutput19289.moment H :=
  canonical_of_padded canonicalInput19289 canonicalOutput19289 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19290 : ExponentCode := ⟨5, 4, ![![-1, 0, -3, 4], ![0, -1, 3, -2], ![0, 1, -1, 0], ![1, -1, 1, -1], ![0, 1, 0, -1]]⟩

def canonicalOutput19290 : ExponentCode := normalNode9718

theorem canonicalSound19290 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19290.moment H = canonicalOutput19290.moment H :=
  canonical_of_padded canonicalInput19290 canonicalOutput19290 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19291 : ExponentCode := ⟨5, 4, ![![-1, 0, -3, 4], ![0, -1, 3, -2], ![0, 1, 0, -1], ![0, 0, 1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput19291 : ExponentCode := normalNode9716

theorem canonicalSound19291 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19291.moment H = canonicalOutput19291.moment H :=
  canonical_of_padded canonicalInput19291 canonicalOutput19291 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19292 : ExponentCode := ⟨5, 4, ![![-1, 0, -3, 4], ![0, -1, 3, -2], ![0, 1, 0, -1], ![1, -1, 1, -1], ![0, 1, -1, 0]]⟩

def canonicalOutput19292 : ExponentCode := normalNode9718

theorem canonicalSound19292 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19292.moment H = canonicalOutput19292.moment H :=
  canonical_of_padded canonicalInput19292 canonicalOutput19292 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19293 : ExponentCode := ⟨3, 4, ![![-1, 0, -3, 4], ![0, -1, 4, -3], ![1, 1, -1, -1]]⟩

def canonicalOutput19293 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node249⟩

theorem canonicalSound19293 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19293.moment H = canonicalOutput19293.moment H :=
  canonical_of_padded canonicalInput19293 canonicalOutput19293 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput19294 : ExponentCode := ⟨4, 4, ![![-1, 0, -3, 4], ![0, 0, 0, 0], ![0, 1, 0, -1], ![1, -1, 3, -3]]⟩

def canonicalOutput19294 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node255⟩

theorem canonicalSound19294 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19294.moment H = canonicalOutput19294.moment H :=
  canonical_of_padded canonicalInput19294 canonicalOutput19294 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput19295 : ExponentCode := ⟨4, 4, ![![-1, 0, -3, 4], ![0, 0, 0, 0], ![0, 1, 1, -2], ![1, -1, 2, -2]]⟩

def canonicalOutput19295 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node149⟩

theorem canonicalSound19295 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19295.moment H = canonicalOutput19295.moment H :=
  canonical_of_padded canonicalInput19295 canonicalOutput19295 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput19296 : ExponentCode := ⟨4, 4, ![![-1, 0, -3, 4], ![0, 0, 0, 0], ![0, 1, 2, -3], ![1, -1, 1, -1]]⟩

def canonicalOutput19296 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node243⟩

theorem canonicalSound19296 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19296.moment H = canonicalOutput19296.moment H :=
  canonical_of_padded canonicalInput19296 canonicalOutput19296 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput19297 : ExponentCode := ⟨4, 4, ![![-1, 0, -3, 4], ![0, 0, 0, 0], ![0, 1, 3, -4], ![1, -1, 0, 0]]⟩

def canonicalOutput19297 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node290⟩

theorem canonicalSound19297 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19297.moment H = canonicalOutput19297.moment H :=
  canonical_of_padded canonicalInput19297 canonicalOutput19297 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput19298 : ExponentCode := ⟨3, 4, ![![-1, 0, -3, 4], ![0, 0, 0, 0], ![1, 0, 3, -4]]⟩

def canonicalOutput19298 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node8⟩

theorem canonicalSound19298 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19298.moment H = canonicalOutput19298.moment H :=
  canonical_of_padded canonicalInput19298 canonicalOutput19298 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput19299 : ExponentCode := ⟨5, 4, ![![-1, 0, -3, 4], ![0, 0, 1, -1], ![-1, 2, -1, 0], ![1, -1, 0, 0], ![1, -1, 3, -3]]⟩

def canonicalOutput19299 : ExponentCode := normalNode5526

theorem canonicalSound19299 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19299.moment H = canonicalOutput19299.moment H :=
  canonical_of_padded canonicalInput19299 canonicalOutput19299 (by decide) (by decide)
    ⟨false, true, canonicalPermutation50, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput19300 : ExponentCode := ⟨5, 4, ![![-1, 0, -3, 4], ![0, 0, 1, -1], ![-1, 2, 0, -1], ![1, -1, 0, 0], ![1, -1, 2, -2]]⟩

def canonicalOutput19300 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2286⟩

theorem canonicalSound19300 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19300.moment H = canonicalOutput19300.moment H :=
  canonical_of_padded canonicalInput19300 canonicalOutput19300 (by decide) (by decide)
    ⟨false, true, canonicalPermutation73, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19301 : ExponentCode := ⟨5, 4, ![![-1, 0, -3, 4], ![0, 0, 1, -1], ![-1, 2, 2, -3], ![1, -1, 0, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput19301 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2182⟩

theorem canonicalSound19301 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19301.moment H = canonicalOutput19301.moment H :=
  canonical_of_padded canonicalInput19301 canonicalOutput19301 (by decide) (by decide)
    ⟨false, true, canonicalPermutation50, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19302 : ExponentCode := ⟨5, 4, ![![-1, 0, -3, 4], ![0, 0, 1, -1], ![0, 0, 0, 0], ![0, 1, 0, -1], ![1, -1, 2, -2]]⟩

def canonicalOutput19302 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node909⟩

theorem canonicalSound19302 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19302.moment H = canonicalOutput19302.moment H :=
  canonical_of_padded canonicalInput19302 canonicalOutput19302 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput19303 : ExponentCode := ⟨5, 4, ![![-1, 0, -3, 4], ![0, 0, 1, -1], ![0, 0, 0, 0], ![0, 1, 2, -3], ![1, -1, 0, 0]]⟩

def canonicalOutput19303 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1167⟩

theorem canonicalSound19303 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19303.moment H = canonicalOutput19303.moment H :=
  canonical_of_padded canonicalInput19303 canonicalOutput19303 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput19304 : ExponentCode := ⟨4, 4, ![![-1, 0, -3, 4], ![0, 0, 1, -1], ![0, 0, 0, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput19304 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node51⟩

theorem canonicalSound19304 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19304.moment H = canonicalOutput19304.moment H :=
  canonical_of_padded canonicalInput19304 canonicalOutput19304 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19305 : ExponentCode := ⟨4, 4, ![![-1, 0, -3, 4], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput19305 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node253⟩

theorem canonicalSound19305 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19305.moment H = canonicalOutput19305.moment H :=
  canonical_of_padded canonicalInput19305 canonicalOutput19305 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19306 : ExponentCode := ⟨4, 4, ![![-1, 0, -3, 4], ![0, 0, 1, -1], ![0, 0, 3, -3], ![1, 0, -1, 0]]⟩

def canonicalOutput19306 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node255⟩

theorem canonicalSound19306 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19306.moment H = canonicalOutput19306.moment H :=
  canonical_of_padded canonicalInput19306 canonicalOutput19306 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19307 : ExponentCode := ⟨5, 4, ![![-1, 0, -3, 4], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 0, 0, 0], ![1, -1, 3, -3]]⟩

def canonicalOutput19307 : ExponentCode := normalNode9740

theorem canonicalSound19307 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19307.moment H = canonicalOutput19307.moment H :=
  canonical_of_padded canonicalInput19307 canonicalOutput19307 (by decide) (by decide)
    ⟨false, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19308 : ExponentCode := ⟨5, 4, ![![-1, 0, -3, 4], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 0, 1, -1], ![1, -1, 2, -2]]⟩

def canonicalOutput19308 : ExponentCode := normalNode9733

theorem canonicalSound19308 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19308.moment H = canonicalOutput19308.moment H :=
  canonical_of_padded canonicalInput19308 canonicalOutput19308 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19309 : ExponentCode := ⟨5, 4, ![![-1, 0, -3, 4], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 0, 3, -3], ![1, -1, 0, 0]]⟩

def canonicalOutput19309 : ExponentCode := normalNode9736

theorem canonicalSound19309 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19309.moment H = canonicalOutput19309.moment H :=
  canonical_of_padded canonicalInput19309 canonicalOutput19309 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19310 : ExponentCode := ⟨5, 4, ![![-1, 0, -3, 4], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![0, 0, 3, -3]]⟩

def canonicalOutput19310 : ExponentCode := normalNode9736

theorem canonicalSound19310 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19310.moment H = canonicalOutput19310.moment H :=
  canonical_of_padded canonicalInput19310 canonicalOutput19310 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19311 : ExponentCode := ⟨5, 4, ![![-1, 0, -3, 4], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 0, 0, 0], ![1, -1, 2, -2]]⟩

def canonicalOutput19311 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node909⟩

theorem canonicalSound19311 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19311.moment H = canonicalOutput19311.moment H :=
  canonical_of_padded canonicalInput19311 canonicalOutput19311 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation189⟩ (by decide +kernel) hH

def canonicalInput19312 : ExponentCode := ⟨5, 4, ![![-1, 0, -3, 4], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 0, 1, -1], ![1, -1, 1, -1]]⟩

def canonicalOutput19312 : ExponentCode := normalNode9734

theorem canonicalSound19312 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19312.moment H = canonicalOutput19312.moment H :=
  canonical_of_padded canonicalInput19312 canonicalOutput19312 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19313 : ExponentCode := ⟨5, 4, ![![-1, 0, -3, 4], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![0, 0, 2, -2]]⟩

def canonicalOutput19313 : ExponentCode := normalNode9735

theorem canonicalSound19313 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19313.moment H = canonicalOutput19313.moment H :=
  canonical_of_padded canonicalInput19313 canonicalOutput19313 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19314 : ExponentCode := ⟨4, 4, ![![-1, 0, -3, 4], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 2, -2]]⟩

def canonicalOutput19314 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node909⟩

theorem canonicalSound19314 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19314.moment H = canonicalOutput19314.moment H :=
  canonical_of_padded canonicalInput19314 canonicalOutput19314 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput19315 : ExponentCode := ⟨5, 4, ![![-1, 0, -3, 4], ![0, 0, 1, -1], ![0, 1, 2, -3], ![0, 0, 0, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput19315 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1167⟩

theorem canonicalSound19315 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19315.moment H = canonicalOutput19315.moment H :=
  canonical_of_padded canonicalInput19315 canonicalOutput19315 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation191⟩ (by decide +kernel) hH

def canonicalInput19316 : ExponentCode := ⟨5, 4, ![![-1, 0, -3, 4], ![0, 0, 1, -1], ![0, 1, 2, -3], ![1, -1, 0, 0], ![0, 0, 0, 0]]⟩

def canonicalOutput19316 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1167⟩

theorem canonicalSound19316 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19316.moment H = canonicalOutput19316.moment H :=
  canonical_of_padded canonicalInput19316 canonicalOutput19316 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, canonicalPermutation13⟩ (by decide +kernel) hH

def canonicalInput19317 : ExponentCode := ⟨4, 4, ![![-1, 0, -3, 4], ![0, 0, 2, -2], ![0, 0, 0, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput19317 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node52⟩

theorem canonicalSound19317 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19317.moment H = canonicalOutput19317.moment H :=
  canonical_of_padded canonicalInput19317 canonicalOutput19317 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19318 : ExponentCode := ⟨4, 4, ![![-1, 0, -3, 4], ![0, 0, 2, -2], ![0, 0, 1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput19318 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node254⟩

theorem canonicalSound19318 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19318.moment H = canonicalOutput19318.moment H :=
  canonical_of_padded canonicalInput19318 canonicalOutput19318 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19319 : ExponentCode := ⟨4, 4, ![![-1, 0, -3, 4], ![0, 0, 3, -3], ![0, 0, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput19319 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node53⟩

theorem canonicalSound19319 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19319.moment H = canonicalOutput19319.moment H :=
  canonical_of_padded canonicalInput19319 canonicalOutput19319 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19320 : ExponentCode := ⟨3, 4, ![![-1, 0, -3, 4], ![0, 0, 4, -4], ![1, 0, -1, 0]]⟩

def canonicalOutput19320 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node54⟩

theorem canonicalSound19320 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19320.moment H = canonicalOutput19320.moment H :=
  canonical_of_padded canonicalInput19320 canonicalOutput19320 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19321 : ExponentCode := ⟨5, 4, ![![-1, 0, -3, 4], ![0, 1, -1, 0], ![-1, 1, 1, -1], ![1, -1, 1, -1], ![1, -1, 2, -2]]⟩

def canonicalOutput19321 : ExponentCode := normalNode9630

theorem canonicalSound19321 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19321.moment H = canonicalOutput19321.moment H :=
  canonical_of_padded canonicalInput19321 canonicalOutput19321 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19322 : ExponentCode := ⟨4, 4, ![![-1, 0, -3, 4], ![0, 1, -1, 0], ![0, 0, 1, -1], ![1, -1, 3, -3]]⟩

def canonicalOutput19322 : ExponentCode := normalNode9740

theorem canonicalSound19322 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19322.moment H = canonicalOutput19322.moment H :=
  canonical_of_padded canonicalInput19322 canonicalOutput19322 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19323 : ExponentCode := ⟨4, 4, ![![-1, 0, -3, 4], ![0, 1, -1, 0], ![0, 0, 3, -3], ![1, -1, 1, -1]]⟩

def canonicalOutput19323 : ExponentCode := normalNode9748

theorem canonicalSound19323 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19323.moment H = canonicalOutput19323.moment H :=
  canonical_of_padded canonicalInput19323 canonicalOutput19323 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19324 : ExponentCode := ⟨4, 4, ![![-1, 0, -3, 4], ![0, 1, -1, 0], ![0, 0, 4, -4], ![1, -1, 0, 0]]⟩

def canonicalOutput19324 : ExponentCode := normalNode9751

theorem canonicalSound19324 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19324.moment H = canonicalOutput19324.moment H :=
  canonical_of_padded canonicalInput19324 canonicalOutput19324 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19325 : ExponentCode := ⟨5, 4, ![![-1, 0, -3, 4], ![0, 1, -1, 0], ![0, 1, 0, -1], ![0, -1, 2, -1], ![1, -1, 2, -2]]⟩

def canonicalOutput19325 : ExponentCode := normalNode9708

theorem canonicalSound19325 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19325.moment H = canonicalOutput19325.moment H :=
  canonical_of_padded canonicalInput19325 canonicalOutput19325 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19326 : ExponentCode := ⟨4, 4, ![![-1, 0, -3, 4], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -2, 4, -3]]⟩

def canonicalOutput19326 : ExponentCode := normalNode9092

theorem canonicalSound19326 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19326.moment H = canonicalOutput19326.moment H :=
  canonical_of_padded canonicalInput19326 canonicalOutput19326 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput19327 : ExponentCode := ⟨5, 4, ![![-1, 0, -3, 4], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 1, -1], ![0, -1, 3, -2]]⟩

def canonicalOutput19327 : ExponentCode := normalNode9718

theorem canonicalSound19327 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19327.moment H = canonicalOutput19327.moment H :=
  canonical_of_padded canonicalInput19327 canonicalOutput19327 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
