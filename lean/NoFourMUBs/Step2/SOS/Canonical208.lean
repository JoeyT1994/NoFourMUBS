import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes07
import NoFourMUBs.Step2.SOS.MomentCodes08
import NoFourMUBs.Step2.SOS.MomentCodes13
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.MomentCodes15
import NoFourMUBs.Step2.SOS.MomentCodes20
import NoFourMUBs.Step2.SOS.MomentCodes21
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes018
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes35
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes40
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes41
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput13312 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 2, 1], ![0, 0, -2, 0, 2], ![0, 1, 1, -2, 0], ![1, 1, 1, 0, -3]]⟩

def canonicalOutput13312 : ExponentCode := normalNode3509

theorem canonicalSound13312 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13312.moment H = canonicalOutput13312.moment H :=
  canonical_of_padded canonicalInput13312 canonicalOutput13312 (by decide) (by decide)
    ⟨true, true, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput13313 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 2, 1], ![0, 0, -2, 0, 2], ![0, 1, 1, -1, -1], ![1, 1, 1, -1, -2]]⟩

def canonicalOutput13313 : ExponentCode := normalNode5128

theorem canonicalSound13313 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13313.moment H = canonicalOutput13313.moment H :=
  canonical_of_padded canonicalInput13313 canonicalOutput13313 (by decide) (by decide)
    ⟨true, true, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput13314 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 2, 1], ![0, 0, -2, 0, 2], ![0, 1, 1, 0, -2], ![1, 1, 1, -2, -1]]⟩

def canonicalOutput13314 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2281⟩

theorem canonicalSound13314 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13314.moment H = canonicalOutput13314.moment H :=
  canonical_of_padded canonicalInput13314 canonicalOutput13314 (by decide) (by decide)
    ⟨true, false, canonicalPermutation42, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput13315 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 2, 1], ![0, 0, -2, 0, 2], ![0, 1, 2, -2, -1], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput13315 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2036⟩

theorem canonicalSound13315 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13315.moment H = canonicalOutput13315.moment H :=
  canonical_of_padded canonicalInput13315 canonicalOutput13315 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation179, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput13316 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 2, 1], ![0, 0, -2, 0, 2], ![0, 1, 2, -1, -2], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput13316 : ExponentCode := normalNode3988

theorem canonicalSound13316 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13316.moment H = canonicalOutput13316.moment H :=
  canonical_of_padded canonicalInput13316 canonicalOutput13316 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation179, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput13317 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 2, 1], ![0, 0, -2, 0, 2], ![0, 2, 0, -1, -1], ![1, 0, 2, -1, -2]]⟩

def canonicalOutput13317 : ExponentCode := normalNode3974

theorem canonicalSound13317 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13317.moment H = canonicalOutput13317.moment H :=
  canonical_of_padded canonicalInput13317 canonicalOutput13317 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation178, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput13318 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 2, 1], ![0, 0, -2, 0, 2], ![0, 2, 1, -2, -1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput13318 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2273⟩

theorem canonicalSound13318 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13318.moment H = canonicalOutput13318.moment H :=
  canonical_of_padded canonicalInput13318 canonicalOutput13318 (by decide) (by decide)
    ⟨true, false, canonicalPermutation32, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput13319 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 2, 1], ![0, 0, -2, 0, 2], ![0, 2, 1, -1, -2], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput13319 : ExponentCode := normalNode5103

theorem canonicalSound13319 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13319.moment H = canonicalOutput13319.moment H :=
  canonical_of_padded canonicalInput13319 canonicalOutput13319 (by decide) (by decide)
    ⟨true, true, canonicalPermutation31, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput13320 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 2, 1], ![0, 0, -2, 0, 2], ![1, 1, 1, -2, -1], ![0, 1, 1, 0, -2]]⟩

def canonicalOutput13320 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2281⟩

theorem canonicalSound13320 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13320.moment H = canonicalOutput13320.moment H :=
  canonical_of_padded canonicalInput13320 canonicalOutput13320 (by decide) (by decide)
    ⟨true, false, canonicalPermutation42, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput13321 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 2, 1], ![0, 0, -2, 0, 2], ![1, 1, 1, -1, -2], ![0, 1, 1, -1, -1]]⟩

def canonicalOutput13321 : ExponentCode := normalNode5128

theorem canonicalSound13321 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13321.moment H = canonicalOutput13321.moment H :=
  canonical_of_padded canonicalInput13321 canonicalOutput13321 (by decide) (by decide)
    ⟨true, true, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput13322 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 2, 1], ![0, 0, -1, -1, 2], ![0, 1, 1, -1, -1], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput13322 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1834⟩

theorem canonicalSound13322 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13322.moment H = canonicalOutput13322.moment H :=
  canonical_of_padded canonicalInput13322 canonicalOutput13322 (by decide) (by decide)
    ⟨true, false, canonicalPermutation46, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput13323 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 2, 1], ![0, 0, -1, -1, 2], ![0, 1, 1, 0, -2], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput13323 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1836⟩

theorem canonicalSound13323 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13323.moment H = canonicalOutput13323.moment H :=
  canonical_of_padded canonicalInput13323 canonicalOutput13323 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput13324 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 2, 1], ![0, 0, -1, -1, 2], ![0, 2, 0, 0, -2], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput13324 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1833⟩

theorem canonicalSound13324 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13324.moment H = canonicalOutput13324.moment H :=
  canonical_of_padded canonicalInput13324 canonicalOutput13324 (by decide) (by decide)
    ⟨true, false, canonicalPermutation46, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput13325 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 2, 1], ![0, 0, -1, 0, 1], ![0, 1, 1, -1, -1], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput13325 : ExponentCode := normalNode10835

theorem canonicalSound13325 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13325.moment H = canonicalOutput13325.moment H :=
  canonical_of_padded canonicalInput13325 canonicalOutput13325 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation178, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput13326 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 2, 1], ![0, 0, -1, 0, 1], ![0, 2, 0, -1, -1], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput13326 : ExponentCode := normalNode10834

theorem canonicalSound13326 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13326.moment H = canonicalOutput13326.moment H :=
  canonical_of_padded canonicalInput13326 canonicalOutput13326 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation178, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput13327 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 2, 1], ![0, 0, 1, -2, 1], ![0, 1, -2, 0, 1], ![1, 1, 1, 0, -3]]⟩

def canonicalOutput13327 : ExponentCode := normalNode4091

theorem canonicalSound13327 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13327.moment H = canonicalOutput13327.moment H :=
  canonical_of_padded canonicalInput13327 canonicalOutput13327 (by decide) (by decide)
    ⟨true, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput13328 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 2, 1], ![0, 0, 1, -2, 1], ![0, 1, 1, 0, -2], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput13328 : ExponentCode := normalNode4090

theorem canonicalSound13328 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13328.moment H = canonicalOutput13328.moment H :=
  canonical_of_padded canonicalInput13328 canonicalOutput13328 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation182, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput13329 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 2, 1], ![0, 0, 1, -2, 1], ![0, 2, -2, 0, 0], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput13329 : ExponentCode := normalNode3888

theorem canonicalSound13329 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13329.moment H = canonicalOutput13329.moment H :=
  canonical_of_padded canonicalInput13329 canonicalOutput13329 (by decide) (by decide)
    ⟨true, true, canonicalPermutation78, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput13330 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 2, 1], ![0, 0, 1, -2, 1], ![1, 1, -2, 0, 0], ![0, 1, 1, 0, -2]]⟩

def canonicalOutput13330 : ExponentCode := normalNode4090

theorem canonicalSound13330 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13330.moment H = canonicalOutput13330.moment H :=
  canonical_of_padded canonicalInput13330 canonicalOutput13330 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation182, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput13331 : ExponentCode := ⟨5, 5, ![![-1, -2, 0, 2, 1], ![0, 0, 1, 0, -1], ![0, 0, 1, 0, -1], ![0, 2, -1, 0, -1], ![1, 0, -1, -2, 2]]⟩

def canonicalOutput13331 : ExponentCode := normalNode7611

theorem canonicalSound13331 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13331.moment H = canonicalOutput13331.moment H :=
  canonical_of_padded canonicalInput13331 canonicalOutput13331 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation198, OAI.MUB6.Certificate.PairSemantics.permutation171⟩ (by decide +kernel) hH

def canonicalInput13332 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 2, 1], ![0, 0, 2, -2, 0], ![-1, 1, -2, 1, 1], ![2, 1, 0, -1, -2]]⟩

def canonicalOutput13332 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code526

theorem canonicalSound13332 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13332.moment H = canonicalOutput13332.moment H :=
  canonical_of_padded canonicalInput13332 canonicalOutput13332 (by decide) (by decide)
    ⟨true, false, canonicalPermutation75, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput13333 : ExponentCode := ⟨5, 5, ![![-1, -2, 0, 2, 1], ![0, 0, 2, -2, 0], ![0, 1, -1, 0, 0], ![0, 1, -1, 0, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput13333 : ExponentCode := normalNode8333

theorem canonicalSound13333 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13333.moment H = canonicalOutput13333.moment H :=
  canonical_of_padded canonicalInput13333 canonicalOutput13333 (by decide) (by decide)
    ⟨true, true, canonicalPermutation78, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput13334 : ExponentCode := ⟨3, 5, ![![-1, -2, 0, 2, 1], ![0, 0, 2, -2, 0], ![1, 2, -2, 0, -1]]⟩

def canonicalOutput13334 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node656⟩

theorem canonicalSound13334 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13334.moment H = canonicalOutput13334.moment H :=
  canonical_of_padded canonicalInput13334 canonicalOutput13334 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation195, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput13335 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 2, 1], ![0, 0, 2, 0, -2], ![-1, 1, -2, 1, 1], ![2, 1, 0, -3, 0]]⟩

def canonicalOutput13335 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code843

theorem canonicalSound13335 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13335.moment H = canonicalOutput13335.moment H :=
  canonical_of_padded canonicalInput13335 canonicalOutput13335 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput13336 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 2, 1], ![0, 0, 2, 0, -2], ![-1, 3, -1, -1, 0], ![2, -1, -1, -1, 1]]⟩

def canonicalOutput13336 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code944

theorem canonicalSound13336 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13336.moment H = canonicalOutput13336.moment H :=
  canonical_of_padded canonicalInput13336 canonicalOutput13336 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation178, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput13337 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 2, 1], ![0, 0, 2, 0, -2], ![0, 1, -1, -2, 2], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput13337 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1808⟩

theorem canonicalSound13337 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13337.moment H = canonicalOutput13337.moment H :=
  canonical_of_padded canonicalInput13337 canonicalOutput13337 (by decide) (by decide)
    ⟨true, false, canonicalPermutation74, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput13338 : ExponentCode := ⟨5, 5, ![![-1, -2, 0, 2, 1], ![0, 0, 2, 0, -2], ![0, 1, -1, -1, 1], ![0, 1, -1, 0, 0], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput13338 : ExponentCode := normalNode10033

theorem canonicalSound13338 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13338.moment H = canonicalOutput13338.moment H :=
  canonical_of_padded canonicalInput13338 canonicalOutput13338 (by decide) (by decide)
    ⟨true, false, canonicalPermutation23, canonicalPermutation56⟩ (by decide +kernel) hH

def canonicalInput13339 : ExponentCode := ⟨5, 5, ![![-1, -2, 0, 2, 1], ![0, 0, 2, 0, -2], ![0, 1, -1, -1, 1], ![0, 1, 0, -1, 0], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput13339 : ExponentCode := normalNode10032

theorem canonicalSound13339 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13339.moment H = canonicalOutput13339.moment H :=
  canonical_of_padded canonicalInput13339 canonicalOutput13339 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation194, canonicalPermutation52⟩ (by decide +kernel) hH

def canonicalInput13340 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 2, 1], ![0, 0, 2, 0, -2], ![0, 1, 0, -2, 1], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput13340 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2002⟩

theorem canonicalSound13340 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13340.moment H = canonicalOutput13340.moment H :=
  canonical_of_padded canonicalInput13340 canonicalOutput13340 (by decide) (by decide)
    ⟨true, false, canonicalPermutation61, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput13341 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 2, 1], ![0, 0, 2, 0, -2], ![2, 0, -1, -1, 0], ![-1, 2, -1, -1, 1]]⟩

def canonicalOutput13341 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code966

theorem canonicalSound13341 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13341.moment H = canonicalOutput13341.moment H :=
  canonical_of_padded canonicalInput13341 canonicalOutput13341 (by decide) (by decide)
    ⟨true, false, canonicalPermutation74, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput13342 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 2, 1], ![0, 1, -2, -1, 2], ![0, 1, 1, -1, -1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput13342 : ExponentCode := normalNode2556

theorem canonicalSound13342 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13342.moment H = canonicalOutput13342.moment H :=
  canonical_of_padded canonicalInput13342 canonicalOutput13342 (by decide) (by decide)
    ⟨true, false, canonicalPermutation74, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput13343 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 2, 1], ![0, 1, -2, -1, 2], ![0, 1, 1, 0, -2], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput13343 : ExponentCode := normalNode2559

theorem canonicalSound13343 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13343.moment H = canonicalOutput13343.moment H :=
  canonical_of_padded canonicalInput13343 canonicalOutput13343 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput13344 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 2, 1], ![0, 1, -2, 0, 1], ![0, 0, 2, -1, -1], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput13344 : ExponentCode := normalNode4647

theorem canonicalSound13344 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13344.moment H = canonicalOutput13344.moment H :=
  canonical_of_padded canonicalInput13344 canonicalOutput13344 (by decide) (by decide)
    ⟨true, true, canonicalPermutation73, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput13345 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 2, 1], ![0, 1, -2, 0, 1], ![0, 1, 1, -2, 0], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput13345 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1995⟩

theorem canonicalSound13345 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13345.moment H = canonicalOutput13345.moment H :=
  canonical_of_padded canonicalInput13345 canonicalOutput13345 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation195, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput13346 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 2, 1], ![0, 1, -2, 0, 1], ![0, 1, 1, -1, -1], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput13346 : ExponentCode := normalNode5625

theorem canonicalSound13346 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13346.moment H = canonicalOutput13346.moment H :=
  canonical_of_padded canonicalInput13346 canonicalOutput13346 (by decide) (by decide)
    ⟨true, false, canonicalPermutation36, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput13347 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 2, 1], ![0, 1, -2, 0, 1], ![0, 1, 1, 0, -2], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput13347 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1996⟩

theorem canonicalSound13347 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13347.moment H = canonicalOutput13347.moment H :=
  canonical_of_padded canonicalInput13347 canonicalOutput13347 (by decide) (by decide)
    ⟨true, false, canonicalPermutation75, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput13348 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 2, 1], ![0, 1, -1, -1, 1], ![0, 1, 0, -1, 0], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput13348 : ExponentCode := normalNode8968

theorem canonicalSound13348 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13348.moment H = canonicalOutput13348.moment H :=
  canonical_of_padded canonicalInput13348 canonicalOutput13348 (by decide) (by decide)
    ⟨true, false, canonicalPermutation61, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput13349 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 2, 1], ![0, 1, -1, -1, 1], ![0, 1, 0, 0, -1], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput13349 : ExponentCode := normalNode9084

theorem canonicalSound13349 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13349.moment H = canonicalOutput13349.moment H :=
  canonical_of_padded canonicalInput13349 canonicalOutput13349 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput13350 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 2, 1], ![0, 1, -1, -1, 1], ![0, 1, 1, -1, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput13350 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2625⟩

theorem canonicalSound13350 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13350.moment H = canonicalOutput13350.moment H :=
  canonical_of_padded canonicalInput13350 canonicalOutput13350 (by decide) (by decide)
    ⟨true, false, canonicalPermutation56, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput13351 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 2, 1], ![0, 1, -1, -1, 1], ![0, 1, 1, 0, -2], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput13351 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2585⟩

theorem canonicalSound13351 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13351.moment H = canonicalOutput13351.moment H :=
  canonical_of_padded canonicalInput13351 canonicalOutput13351 (by decide) (by decide)
    ⟨true, false, canonicalPermutation23, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput13352 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 2, 1], ![0, 1, -1, 1, -1], ![-1, 1, 2, -1, -1], ![2, 0, -1, -2, 1]]⟩

def canonicalOutput13352 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1315

theorem canonicalSound13352 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13352.moment H = canonicalOutput13352.moment H :=
  canonical_of_padded canonicalInput13352 canonicalOutput13352 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation187, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput13353 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 2, 1], ![0, 1, 0, -1, 0], ![0, 1, 1, 0, -2], ![1, 0, -1, -1, 1]]⟩

def canonicalOutput13353 : ExponentCode := normalNode8966

theorem canonicalSound13353 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13353.moment H = canonicalOutput13353.moment H :=
  canonical_of_padded canonicalInput13353 canonicalOutput13353 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation170, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput13354 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 2, 1], ![0, 1, 1, -2, 0], ![0, 1, -2, 0, 1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput13354 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1995⟩

theorem canonicalSound13354 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13354.moment H = canonicalOutput13354.moment H :=
  canonical_of_padded canonicalInput13354 canonicalOutput13354 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation195, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput13355 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 2, 1], ![0, 1, 1, -2, 0], ![0, 1, 1, 0, -2], ![1, 0, -2, 0, 1]]⟩

def canonicalOutput13355 : ExponentCode := normalNode3759

theorem canonicalSound13355 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13355.moment H = canonicalOutput13355.moment H :=
  canonical_of_padded canonicalInput13355 canonicalOutput13355 (by decide) (by decide)
    ⟨true, false, canonicalPermutation58, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput13356 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 2, 1], ![0, 1, 1, -1, -1], ![-2, 1, 1, -1, 1], ![3, 0, -2, 0, -1]]⟩

def canonicalOutput13356 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1363

theorem canonicalSound13356 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13356.moment H = canonicalOutput13356.moment H :=
  canonical_of_padded canonicalInput13356 canonicalOutput13356 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation170, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput13357 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 2, 1], ![0, 1, 1, -1, -1], ![0, 1, 0, 0, -1], ![1, 0, -1, -1, 1]]⟩

def canonicalOutput13357 : ExponentCode := normalNode8964

theorem canonicalSound13357 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13357.moment H = canonicalOutput13357.moment H :=
  canonical_of_padded canonicalInput13357 canonicalOutput13357 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation169, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput13358 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 2, 1], ![0, 1, 1, -1, -1], ![0, 1, 1, 0, -2], ![1, 0, -2, -1, 2]]⟩

def canonicalOutput13358 : ExponentCode := normalNode2544

theorem canonicalSound13358 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13358.moment H = canonicalOutput13358.moment H :=
  canonical_of_padded canonicalInput13358 canonicalOutput13358 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput13359 : ExponentCode := ⟨3, 5, ![![-1, -2, 0, 2, 1], ![0, 1, 2, -2, -1], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput13359 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node670⟩

theorem canonicalSound13359 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13359.moment H = canonicalOutput13359.moment H :=
  canonical_of_padded canonicalInput13359 canonicalOutput13359 (by decide) (by decide)
    ⟨true, false, canonicalPermutation22, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput13360 : ExponentCode := ⟨3, 5, ![![-1, -2, 0, 2, 1], ![0, 1, 2, -1, -2], ![1, 1, -2, -1, 1]]⟩

def canonicalOutput13360 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node626⟩

theorem canonicalSound13360 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13360.moment H = canonicalOutput13360.moment H :=
  canonical_of_padded canonicalInput13360 canonicalOutput13360 (by decide) (by decide)
    ⟨true, true, canonicalPermutation50, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13361 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 2, 1], ![0, 2, 0, -1, -1], ![-2, 0, 2, -1, 1], ![3, 0, -2, 0, -1]]⟩

def canonicalOutput13361 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code833

theorem canonicalSound13361 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13361.moment H = canonicalOutput13361.moment H :=
  canonical_of_padded canonicalInput13361 canonicalOutput13361 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput13362 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 2, 1], ![0, 2, 0, -1, -1], ![-1, 1, 2, -1, -1], ![2, -1, -2, 0, 1]]⟩

def canonicalOutput13362 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code533

theorem canonicalSound13362 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13362.moment H = canonicalOutput13362.moment H :=
  canonical_of_padded canonicalInput13362 canonicalOutput13362 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation170, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput13363 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 2, 1], ![1, 0, -2, -1, 2], ![0, 1, 1, -1, -1], ![0, 1, 1, 0, -2]]⟩

def canonicalOutput13363 : ExponentCode := normalNode2544

theorem canonicalSound13363 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13363.moment H = canonicalOutput13363.moment H :=
  canonical_of_padded canonicalInput13363 canonicalOutput13363 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput13364 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 2, 1], ![1, 0, -2, 0, 1], ![0, 1, 1, -2, 0], ![0, 1, 1, 0, -2]]⟩

def canonicalOutput13364 : ExponentCode := normalNode3759

theorem canonicalSound13364 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13364.moment H = canonicalOutput13364.moment H :=
  canonical_of_padded canonicalInput13364 canonicalOutput13364 (by decide) (by decide)
    ⟨true, false, canonicalPermutation58, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput13365 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 2, 1], ![1, 0, -2, 0, 1], ![0, 1, 1, -1, -1], ![0, 1, 1, -1, -1]]⟩

def canonicalOutput13365 : ExponentCode := normalNode5626

theorem canonicalSound13365 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13365.moment H = canonicalOutput13365.moment H :=
  canonical_of_padded canonicalInput13365 canonicalOutput13365 (by decide) (by decide)
    ⟨true, false, canonicalPermutation35, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput13366 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 2, 1], ![1, 0, 1, -2, 0], ![0, 1, -2, 0, 1], ![0, 1, 1, 0, -2]]⟩

def canonicalOutput13366 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1996⟩

theorem canonicalSound13366 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13366.moment H = canonicalOutput13366.moment H :=
  canonical_of_padded canonicalInput13366 canonicalOutput13366 (by decide) (by decide)
    ⟨true, false, canonicalPermutation75, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput13367 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 2, 1], ![1, 0, 1, 0, -2], ![-1, 1, 2, -2, 0], ![1, 1, -3, 0, 1]]⟩

def canonicalOutput13367 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code936

theorem canonicalSound13367 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13367.moment H = canonicalOutput13367.moment H :=
  canonical_of_padded canonicalInput13367 canonicalOutput13367 (by decide) (by decide)
    ⟨true, false, canonicalPermutation74, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput13368 : ExponentCode := ⟨3, 5, ![![-1, -2, 0, 2, 1], ![1, 0, 2, -2, -1], ![0, 2, -2, 0, 0]]⟩

def canonicalOutput13368 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node656⟩

theorem canonicalSound13368 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13368.moment H = canonicalOutput13368.moment H :=
  canonical_of_padded canonicalInput13368 canonicalOutput13368 (by decide) (by decide)
    ⟨true, false, canonicalPermutation55, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput13369 : ExponentCode := ⟨5, 4, ![![-1, -2, 0, 3], ![-1, -1, 1, 1], ![0, 3, 1, -4], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput13369 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2679⟩

theorem canonicalSound13369 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13369.moment H = canonicalOutput13369.moment H :=
  canonical_of_padded canonicalInput13369 canonicalOutput13369 (by decide) (by decide)
    ⟨false, true, canonicalPermutation50, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput13370 : ExponentCode := ⟨5, 4, ![![-1, -2, 0, 3], ![-1, -1, 2, 0], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 2, -1, -2]]⟩

def canonicalOutput13370 : ExponentCode := normalNode5404

theorem canonicalSound13370 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13370.moment H = canonicalOutput13370.moment H :=
  canonical_of_padded canonicalInput13370 canonicalOutput13370 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation173, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput13371 : ExponentCode := ⟨5, 4, ![![-1, -2, 0, 3], ![-1, -1, 2, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 2, -1, -2]]⟩

def canonicalOutput13371 : ExponentCode := normalNode5529

theorem canonicalSound13371 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13371.moment H = canonicalOutput13371.moment H :=
  canonical_of_padded canonicalInput13371 canonicalOutput13371 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation169, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput13372 : ExponentCode := ⟨5, 4, ![![-1, -2, 0, 3], ![-1, -1, 2, 0], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 2, -2, -1]]⟩

def canonicalOutput13372 : ExponentCode := normalNode5141

theorem canonicalSound13372 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13372.moment H = canonicalOutput13372.moment H :=
  canonical_of_padded canonicalInput13372 canonicalOutput13372 (by decide) (by decide)
    ⟨false, false, canonicalPermutation14, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput13373 : ExponentCode := ⟨5, 4, ![![-1, -2, 0, 3], ![-1, -1, 2, 0], ![0, 1, 0, -1], ![1, 1, -2, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput13373 : ExponentCode := normalNode5425

theorem canonicalSound13373 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13373.moment H = canonicalOutput13373.moment H :=
  canonical_of_padded canonicalInput13373 canonicalOutput13373 (by decide) (by decide)
    ⟨false, true, canonicalPermutation38, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput13374 : ExponentCode := ⟨5, 4, ![![-1, -2, 0, 3], ![-1, -1, 2, 0], ![0, 1, 0, -1], ![1, 1, 0, -2], ![1, 1, -2, 0]]⟩

def canonicalOutput13374 : ExponentCode := normalNode5425

theorem canonicalSound13374 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13374.moment H = canonicalOutput13374.moment H :=
  canonical_of_padded canonicalInput13374 canonicalOutput13374 (by decide) (by decide)
    ⟨false, true, canonicalPermutation64, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput13375 : ExponentCode := ⟨4, 4, ![![-1, -2, 0, 3], ![-1, -1, 2, 0], ![0, 1, 1, -2], ![2, 2, -3, -1]]⟩

def canonicalOutput13375 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code503

theorem canonicalSound13375 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13375.moment H = canonicalOutput13375.moment H :=
  canonical_of_padded canonicalInput13375 canonicalOutput13375 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
