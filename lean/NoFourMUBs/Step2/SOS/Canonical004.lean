import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes00
import NoFourMUBs.Step2.SOS.MomentCodes01
import NoFourMUBs.Step2.SOS.MomentCodes06
import NoFourMUBs.Step2.SOS.MomentCodes07
import NoFourMUBs.Step2.SOS.MomentCodes08
import NoFourMUBs.Step2.SOS.MomentCodes10
import NoFourMUBs.Step2.SOS.MomentCodes20
import NoFourMUBs.Step2.SOS.NormalizationNodes000
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes35
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes37
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes39
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes42
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes44
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput256 : ExponentCode := ⟨5, 4, ![![-3, -1, 1, 3], ![0, 0, 0, 0], ![0, 1, -1, 0], ![0, 1, -1, 0], ![3, -1, 1, -3]]⟩

def canonicalOutput256 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1101⟩

theorem canonicalSound256 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput256.moment H = canonicalOutput256.moment H :=
  canonical_of_padded canonicalInput256 canonicalOutput256 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation171⟩ (by decide +kernel) hH

def canonicalInput257 : ExponentCode := ⟨5, 4, ![![-3, -1, 1, 3], ![0, 0, 0, 0], ![0, 1, -1, 0], ![1, -1, 1, -1], ![2, 1, -1, -2]]⟩

def canonicalOutput257 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1339⟩

theorem canonicalSound257 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput257.moment H = canonicalOutput257.moment H :=
  canonical_of_padded canonicalInput257 canonicalOutput257 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput258 : ExponentCode := ⟨5, 4, ![![-3, -1, 1, 3], ![0, 0, 0, 0], ![0, 1, -1, 0], ![1, 1, -1, -1], ![2, -1, 1, -2]]⟩

def canonicalOutput258 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1092⟩

theorem canonicalSound258 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput258.moment H = canonicalOutput258.moment H :=
  canonical_of_padded canonicalInput258 canonicalOutput258 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput259 : ExponentCode := ⟨5, 4, ![![-3, -1, 1, 3], ![0, 0, 0, 0], ![1, -1, 1, -1], ![1, 1, -1, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput259 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node924⟩

theorem canonicalSound259 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput259.moment H = canonicalOutput259.moment H :=
  canonical_of_padded canonicalInput259 canonicalOutput259 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation29⟩ (by decide +kernel) hH

def canonicalInput260 : ExponentCode := ⟨5, 4, ![![-3, -1, 1, 3], ![0, 0, 1, -1], ![0, 0, 0, 0], ![0, 2, -1, -1], ![3, -1, -1, -1]]⟩

def canonicalOutput260 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node980⟩

theorem canonicalSound260 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput260.moment H = canonicalOutput260.moment H :=
  canonical_of_padded canonicalInput260 canonicalOutput260 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput261 : ExponentCode := ⟨5, 4, ![![-3, -1, 1, 3], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![3, -1, -1, -1]]⟩

def canonicalOutput261 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2525⟩

theorem canonicalSound261 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput261.moment H = canonicalOutput261.moment H :=
  canonical_of_padded canonicalInput261 canonicalOutput261 (by decide) (by decide)
    ⟨false, false, canonicalPermutation30, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput262 : ExponentCode := ⟨5, 4, ![![-3, -1, 1, 3], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 2, -1, -1], ![3, -2, 0, -1]]⟩

def canonicalOutput262 : ExponentCode := normalNode6048

theorem canonicalSound262 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput262.moment H = canonicalOutput262.moment H :=
  canonical_of_padded canonicalInput262 canonicalOutput262 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation155, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput263 : ExponentCode := ⟨5, 4, ![![-3, -1, 1, 3], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, 1, -1, -1], ![2, -1, 0, -1]]⟩

def canonicalOutput263 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2714⟩

theorem canonicalSound263 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput263.moment H = canonicalOutput263.moment H :=
  canonical_of_padded canonicalInput263 canonicalOutput263 (by decide) (by decide)
    ⟨false, false, canonicalPermutation31, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput264 : ExponentCode := ⟨5, 4, ![![-3, -1, 1, 3], ![0, 0, 1, -1], ![0, 2, -2, 0], ![1, 0, 0, -1], ![2, -1, 0, -1]]⟩

def canonicalOutput264 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2369⟩

theorem canonicalSound264 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput264.moment H = canonicalOutput264.moment H :=
  canonical_of_padded canonicalInput264 canonicalOutput264 (by decide) (by decide)
    ⟨false, false, canonicalPermutation26, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput265 : ExponentCode := ⟨5, 4, ![![-3, -1, 1, 3], ![0, 0, 1, -1], ![0, 2, -1, -1], ![1, 0, -1, 0], ![2, -1, 0, -1]]⟩

def canonicalOutput265 : ExponentCode := normalNode5360

theorem canonicalSound265 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput265.moment H = canonicalOutput265.moment H :=
  canonical_of_padded canonicalInput265 canonicalOutput265 (by decide) (by decide)
    ⟨false, true, canonicalPermutation32, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput266 : ExponentCode := ⟨4, 4, ![![-3, -1, 1, 3], ![0, 0, 1, -1], ![0, 2, -1, -1], ![3, -1, -1, -1]]⟩

def canonicalOutput266 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node980⟩

theorem canonicalSound266 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput266.moment H = canonicalOutput266.moment H :=
  canonical_of_padded canonicalInput266 canonicalOutput266 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput267 : ExponentCode := ⟨4, 4, ![![-3, -1, 1, 3], ![0, 0, 1, -1], ![1, 2, -2, -1], ![2, -1, 0, -1]]⟩

def canonicalOutput267 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node947⟩

theorem canonicalSound267 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput267.moment H = canonicalOutput267.moment H :=
  canonical_of_padded canonicalInput267 canonicalOutput267 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput268 : ExponentCode := ⟨5, 4, ![![-3, -1, 1, 3], ![0, 1, -1, 0], ![0, 0, 0, 0], ![0, 1, -1, 0], ![3, -1, 1, -3]]⟩

def canonicalOutput268 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1101⟩

theorem canonicalSound268 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput268.moment H = canonicalOutput268.moment H :=
  canonical_of_padded canonicalInput268 canonicalOutput268 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, canonicalPermutation32⟩ (by decide +kernel) hH

def canonicalInput269 : ExponentCode := ⟨5, 4, ![![-3, -1, 1, 3], ![0, 1, -1, 0], ![0, 0, 0, 0], ![1, -1, 1, -1], ![2, 1, -1, -2]]⟩

def canonicalOutput269 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1339⟩

theorem canonicalSound269 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput269.moment H = canonicalOutput269.moment H :=
  canonical_of_padded canonicalInput269 canonicalOutput269 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput270 : ExponentCode := ⟨5, 4, ![![-3, -1, 1, 3], ![0, 1, -1, 0], ![0, 0, 0, 0], ![1, 1, -1, -1], ![2, -1, 1, -2]]⟩

def canonicalOutput270 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1092⟩

theorem canonicalSound270 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput270.moment H = canonicalOutput270.moment H :=
  canonical_of_padded canonicalInput270 canonicalOutput270 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput271 : ExponentCode := ⟨5, 4, ![![-3, -1, 1, 3], ![0, 1, -1, 0], ![0, 1, -1, 0], ![0, 0, 0, 0], ![3, -1, 1, -3]]⟩

def canonicalOutput271 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1101⟩

theorem canonicalSound271 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput271.moment H = canonicalOutput271.moment H :=
  canonical_of_padded canonicalInput271 canonicalOutput271 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation188⟩ (by decide +kernel) hH

def canonicalInput272 : ExponentCode := ⟨5, 4, ![![-3, -1, 1, 3], ![0, 1, -1, 0], ![0, 1, -1, 0], ![0, 1, -1, 0], ![3, -2, 2, -3]]⟩

def canonicalOutput272 : ExponentCode := normalNode37

theorem canonicalSound272 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput272.moment H = canonicalOutput272.moment H :=
  canonical_of_padded canonicalInput272 canonicalOutput272 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation199, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput273 : ExponentCode := ⟨5, 4, ![![-3, -1, 1, 3], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, -1, 1, -1], ![2, 0, 0, -2]]⟩

def canonicalOutput273 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2834⟩

theorem canonicalSound273 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput273.moment H = canonicalOutput273.moment H :=
  canonical_of_padded canonicalInput273 canonicalOutput273 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput274 : ExponentCode := ⟨5, 4, ![![-3, -1, 1, 3], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, 0, 0, -1], ![2, -1, 1, -2]]⟩

def canonicalOutput274 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2835⟩

theorem canonicalSound274 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput274.moment H = canonicalOutput274.moment H :=
  canonical_of_padded canonicalInput274 canonicalOutput274 (by decide) (by decide)
    ⟨false, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput275 : ExponentCode := ⟨4, 4, ![![-3, -1, 1, 3], ![0, 1, -1, 0], ![0, 1, -1, 0], ![3, -1, 1, -3]]⟩

def canonicalOutput275 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1101⟩

theorem canonicalSound275 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput275.moment H = canonicalOutput275.moment H :=
  canonical_of_padded canonicalInput275 canonicalOutput275 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput276 : ExponentCode := ⟨4, 4, ![![-3, -1, 1, 3], ![0, 1, -1, 0], ![1, -2, 2, -1], ![2, 2, -2, -2]]⟩

def canonicalOutput276 : ExponentCode := normalNode11205

theorem canonicalSound276 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput276.moment H = canonicalOutput276.moment H :=
  canonical_of_padded canonicalInput276 canonicalOutput276 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput277 : ExponentCode := ⟨5, 4, ![![-3, -1, 1, 3], ![0, 1, -1, 0], ![1, -1, 1, -1], ![1, 0, 0, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput277 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2833⟩

theorem canonicalSound277 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput277.moment H = canonicalOutput277.moment H :=
  canonical_of_padded canonicalInput277 canonicalOutput277 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput278 : ExponentCode := ⟨5, 4, ![![-3, -1, 1, 3], ![0, 1, -1, 0], ![1, -1, 1, -1], ![1, 1, -1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput278 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2833⟩

theorem canonicalSound278 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput278.moment H = canonicalOutput278.moment H :=
  canonical_of_padded canonicalInput278 canonicalOutput278 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput279 : ExponentCode := ⟨4, 4, ![![-3, -1, 1, 3], ![0, 1, -1, 0], ![1, -1, 1, -1], ![2, 1, -1, -2]]⟩

def canonicalOutput279 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1339⟩

theorem canonicalSound279 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput279.moment H = canonicalOutput279.moment H :=
  canonical_of_padded canonicalInput279 canonicalOutput279 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput280 : ExponentCode := ⟨5, 4, ![![-3, -1, 1, 3], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, -1, 1, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput280 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2833⟩

theorem canonicalSound280 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput280.moment H = canonicalOutput280.moment H :=
  canonical_of_padded canonicalInput280 canonicalOutput280 (by decide) (by decide)
    ⟨false, false, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput281 : ExponentCode := ⟨4, 4, ![![-3, -1, 1, 3], ![0, 1, -1, 0], ![1, 1, -1, -1], ![2, -1, 1, -2]]⟩

def canonicalOutput281 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1092⟩

theorem canonicalSound281 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput281.moment H = canonicalOutput281.moment H :=
  canonical_of_padded canonicalInput281 canonicalOutput281 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput282 : ExponentCode := ⟨4, 4, ![![-3, -1, 1, 3], ![0, 1, -1, 0], ![1, 2, -2, -1], ![2, -2, 2, -2]]⟩

def canonicalOutput282 : ExponentCode := normalNode6954

theorem canonicalSound282 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput282.moment H = canonicalOutput282.moment H :=
  canonical_of_padded canonicalInput282 canonicalOutput282 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput283 : ExponentCode := ⟨5, 4, ![![-3, -1, 1, 3], ![0, 1, 0, -1], ![1, -1, 1, -1], ![1, 0, 0, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput283 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2285⟩

theorem canonicalSound283 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput283.moment H = canonicalOutput283.moment H :=
  canonical_of_padded canonicalInput283 canonicalOutput283 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation201, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput284 : ExponentCode := ⟨5, 4, ![![-3, -1, 1, 3], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, -1, 1, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput284 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2285⟩

theorem canonicalSound284 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput284.moment H = canonicalOutput284.moment H :=
  canonical_of_padded canonicalInput284 canonicalOutput284 (by decide) (by decide)
    ⟨false, false, canonicalPermutation33, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput285 : ExponentCode := ⟨5, 4, ![![-3, -1, 1, 3], ![0, 2, -2, 0], ![1, -2, 2, -1], ![1, 1, -1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput285 : ExponentCode := normalNode98

theorem canonicalSound285 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput285.moment H = canonicalOutput285.moment H :=
  canonical_of_padded canonicalInput285 canonicalOutput285 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput286 : ExponentCode := ⟨4, 4, ![![-3, -1, 1, 3], ![0, 2, -2, 0], ![1, -2, 2, -1], ![2, 1, -1, -2]]⟩

def canonicalOutput286 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code656

theorem canonicalSound286 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput286.moment H = canonicalOutput286.moment H :=
  canonical_of_padded canonicalInput286 canonicalOutput286 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput287 : ExponentCode := ⟨5, 4, ![![-3, -1, 1, 3], ![0, 2, -2, 0], ![1, -1, 1, -1], ![1, 0, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput287 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2373⟩

theorem canonicalSound287 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput287.moment H = canonicalOutput287.moment H :=
  canonical_of_padded canonicalInput287 canonicalOutput287 (by decide) (by decide)
    ⟨false, false, canonicalPermutation29, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput288 : ExponentCode := ⟨4, 4, ![![-3, -1, 1, 3], ![0, 2, -2, 0], ![1, 0, 0, -1], ![2, -1, 1, -2]]⟩

def canonicalOutput288 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1188⟩

theorem canonicalSound288 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput288.moment H = canonicalOutput288.moment H :=
  canonical_of_padded canonicalInput288 canonicalOutput288 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput289 : ExponentCode := ⟨4, 4, ![![-3, -1, 1, 3], ![0, 2, -2, 0], ![1, 0, 1, -2], ![2, -1, 0, -1]]⟩

def canonicalOutput289 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node475⟩

theorem canonicalSound289 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput289.moment H = canonicalOutput289.moment H :=
  canonical_of_padded canonicalInput289 canonicalOutput289 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput290 : ExponentCode := ⟨4, 4, ![![-3, -1, 1, 3], ![0, 2, -2, 0], ![1, 1, -1, -1], ![2, -2, 2, -2]]⟩

def canonicalOutput290 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code566

theorem canonicalSound290 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput290.moment H = canonicalOutput290.moment H :=
  canonical_of_padded canonicalInput290 canonicalOutput290 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput291 : ExponentCode := ⟨4, 4, ![![-3, -1, 1, 3], ![0, 2, -2, 0], ![2, -2, 2, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput291 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code566

theorem canonicalSound291 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput291.moment H = canonicalOutput291.moment H :=
  canonical_of_padded canonicalInput291 canonicalOutput291 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput292 : ExponentCode := ⟨4, 4, ![![-3, -1, 1, 3], ![0, 2, -1, -1], ![1, -1, 1, -1], ![2, 0, -1, -1]]⟩

def canonicalOutput292 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node487⟩

theorem canonicalSound292 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput292.moment H = canonicalOutput292.moment H :=
  canonical_of_padded canonicalInput292 canonicalOutput292 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation151, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput293 : ExponentCode := ⟨3, 4, ![![-3, -1, 1, 3], ![0, 2, 1, -3], ![3, -1, -2, 0]]⟩

def canonicalOutput293 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node98⟩

theorem canonicalSound293 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput293.moment H = canonicalOutput293.moment H :=
  canonical_of_padded canonicalInput293 canonicalOutput293 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput294 : ExponentCode := ⟨4, 4, ![![-3, -1, 1, 3], ![0, 3, -3, 0], ![1, -2, 2, -1], ![2, 0, 0, -2]]⟩

def canonicalOutput294 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code396

theorem canonicalSound294 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput294.moment H = canonicalOutput294.moment H :=
  canonical_of_padded canonicalInput294 canonicalOutput294 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput295 : ExponentCode := ⟨4, 4, ![![-3, -1, 1, 3], ![0, 3, -3, 0], ![2, -2, 2, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput295 : ExponentCode := normalNode9840

theorem canonicalSound295 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput295.moment H = canonicalOutput295.moment H :=
  canonical_of_padded canonicalInput295 canonicalOutput295 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput296 : ExponentCode := ⟨3, 4, ![![-3, -1, 1, 3], ![0, 3, -3, 0], ![3, -2, 2, -3]]⟩

def canonicalOutput296 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code69

theorem canonicalSound296 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput296.moment H = canonicalOutput296.moment H :=
  canonical_of_padded canonicalInput296 canonicalOutput296 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput297 : ExponentCode := ⟨4, 4, ![![-3, -1, 1, 3], ![0, 3, -2, -1], ![1, -2, 2, -1], ![2, 0, -1, -1]]⟩

def canonicalOutput297 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code500

theorem canonicalSound297 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput297.moment H = canonicalOutput297.moment H :=
  canonical_of_padded canonicalInput297 canonicalOutput297 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation151, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput298 : ExponentCode := ⟨4, 4, ![![-3, -1, 1, 3], ![0, 3, -2, -1], ![1, -1, 1, -1], ![2, -1, 0, -1]]⟩

def canonicalOutput298 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code432

theorem canonicalSound298 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput298.moment H = canonicalOutput298.moment H :=
  canonical_of_padded canonicalInput298 canonicalOutput298 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation153, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput299 : ExponentCode := ⟨3, 4, ![![-3, -1, 1, 3], ![0, 3, -2, -1], ![3, -2, 1, -2]]⟩

def canonicalOutput299 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code84

theorem canonicalSound299 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput299.moment H = canonicalOutput299.moment H :=
  canonical_of_padded canonicalInput299 canonicalOutput299 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput300 : ExponentCode := ⟨3, 4, ![![-3, -1, 1, 3], ![0, 4, -2, -2], ![3, -3, 1, -1]]⟩

def canonicalOutput300 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code8

theorem canonicalSound300 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput300.moment H = canonicalOutput300.moment H :=
  canonical_of_padded canonicalInput300 canonicalOutput300 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput301 : ExponentCode := ⟨4, 4, ![![-3, -1, 1, 3], ![1, -2, 2, -1], ![0, 3, -2, -1], ![2, 0, -1, -1]]⟩

def canonicalOutput301 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code500

theorem canonicalSound301 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput301.moment H = canonicalOutput301.moment H :=
  canonical_of_padded canonicalInput301 canonicalOutput301 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation151, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput302 : ExponentCode := ⟨4, 4, ![![-3, -1, 1, 3], ![1, -2, 2, -1], ![1, 1, -1, -1], ![1, 2, -2, -1]]⟩

def canonicalOutput302 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1318

theorem canonicalSound302 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput302.moment H = canonicalOutput302.moment H :=
  canonical_of_padded canonicalInput302 canonicalOutput302 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput303 : ExponentCode := ⟨4, 4, ![![-3, -1, 1, 3], ![1, -2, 2, -1], ![1, 2, -2, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput303 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1318

theorem canonicalSound303 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput303.moment H = canonicalOutput303.moment H :=
  canonical_of_padded canonicalInput303 canonicalOutput303 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput304 : ExponentCode := ⟨3, 4, ![![-3, -1, 1, 3], ![1, -2, 2, -1], ![2, 3, -3, -2]]⟩

def canonicalOutput304 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code684

theorem canonicalSound304 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput304.moment H = canonicalOutput304.moment H :=
  canonical_of_padded canonicalInput304 canonicalOutput304 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput305 : ExponentCode := ⟨4, 4, ![![-3, -1, 1, 3], ![1, -1, 1, -1], ![0, 3, -2, -1], ![2, -1, 0, -1]]⟩

def canonicalOutput305 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code432

theorem canonicalSound305 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput305.moment H = canonicalOutput305.moment H :=
  canonical_of_padded canonicalInput305 canonicalOutput305 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation153, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput306 : ExponentCode := ⟨4, 4, ![![-3, -1, 1, 3], ![1, -1, 1, -1], ![1, -1, 1, -1], ![1, 3, -3, -1]]⟩

def canonicalOutput306 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1340

theorem canonicalSound306 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput306.moment H = canonicalOutput306.moment H :=
  canonical_of_padded canonicalInput306 canonicalOutput306 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput307 : ExponentCode := ⟨4, 4, ![![-3, -1, 1, 3], ![1, -1, 1, -1], ![1, 0, 0, -1], ![1, 2, -2, -1]]⟩

def canonicalOutput307 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node941⟩

theorem canonicalSound307 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput307.moment H = canonicalOutput307.moment H :=
  canonical_of_padded canonicalInput307 canonicalOutput307 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput308 : ExponentCode := ⟨4, 4, ![![-3, -1, 1, 3], ![1, -1, 1, -1], ![1, 0, 1, -2], ![1, 2, -3, 0]]⟩

def canonicalOutput308 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code432

theorem canonicalSound308 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput308.moment H = canonicalOutput308.moment H :=
  canonical_of_padded canonicalInput308 canonicalOutput308 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput309 : ExponentCode := ⟨4, 4, ![![-3, -1, 1, 3], ![1, -1, 1, -1], ![1, 1, -1, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput309 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node924⟩

theorem canonicalSound309 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput309.moment H = canonicalOutput309.moment H :=
  canonical_of_padded canonicalInput309 canonicalOutput309 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput310 : ExponentCode := ⟨4, 4, ![![-3, -1, 1, 3], ![1, -1, 2, -2], ![0, 3, -3, 0], ![2, -1, 0, -1]]⟩

def canonicalOutput310 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code403

theorem canonicalSound310 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput310.moment H = canonicalOutput310.moment H :=
  canonical_of_padded canonicalInput310 canonicalOutput310 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation153, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput311 : ExponentCode := ⟨3, 4, ![![-3, -1, 1, 3], ![1, -1, 2, -2], ![2, 2, -3, -1]]⟩

def canonicalOutput311 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node160⟩

theorem canonicalSound311 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput311.moment H = canonicalOutput311.moment H :=
  canonical_of_padded canonicalInput311 canonicalOutput311 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput312 : ExponentCode := ⟨4, 4, ![![-3, -1, 1, 3], ![1, 0, 0, -1], ![1, -1, 1, -1], ![1, 2, -2, -1]]⟩

def canonicalOutput312 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node941⟩

theorem canonicalSound312 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput312.moment H = canonicalOutput312.moment H :=
  canonical_of_padded canonicalInput312 canonicalOutput312 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput313 : ExponentCode := ⟨4, 4, ![![-3, -1, 1, 3], ![1, 0, 1, -2], ![1, -1, 1, -1], ![1, 2, -3, 0]]⟩

def canonicalOutput313 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code432

theorem canonicalSound313 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput313.moment H = canonicalOutput313.moment H :=
  canonical_of_padded canonicalInput313 canonicalOutput313 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput314 : ExponentCode := ⟨4, 4, ![![-3, -1, 1, 3], ![1, 2, -2, -1], ![1, -2, 2, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput314 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1318

theorem canonicalSound314 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput314.moment H = canonicalOutput314.moment H :=
  canonical_of_padded canonicalInput314 canonicalOutput314 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput315 : ExponentCode := ⟨4, 4, ![![-3, -1, 1, 3], ![1, 3, -3, -1], ![1, -2, 2, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput315 : ExponentCode := normalNode7837

theorem canonicalSound315 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput315.moment H = canonicalOutput315.moment H :=
  canonical_of_padded canonicalInput315 canonicalOutput315 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput316 : ExponentCode := ⟨3, 4, ![![-3, -1, 1, 3], ![1, 3, -3, -1], ![2, -2, 2, -2]]⟩

def canonicalOutput316 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code68

theorem canonicalSound316 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput316.moment H = canonicalOutput316.moment H :=
  canonical_of_padded canonicalInput316 canonicalOutput316 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput317 : ExponentCode := ⟨3, 4, ![![-3, -1, 2, 2], ![-2, 2, -1, 1], ![5, -1, -1, -3]]⟩

def canonicalOutput317 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code100

theorem canonicalSound317 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput317.moment H = canonicalOutput317.moment H :=
  canonical_of_padded canonicalInput317 canonicalOutput317 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput318 : ExponentCode := ⟨3, 4, ![![-3, -1, 2, 2], ![-2, 2, 1, -1], ![5, -1, -3, -1]]⟩

def canonicalOutput318 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code100

theorem canonicalSound318 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput318.moment H = canonicalOutput318.moment H :=
  canonical_of_padded canonicalInput318 canonicalOutput318 (by decide) (by decide)
    ⟨true, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput319 : ExponentCode := ⟨3, 4, ![![-3, -1, 2, 2], ![-2, 3, 0, -1], ![5, -2, -2, -1]]⟩

def canonicalOutput319 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code75

theorem canonicalSound319 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput319.moment H = canonicalOutput319.moment H :=
  canonical_of_padded canonicalInput319 canonicalOutput319 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
