import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes01
import NoFourMUBs.Step2.SOS.MomentCodes03
import NoFourMUBs.Step2.SOS.MomentCodes10
import NoFourMUBs.Step2.SOS.MomentCodes16
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes21
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput27392 : ExponentCode := ⟨3, 4, ![![0, -1, 2, -1], ![-2, -2, 0, 4], ![2, 3, -2, -3]]⟩

def canonicalOutput27392 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node211⟩

theorem canonicalSound27392 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27392.moment H = canonicalOutput27392.moment H :=
  canonical_of_padded canonicalInput27392 canonicalOutput27392 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27393 : ExponentCode := ⟨3, 4, ![![0, -1, 2, -1], ![-2, -2, 1, 3], ![2, 3, -3, -2]]⟩

def canonicalOutput27393 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node183⟩

theorem canonicalSound27393 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27393.moment H = canonicalOutput27393.moment H :=
  canonical_of_padded canonicalInput27393 canonicalOutput27393 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27394 : ExponentCode := ⟨3, 4, ![![0, -1, 2, -1], ![-2, -1, 1, 2], ![2, 2, -3, -1]]⟩

def canonicalOutput27394 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node184⟩

theorem canonicalSound27394 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27394.moment H = canonicalOutput27394.moment H :=
  canonical_of_padded canonicalInput27394 canonicalOutput27394 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27395 : ExponentCode := ⟨3, 4, ![![0, -1, 2, -1], ![-2, -1, 2, 1], ![2, 2, -4, 0]]⟩

def canonicalOutput27395 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node153⟩

theorem canonicalSound27395 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27395.moment H = canonicalOutput27395.moment H :=
  canonical_of_padded canonicalInput27395 canonicalOutput27395 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27396 : ExponentCode := ⟨3, 4, ![![0, -1, 2, -1], ![-2, 2, 2, -2], ![2, -1, -4, 3]]⟩

def canonicalOutput27396 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node152⟩

theorem canonicalSound27396 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27396.moment H = canonicalOutput27396.moment H :=
  canonical_of_padded canonicalInput27396 canonicalOutput27396 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27397 : ExponentCode := ⟨3, 4, ![![0, -1, 2, -1], ![-1, -2, -1, 4], ![1, 3, -1, -3]]⟩

def canonicalOutput27397 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node228⟩

theorem canonicalSound27397 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27397.moment H = canonicalOutput27397.moment H :=
  canonical_of_padded canonicalInput27397 canonicalOutput27397 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27398 : ExponentCode := ⟨3, 4, ![![0, -1, 2, -1], ![-1, -2, 0, 3], ![1, 3, -2, -2]]⟩

def canonicalOutput27398 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node209⟩

theorem canonicalSound27398 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27398.moment H = canonicalOutput27398.moment H :=
  canonical_of_padded canonicalInput27398 canonicalOutput27398 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27399 : ExponentCode := ⟨3, 4, ![![0, -1, 2, -1], ![-1, -2, 1, 2], ![1, 3, -3, -1]]⟩

def canonicalOutput27399 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node180⟩

theorem canonicalSound27399 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27399.moment H = canonicalOutput27399.moment H :=
  canonical_of_padded canonicalInput27399 canonicalOutput27399 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27400 : ExponentCode := ⟨4, 4, ![![0, -1, 2, -1], ![-1, 0, -3, 4], ![0, 2, 1, -3], ![1, -1, 0, 0]]⟩

def canonicalOutput27400 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1156⟩

theorem canonicalSound27400 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27400.moment H = canonicalOutput27400.moment H :=
  canonical_of_padded canonicalInput27400 canonicalOutput27400 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation161, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput27401 : ExponentCode := ⟨4, 4, ![![0, -1, 2, -1], ![-1, 0, -2, 3], ![0, 2, -1, -1], ![1, -1, 1, -1]]⟩

def canonicalOutput27401 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1208⟩

theorem canonicalSound27401 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27401.moment H = canonicalOutput27401.moment H :=
  canonical_of_padded canonicalInput27401 canonicalOutput27401 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27402 : ExponentCode := ⟨5, 4, ![![0, -1, 2, -1], ![-1, 0, -1, 2], ![0, 0, 1, -1], ![0, 2, 0, -2], ![1, -1, -2, 2]]⟩

def canonicalOutput27402 : ExponentCode := normalNode10298

theorem canonicalSound27402 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27402.moment H = canonicalOutput27402.moment H :=
  canonical_of_padded canonicalInput27402 canonicalOutput27402 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27403 : ExponentCode := ⟨4, 4, ![![0, -1, 2, -1], ![-1, 0, 1, 0], ![0, 2, -1, -1], ![1, -1, -2, 2]]⟩

def canonicalOutput27403 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node846⟩

theorem canonicalSound27403 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27403.moment H = canonicalOutput27403.moment H :=
  canonical_of_padded canonicalInput27403 canonicalOutput27403 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput27404 : ExponentCode := ⟨4, 4, ![![0, -1, 2, -1], ![-1, 0, 2, -1], ![0, 2, -1, -1], ![1, -1, -3, 3]]⟩

def canonicalOutput27404 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1239⟩

theorem canonicalSound27404 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27404.moment H = canonicalOutput27404.moment H :=
  canonical_of_padded canonicalInput27404 canonicalOutput27404 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27405 : ExponentCode := ⟨4, 4, ![![0, -1, 2, -1], ![-1, 1, -4, 4], ![0, 1, 2, -3], ![1, -1, 0, 0]]⟩

def canonicalOutput27405 : ExponentCode := normalNode9360

theorem canonicalSound27405 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27405.moment H = canonicalOutput27405.moment H :=
  canonical_of_padded canonicalInput27405 canonicalOutput27405 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation161, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput27406 : ExponentCode := ⟨4, 4, ![![0, -1, 2, -1], ![-1, 1, -3, 3], ![0, 1, 0, -1], ![1, -1, 1, -1]]⟩

def canonicalOutput27406 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node972⟩

theorem canonicalSound27406 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27406.moment H = canonicalOutput27406.moment H :=
  canonical_of_padded canonicalInput27406 canonicalOutput27406 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput27407 : ExponentCode := ⟨4, 4, ![![0, -1, 2, -1], ![-1, 1, -3, 3], ![0, 1, 2, -3], ![1, -1, -1, 1]]⟩

def canonicalOutput27407 : ExponentCode := normalNode10983

theorem canonicalSound27407 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27407.moment H = canonicalOutput27407.moment H :=
  canonical_of_padded canonicalInput27407 canonicalOutput27407 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27408 : ExponentCode := ⟨4, 4, ![![0, -1, 2, -1], ![-1, 1, -2, 2], ![0, 1, 1, -2], ![1, -1, -1, 1]]⟩

def canonicalOutput27408 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1333⟩

theorem canonicalSound27408 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27408.moment H = canonicalOutput27408.moment H :=
  canonical_of_padded canonicalInput27408 canonicalOutput27408 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27409 : ExponentCode := ⟨4, 4, ![![0, -1, 2, -1], ![-1, 1, -1, 1], ![0, 1, 1, -2], ![1, -1, -2, 2]]⟩

def canonicalOutput27409 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1333⟩

theorem canonicalSound27409 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27409.moment H = canonicalOutput27409.moment H :=
  canonical_of_padded canonicalInput27409 canonicalOutput27409 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27410 : ExponentCode := ⟨3, 4, ![![0, -1, 2, -1], ![-1, 2, 2, -3], ![1, -1, -4, 4]]⟩

def canonicalOutput27410 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node148⟩

theorem canonicalSound27410 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27410.moment H = canonicalOutput27410.moment H :=
  canonical_of_padded canonicalInput27410 canonicalOutput27410 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27411 : ExponentCode := ⟨4, 4, ![![0, -1, 2, -1], ![-1, 3, 0, -2], ![0, -2, -2, 4], ![1, 0, 0, -1]]⟩

def canonicalOutput27411 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node903⟩

theorem canonicalSound27411 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27411.moment H = canonicalOutput27411.moment H :=
  canonical_of_padded canonicalInput27411 canonicalOutput27411 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput27412 : ExponentCode := ⟨4, 4, ![![0, -1, 2, -1], ![-1, 3, 1, -3], ![0, -1, -2, 3], ![1, -1, -1, 1]]⟩

def canonicalOutput27412 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1358⟩

theorem canonicalSound27412 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27412.moment H = canonicalOutput27412.moment H :=
  canonical_of_padded canonicalInput27412 canonicalOutput27412 (by decide) (by decide)
    ⟨false, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput27413 : ExponentCode := ⟨4, 4, ![![0, -1, 2, -1], ![0, -1, -1, 2], ![0, 0, -2, 2], ![0, 2, 1, -3]]⟩

def canonicalOutput27413 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node184⟩

theorem canonicalSound27413 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27413.moment H = canonicalOutput27413.moment H :=
  canonical_of_padded canonicalInput27413 canonicalOutput27413 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27414 : ExponentCode := ⟨4, 4, ![![0, -1, 2, -1], ![0, 0, -3, 3], ![-1, 2, 1, -2], ![1, -1, 0, 0]]⟩

def canonicalOutput27414 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1015⟩

theorem canonicalSound27414 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27414.moment H = canonicalOutput27414.moment H :=
  canonical_of_padded canonicalInput27414 canonicalOutput27414 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput27415 : ExponentCode := ⟨4, 4, ![![0, -1, 2, -1], ![0, 0, -3, 3], ![0, 2, 1, -3], ![0, -1, 0, 1]]⟩

def canonicalOutput27415 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node187⟩

theorem canonicalSound27415 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27415.moment H = canonicalOutput27415.moment H :=
  canonical_of_padded canonicalInput27415 canonicalOutput27415 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27416 : ExponentCode := ⟨4, 4, ![![0, -1, 2, -1], ![0, 0, -2, 2], ![-1, 2, -1, 0], ![1, -1, 1, -1]]⟩

def canonicalOutput27416 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1309⟩

theorem canonicalSound27416 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27416.moment H = canonicalOutput27416.moment H :=
  canonical_of_padded canonicalInput27416 canonicalOutput27416 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput27417 : ExponentCode := ⟨4, 4, ![![0, -1, 2, -1], ![0, 0, -2, 2], ![0, 2, -1, -1], ![0, -1, 1, 0]]⟩

def canonicalOutput27417 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node210⟩

theorem canonicalSound27417 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27417.moment H = canonicalOutput27417.moment H :=
  canonical_of_padded canonicalInput27417 canonicalOutput27417 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput27418 : ExponentCode := ⟨5, 4, ![![0, -1, 2, -1], ![0, 0, -1, 1], ![-1, 0, 1, 0], ![0, 2, 0, -2], ![1, -1, -2, 2]]⟩

def canonicalOutput27418 : ExponentCode := normalNode10574

theorem canonicalSound27418 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27418.moment H = canonicalOutput27418.moment H :=
  canonical_of_padded canonicalInput27418 canonicalOutput27418 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27419 : ExponentCode := ⟨5, 4, ![![0, -1, 2, -1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![-1, 2, 0, -1], ![1, -1, -2, 2]]⟩

def canonicalOutput27419 : ExponentCode := normalNode11060

theorem canonicalSound27419 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27419.moment H = canonicalOutput27419.moment H :=
  canonical_of_padded canonicalInput27419 canonicalOutput27419 (by decide) (by decide)
    ⟨false, true, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27420 : ExponentCode := ⟨5, 4, ![![0, -1, 2, -1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 2, 0, -2], ![0, -1, -2, 3]]⟩

def canonicalOutput27420 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node658⟩

theorem canonicalSound27420 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27420.moment H = canonicalOutput27420.moment H :=
  canonical_of_padded canonicalInput27420 canonicalOutput27420 (by decide) (by decide)
    ⟨false, true, canonicalPermutation53, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27421 : ExponentCode := ⟨4, 4, ![![0, -1, 2, -1], ![0, 0, 1, -1], ![-1, 2, -1, 0], ![1, -1, -2, 2]]⟩

def canonicalOutput27421 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node838⟩

theorem canonicalSound27421 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27421.moment H = canonicalOutput27421.moment H :=
  canonical_of_padded canonicalInput27421 canonicalOutput27421 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput27422 : ExponentCode := ⟨4, 4, ![![0, -1, 2, -1], ![0, 0, 1, -1], ![0, 2, -1, -1], ![0, -1, -2, 3]]⟩

def canonicalOutput27422 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node229⟩

theorem canonicalSound27422 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27422.moment H = canonicalOutput27422.moment H :=
  canonical_of_padded canonicalInput27422 canonicalOutput27422 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27423 : ExponentCode := ⟨4, 4, ![![0, -1, 2, -1], ![0, 0, 2, -2], ![-1, 2, -1, 0], ![1, -1, -3, 3]]⟩

def canonicalOutput27423 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1329⟩

theorem canonicalSound27423 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27423.moment H = canonicalOutput27423.moment H :=
  canonical_of_padded canonicalInput27423 canonicalOutput27423 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27424 : ExponentCode := ⟨4, 4, ![![0, -1, 2, -1], ![0, 0, 2, -2], ![0, 2, -1, -1], ![0, -1, -3, 4]]⟩

def canonicalOutput27424 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node225⟩

theorem canonicalSound27424 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27424.moment H = canonicalOutput27424.moment H :=
  canonical_of_padded canonicalInput27424 canonicalOutput27424 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27425 : ExponentCode := ⟨4, 4, ![![0, -1, 2, -1], ![0, 1, -4, 3], ![-1, 1, 2, -2], ![1, -1, 0, 0]]⟩

def canonicalOutput27425 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1095⟩

theorem canonicalSound27425 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27425.moment H = canonicalOutput27425.moment H :=
  canonical_of_padded canonicalInput27425 canonicalOutput27425 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation161, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput27426 : ExponentCode := ⟨4, 4, ![![0, -1, 2, -1], ![0, 1, -4, 3], ![0, 1, 2, -3], ![0, -1, 0, 1]]⟩

def canonicalOutput27426 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node247⟩

theorem canonicalSound27426 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27426.moment H = canonicalOutput27426.moment H :=
  canonical_of_padded canonicalInput27426 canonicalOutput27426 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27427 : ExponentCode := ⟨4, 4, ![![0, -1, 2, -1], ![0, 1, -3, 2], ![-1, 1, 0, 0], ![1, -1, 1, -1]]⟩

def canonicalOutput27427 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1299⟩

theorem canonicalSound27427 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27427.moment H = canonicalOutput27427.moment H :=
  canonical_of_padded canonicalInput27427 canonicalOutput27427 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput27428 : ExponentCode := ⟨4, 4, ![![0, -1, 2, -1], ![0, 1, -3, 2], ![-1, 1, 2, -2], ![1, -1, -1, 1]]⟩

def canonicalOutput27428 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1332⟩

theorem canonicalSound27428 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27428.moment H = canonicalOutput27428.moment H :=
  canonical_of_padded canonicalInput27428 canonicalOutput27428 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27429 : ExponentCode := ⟨4, 4, ![![0, -1, 2, -1], ![0, 1, -3, 2], ![0, 1, 0, -1], ![0, -1, 1, 0]]⟩

def canonicalOutput27429 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node181⟩

theorem canonicalSound27429 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27429.moment H = canonicalOutput27429.moment H :=
  canonical_of_padded canonicalInput27429 canonicalOutput27429 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput27430 : ExponentCode := ⟨4, 4, ![![0, -1, 2, -1], ![0, 1, -3, 2], ![0, 1, 2, -3], ![0, -1, -1, 2]]⟩

def canonicalOutput27430 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node262⟩

theorem canonicalSound27430 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27430.moment H = canonicalOutput27430.moment H :=
  canonical_of_padded canonicalInput27430 canonicalOutput27430 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27431 : ExponentCode := ⟨4, 4, ![![0, -1, 2, -1], ![0, 1, -2, 1], ![-1, 1, 1, -1], ![1, -1, -1, 1]]⟩

def canonicalOutput27431 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1096⟩

theorem canonicalSound27431 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27431.moment H = canonicalOutput27431.moment H :=
  canonical_of_padded canonicalInput27431 canonicalOutput27431 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput27432 : ExponentCode := ⟨4, 4, ![![0, -1, 2, -1], ![0, 1, -2, 1], ![0, 1, 1, -2], ![0, -1, -1, 2]]⟩

def canonicalOutput27432 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node276⟩

theorem canonicalSound27432 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27432.moment H = canonicalOutput27432.moment H :=
  canonical_of_padded canonicalInput27432 canonicalOutput27432 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27433 : ExponentCode := ⟨4, 4, ![![0, -1, 2, -1], ![0, 1, -1, 0], ![-1, 1, 1, -1], ![1, -1, -2, 2]]⟩

def canonicalOutput27433 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node835⟩

theorem canonicalSound27433 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27433.moment H = canonicalOutput27433.moment H :=
  canonical_of_padded canonicalInput27433 canonicalOutput27433 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput27434 : ExponentCode := ⟨4, 4, ![![0, -1, 2, -1], ![0, 1, -1, 0], ![0, 1, 1, -2], ![0, -1, -2, 3]]⟩

def canonicalOutput27434 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node261⟩

theorem canonicalSound27434 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27434.moment H = canonicalOutput27434.moment H :=
  canonical_of_padded canonicalInput27434 canonicalOutput27434 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27435 : ExponentCode := ⟨3, 4, ![![0, -1, 2, -1], ![1, -4, 0, 3], ![-1, 5, -2, -2]]⟩

def canonicalOutput27435 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node205⟩

theorem canonicalSound27435 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27435.moment H = canonicalOutput27435.moment H :=
  canonical_of_padded canonicalInput27435 canonicalOutput27435 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27436 : ExponentCode := ⟨3, 4, ![![0, -1, 2, -1], ![1, -4, 1, 2], ![-1, 5, -3, -1]]⟩

def canonicalOutput27436 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node172⟩

theorem canonicalSound27436 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27436.moment H = canonicalOutput27436.moment H :=
  canonical_of_padded canonicalInput27436 canonicalOutput27436 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27437 : ExponentCode := ⟨3, 4, ![![0, -1, 2, -1], ![1, -3, 2, 0], ![-1, 4, -4, 1]]⟩

def canonicalOutput27437 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node143⟩

theorem canonicalSound27437 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27437.moment H = canonicalOutput27437.moment H :=
  canonical_of_padded canonicalInput27437 canonicalOutput27437 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27438 : ExponentCode := ⟨3, 4, ![![0, -1, 2, -1], ![1, -1, 2, -2], ![-1, 2, -4, 3]]⟩

def canonicalOutput27438 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node144⟩

theorem canonicalSound27438 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27438.moment H = canonicalOutput27438.moment H :=
  canonical_of_padded canonicalInput27438 canonicalOutput27438 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27439 : ExponentCode := ⟨3, 4, ![![0, -1, 2, -1], ![2, -4, 0, 2], ![-2, 5, -2, -1]]⟩

def canonicalOutput27439 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node200⟩

theorem canonicalSound27439 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27439.moment H = canonicalOutput27439.moment H :=
  canonical_of_padded canonicalInput27439 canonicalOutput27439 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27440 : ExponentCode := ⟨3, 4, ![![0, -1, 2, -1], ![2, -4, 1, 1], ![-2, 5, -3, 0]]⟩

def canonicalOutput27440 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node165⟩

theorem canonicalSound27440 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27440.moment H = canonicalOutput27440.moment H :=
  canonical_of_padded canonicalInput27440 canonicalOutput27440 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27441 : ExponentCode := ⟨3, 4, ![![0, -1, 2, -1], ![2, -3, 2, -1], ![-2, 4, -4, 2]]⟩

def canonicalOutput27441 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code236

theorem canonicalSound27441 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27441.moment H = canonicalOutput27441.moment H :=
  canonical_of_padded canonicalInput27441 canonicalOutput27441 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27442 : ExponentCode := ⟨3, 4, ![![0, -1, 2, -1], ![2, -1, 2, -3], ![-2, 2, -4, 4]]⟩

def canonicalOutput27442 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code236

theorem canonicalSound27442 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27442.moment H = canonicalOutput27442.moment H :=
  canonical_of_padded canonicalInput27442 canonicalOutput27442 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27443 : ExponentCode := ⟨3, 4, ![![0, -1, 2, -1], ![3, -1, 1, -3], ![-3, 2, -3, 4]]⟩

def canonicalOutput27443 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code688

theorem canonicalSound27443 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27443.moment H = canonicalOutput27443.moment H :=
  canonical_of_padded canonicalInput27443 canonicalOutput27443 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27444 : ExponentCode := ⟨3, 4, ![![0, -1, 2, -1], ![4, -1, 0, -3], ![-4, 2, -2, 4]]⟩

def canonicalOutput27444 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1042

theorem canonicalSound27444 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27444.moment H = canonicalOutput27444.moment H :=
  canonical_of_padded canonicalInput27444 canonicalOutput27444 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27445 : ExponentCode := ⟨4, 5, ![![0, -1, 2, 0, -1], ![0, 0, 0, -3, 3], ![0, 0, 0, 2, -2], ![0, 1, -2, 1, 0]]⟩

def canonicalOutput27445 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1374⟩

theorem canonicalSound27445 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27445.moment H = canonicalOutput27445.moment H :=
  canonical_of_padded canonicalInput27445 canonicalOutput27445 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27446 : ExponentCode := ⟨4, 5, ![![0, -1, 2, 0, -1], ![0, 0, 0, -3, 3], ![0, 0, 0, 3, -3], ![0, 1, -2, 0, 1]]⟩

def canonicalOutput27446 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1375⟩

theorem canonicalSound27446 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27446.moment H = canonicalOutput27446.moment H :=
  canonical_of_padded canonicalInput27446 canonicalOutput27446 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27447 : ExponentCode := ⟨3, 4, ![![0, -1, 3, -2], ![-3, 4, -2, 1], ![3, -3, -1, 1]]⟩

def canonicalOutput27447 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code70

theorem canonicalSound27447 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27447.moment H = canonicalOutput27447.moment H :=
  canonical_of_padded canonicalInput27447 canonicalOutput27447 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27448 : ExponentCode := ⟨3, 4, ![![0, -1, 3, -2], ![-2, -1, -2, 5], ![2, 2, -1, -3]]⟩

def canonicalOutput27448 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code75

theorem canonicalSound27448 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27448.moment H = canonicalOutput27448.moment H :=
  canonical_of_padded canonicalInput27448 canonicalOutput27448 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27449 : ExponentCode := ⟨3, 4, ![![0, -1, 3, -2], ![-2, 4, -2, 0], ![2, -3, -1, 2]]⟩

def canonicalOutput27449 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node104⟩

theorem canonicalSound27449 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27449.moment H = canonicalOutput27449.moment H :=
  canonical_of_padded canonicalInput27449 canonicalOutput27449 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27450 : ExponentCode := ⟨3, 4, ![![0, -1, 3, -2], ![-1, -1, -2, 4], ![1, 2, -1, -2]]⟩

def canonicalOutput27450 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node106⟩

theorem canonicalSound27450 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27450.moment H = canonicalOutput27450.moment H :=
  canonical_of_padded canonicalInput27450 canonicalOutput27450 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27451 : ExponentCode := ⟨4, 4, ![![0, -1, 3, -2], ![-1, 0, -2, 3], ![0, 2, -1, -1], ![1, -1, 0, 0]]⟩

def canonicalOutput27451 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1214⟩

theorem canonicalSound27451 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27451.moment H = canonicalOutput27451.moment H :=
  canonical_of_padded canonicalInput27451 canonicalOutput27451 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27452 : ExponentCode := ⟨5, 4, ![![0, -1, 3, -2], ![-1, 0, 1, 0], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, -3, 3]]⟩

def canonicalOutput27452 : ExponentCode := normalNode10561

theorem canonicalSound27452 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27452.moment H = canonicalOutput27452.moment H :=
  canonical_of_padded canonicalInput27452 canonicalOutput27452 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation167, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27453 : ExponentCode := ⟨4, 4, ![![0, -1, 3, -2], ![-1, 1, -4, 4], ![0, 1, 1, -2], ![1, -1, 0, 0]]⟩

def canonicalOutput27453 : ExponentCode := normalNode10549

theorem canonicalSound27453 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27453.moment H = canonicalOutput27453.moment H :=
  canonical_of_padded canonicalInput27453 canonicalOutput27453 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation154, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput27454 : ExponentCode := ⟨4, 4, ![![0, -1, 3, -2], ![-1, 1, -3, 3], ![0, 1, 0, -1], ![1, -1, 0, 0]]⟩

def canonicalOutput27454 : ExponentCode := normalNode9973

theorem canonicalSound27454 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27454.moment H = canonicalOutput27454.moment H :=
  canonical_of_padded canonicalInput27454 canonicalOutput27454 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput27455 : ExponentCode := ⟨4, 4, ![![0, -1, 3, -2], ![-1, 1, -1, 1], ![0, 1, 0, -1], ![1, -1, -2, 2]]⟩

def canonicalOutput27455 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1122⟩

theorem canonicalSound27455 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27455.moment H = canonicalOutput27455.moment H :=
  canonical_of_padded canonicalInput27455 canonicalOutput27455 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation158, canonicalPermutation6⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
