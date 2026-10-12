import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes06
import NoFourMUBs.Step2.SOS.MomentCodes13
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.MomentCodes15
import NoFourMUBs.Step2.SOS.MomentCodes17
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.MomentCodes19
import NoFourMUBs.Step2.SOS.NormalizationNodes000
import NoFourMUBs.Step2.SOS.NormalizationNodes001
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes30
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes36
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes44
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput21504 : ExponentCode := ⟨5, 5, ![![-1, 0, 0, 2, -1], ![0, 0, 0, -1, 1], ![0, 0, 1, 0, -1], ![0, 2, -1, 0, -1], ![1, -2, 0, -1, 2]]⟩

def canonicalOutput21504 : ExponentCode := normalNode10463

theorem canonicalSound21504 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21504.moment H = canonicalOutput21504.moment H :=
  canonical_of_padded canonicalInput21504 canonicalOutput21504 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, canonicalPermutation42⟩ (by decide +kernel) hH

def canonicalInput21505 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, 0, 1, -2, 1], ![-1, 2, -2, 1, 0], ![2, -2, 1, -1, 0]]⟩

def canonicalOutput21505 : ExponentCode := normalNode5883

theorem canonicalSound21505 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21505.moment H = canonicalOutput21505.moment H :=
  canonical_of_padded canonicalInput21505 canonicalOutput21505 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation182, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput21506 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, 0, 1, -2, 1], ![0, 1, -2, 0, 1], ![1, -1, 1, 0, -1]]⟩

def canonicalOutput21506 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2018⟩

theorem canonicalSound21506 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21506.moment H = canonicalOutput21506.moment H :=
  canonical_of_padded canonicalInput21506 canonicalOutput21506 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation187, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput21507 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, 0, 1, -2, 1], ![0, 2, -2, 1, -1], ![1, -2, 1, -1, 1]]⟩

def canonicalOutput21507 : ExponentCode := normalNode5872

theorem canonicalSound21507 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21507.moment H = canonicalOutput21507.moment H :=
  canonical_of_padded canonicalInput21507 canonicalOutput21507 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation182, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput21508 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, 0, 1, -2, 1], ![0, 3, -2, 0, -1], ![1, -3, 1, 0, 1]]⟩

def canonicalOutput21508 : ExponentCode := normalNode5948

theorem canonicalSound21508 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21508.moment H = canonicalOutput21508.moment H :=
  canonical_of_padded canonicalInput21508 canonicalOutput21508 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21509 : ExponentCode := ⟨5, 5, ![![-1, 0, 0, 2, -1], ![0, 0, 1, 0, -1], ![0, 1, 0, -2, 1], ![0, 1, 0, 0, -1], ![1, -2, -1, 0, 2]]⟩

def canonicalOutput21509 : ExponentCode := normalNode7593

theorem canonicalSound21509 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21509.moment H = canonicalOutput21509.moment H :=
  canonical_of_padded canonicalInput21509 canonicalOutput21509 (by decide) (by decide)
    ⟨true, false, canonicalPermutation21, canonicalPermutation72⟩ (by decide +kernel) hH

def canonicalInput21510 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, 1, 1, -2, 0], ![0, -2, 1, -1, 2], ![1, 1, -2, 1, -1]]⟩

def canonicalOutput21510 : ExponentCode := normalNode5842

theorem canonicalSound21510 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21510.moment H = canonicalOutput21510.moment H :=
  canonical_of_padded canonicalInput21510 canonicalOutput21510 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation188, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21511 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, 1, 1, -2, 0], ![1, -2, 1, -1, 1], ![0, 1, -2, 1, 0]]⟩

def canonicalOutput21511 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1837⟩

theorem canonicalSound21511 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21511.moment H = canonicalOutput21511.moment H :=
  canonical_of_padded canonicalInput21511 canonicalOutput21511 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation188, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput21512 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, 1, 1, -1, -1], ![-1, -2, 1, -1, 3], ![2, 1, -2, 0, -1]]⟩

def canonicalOutput21512 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1157

theorem canonicalSound21512 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21512.moment H = canonicalOutput21512.moment H :=
  canonical_of_padded canonicalInput21512 canonicalOutput21512 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation188, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21513 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, 1, 1, -1, -1], ![0, -2, 1, -1, 2], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput21513 : ExponentCode := normalNode4310

theorem canonicalSound21513 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21513.moment H = canonicalOutput21513.moment H :=
  canonical_of_padded canonicalInput21513 canonicalOutput21513 (by decide) (by decide)
    ⟨true, false, canonicalPermutation26, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput21514 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, 1, 1, -1, -1], ![0, -2, 1, 0, 1], ![1, 1, -2, -1, 1]]⟩

def canonicalOutput21514 : ExponentCode := normalNode4311

theorem canonicalSound21514 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21514.moment H = canonicalOutput21514.moment H :=
  canonical_of_padded canonicalInput21514 canonicalOutput21514 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput21515 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, 1, 1, -1, -1], ![1, -2, 1, 0, 0], ![0, 1, -2, -1, 2]]⟩

def canonicalOutput21515 : ExponentCode := normalNode4310

theorem canonicalSound21515 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21515.moment H = canonicalOutput21515.moment H :=
  canonical_of_padded canonicalInput21515 canonicalOutput21515 (by decide) (by decide)
    ⟨true, false, canonicalPermutation37, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput21516 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, 1, 1, 0, -2], ![-1, -2, 1, -1, 3], ![2, 1, -2, -1, 0]]⟩

def canonicalOutput21516 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code425

theorem canonicalSound21516 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21516.moment H = canonicalOutput21516.moment H :=
  canonical_of_padded canonicalInput21516 canonicalOutput21516 (by decide) (by decide)
    ⟨true, false, canonicalPermutation21, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput21517 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, 1, 1, 0, -2], ![0, -2, 1, -1, 2], ![1, 1, -2, -1, 1]]⟩

def canonicalOutput21517 : ExponentCode := normalNode2520

theorem canonicalSound21517 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21517.moment H = canonicalOutput21517.moment H :=
  canonical_of_padded canonicalInput21517 canonicalOutput21517 (by decide) (by decide)
    ⟨true, false, canonicalPermutation21, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput21518 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![1, -2, 0, 0, 1], ![-2, 1, 2, -2, 1], ![2, 1, -2, 0, -1]]⟩

def canonicalOutput21518 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code908

theorem canonicalSound21518 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21518.moment H = canonicalOutput21518.moment H :=
  canonical_of_padded canonicalInput21518 canonicalOutput21518 (by decide) (by decide)
    ⟨true, true, canonicalPermutation53, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21519 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![1, -2, 0, 0, 1], ![-1, 1, 2, -2, 0], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput21519 : ExponentCode := normalNode3968

theorem canonicalSound21519 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21519.moment H = canonicalOutput21519.moment H :=
  canonical_of_padded canonicalInput21519 canonicalOutput21519 (by decide) (by decide)
    ⟨true, false, canonicalPermutation26, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput21520 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![1, -2, 0, 0, 1], ![-1, 2, -2, 1, 0], ![1, 0, 2, -3, 0]]⟩

def canonicalOutput21520 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1964⟩

theorem canonicalSound21520 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21520.moment H = canonicalOutput21520.moment H :=
  canonical_of_padded canonicalInput21520 canonicalOutput21520 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21521 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![1, -2, 0, 0, 1], ![0, 2, -2, 1, -1], ![0, 0, 2, -3, 1]]⟩

def canonicalOutput21521 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1964⟩

theorem canonicalSound21521 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21521.moment H = canonicalOutput21521.moment H :=
  canonical_of_padded canonicalInput21521 canonicalOutput21521 (by decide) (by decide)
    ⟨true, true, canonicalPermutation53, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21522 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![1, -2, 1, 0, 0], ![-3, 1, 1, -1, 2], ![3, 1, -2, -1, -1]]⟩

def canonicalOutput21522 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code978

theorem canonicalSound21522 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21522.moment H = canonicalOutput21522.moment H :=
  canonical_of_padded canonicalInput21522 canonicalOutput21522 (by decide) (by decide)
    ⟨true, false, canonicalPermutation37, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput21523 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![1, -2, 1, 0, 0], ![-2, 1, 1, -2, 2], ![2, 1, -2, 0, -1]]⟩

def canonicalOutput21523 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code888

theorem canonicalSound21523 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21523.moment H = canonicalOutput21523.moment H :=
  canonical_of_padded canonicalInput21523 canonicalOutput21523 (by decide) (by decide)
    ⟨true, true, canonicalPermutation53, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21524 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![1, -2, 1, 0, 0], ![-2, 1, 1, -1, 1], ![2, 1, -2, -1, 0]]⟩

def canonicalOutput21524 : ExponentCode := normalNode4312

theorem canonicalSound21524 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21524.moment H = canonicalOutput21524.moment H :=
  canonical_of_padded canonicalInput21524 canonicalOutput21524 (by decide) (by decide)
    ⟨true, true, canonicalPermutation53, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21525 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![1, -2, 1, 0, 0], ![-1, 1, -2, -1, 3], ![1, 1, 1, -1, -2]]⟩

def canonicalOutput21525 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code961

theorem canonicalSound21525 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21525.moment H = canonicalOutput21525.moment H :=
  canonical_of_padded canonicalInput21525 canonicalOutput21525 (by decide) (by decide)
    ⟨true, false, canonicalPermutation37, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput21526 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![1, -2, 1, 0, 0], ![-1, 1, 1, -2, 1], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput21526 : ExponentCode := normalNode3994

theorem canonicalSound21526 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21526.moment H = canonicalOutput21526.moment H :=
  canonical_of_padded canonicalInput21526 canonicalOutput21526 (by decide) (by decide)
    ⟨true, true, canonicalPermutation53, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21527 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![1, -2, 1, 0, 0], ![-1, 2, -2, 1, 0], ![1, 0, 1, -3, 1]]⟩

def canonicalOutput21527 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1944⟩

theorem canonicalSound21527 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21527.moment H = canonicalOutput21527.moment H :=
  canonical_of_padded canonicalInput21527 canonicalOutput21527 (by decide) (by decide)
    ⟨true, true, canonicalPermutation53, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21528 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![1, -2, 1, 0, 0], ![0, 1, -2, -1, 2], ![0, 1, 1, -1, -1]]⟩

def canonicalOutput21528 : ExponentCode := normalNode4310

theorem canonicalSound21528 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21528.moment H = canonicalOutput21528.moment H :=
  canonical_of_padded canonicalInput21528 canonicalOutput21528 (by decide) (by decide)
    ⟨true, false, canonicalPermutation37, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput21529 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![1, -2, 1, 0, 0], ![0, 2, -2, 1, -1], ![0, 0, 1, -3, 2]]⟩

def canonicalOutput21529 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1943⟩

theorem canonicalSound21529 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21529.moment H = canonicalOutput21529.moment H :=
  canonical_of_padded canonicalInput21529 canonicalOutput21529 (by decide) (by decide)
    ⟨true, true, canonicalPermutation53, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21530 : ExponentCode := ⟨3, 5, ![![-1, 0, 0, 2, -1], ![1, -2, 2, 0, -1], ![0, 2, -2, -2, 2]]⟩

def canonicalOutput21530 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node647⟩

theorem canonicalSound21530 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21530.moment H = canonicalOutput21530.moment H :=
  canonical_of_padded canonicalInput21530 canonicalOutput21530 (by decide) (by decide)
    ⟨true, true, canonicalPermutation53, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21531 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![1, -1, 0, -1, 1], ![-1, 3, -2, 0, 0], ![1, -2, 2, -1, 0]]⟩

def canonicalOutput21531 : ExponentCode := normalNode5536

theorem canonicalSound21531 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21531.moment H = canonicalOutput21531.moment H :=
  canonical_of_padded canonicalInput21531 canonicalOutput21531 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21532 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![1, -1, 0, -1, 1], ![0, 3, -2, 0, -1], ![0, -2, 2, -1, 1]]⟩

def canonicalOutput21532 : ExponentCode := normalNode5536

theorem canonicalSound21532 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21532.moment H = canonicalOutput21532.moment H :=
  canonical_of_padded canonicalInput21532 canonicalOutput21532 (by decide) (by decide)
    ⟨true, true, canonicalPermutation53, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21533 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![1, -1, 1, -1, 0], ![-1, -1, 1, -1, 2], ![1, 2, -2, 0, -1]]⟩

def canonicalOutput21533 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1171

theorem canonicalSound21533 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21533.moment H = canonicalOutput21533.moment H :=
  canonical_of_padded canonicalInput21533 canonicalOutput21533 (by decide) (by decide)
    ⟨true, true, canonicalPermutation53, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21534 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![1, -1, 1, -1, 0], ![-1, 3, -2, 0, 0], ![1, -2, 1, -1, 1]]⟩

def canonicalOutput21534 : ExponentCode := normalNode5431

theorem canonicalSound21534 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21534.moment H = canonicalOutput21534.moment H :=
  canonical_of_padded canonicalInput21534 canonicalOutput21534 (by decide) (by decide)
    ⟨true, true, canonicalPermutation53, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21535 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![1, -1, 1, -1, 0], ![0, 3, -2, 0, -1], ![0, -2, 1, -1, 2]]⟩

def canonicalOutput21535 : ExponentCode := normalNode5430

theorem canonicalSound21535 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21535.moment H = canonicalOutput21535.moment H :=
  canonical_of_padded canonicalInput21535 canonicalOutput21535 (by decide) (by decide)
    ⟨true, true, canonicalPermutation53, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21536 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![1, -1, 1, 0, -1], ![-1, -1, 1, -1, 2], ![1, 2, -2, -1, 0]]⟩

def canonicalOutput21536 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code973

theorem canonicalSound21536 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21536.moment H = canonicalOutput21536.moment H :=
  canonical_of_padded canonicalInput21536 canonicalOutput21536 (by decide) (by decide)
    ⟨true, true, canonicalPermutation53, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21537 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![1, 0, 0, -2, 1], ![-2, -2, 3, 0, 1], ![2, 2, -3, 0, -1]]⟩

def canonicalOutput21537 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1274

theorem canonicalSound21537 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21537.moment H = canonicalOutput21537.moment H :=
  canonical_of_padded canonicalInput21537 canonicalOutput21537 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput21538 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![1, 0, 0, -2, 1], ![-1, -2, 2, 1, 0], ![1, 2, -2, -1, 0]]⟩

def canonicalOutput21538 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2355⟩

theorem canonicalSound21538 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21538.moment H = canonicalOutput21538.moment H :=
  canonical_of_padded canonicalInput21538 canonicalOutput21538 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput21539 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![1, 0, 0, -2, 1], ![-1, -2, 3, 0, 0], ![1, 2, -3, 0, 0]]⟩

def canonicalOutput21539 : ExponentCode := normalNode5961

theorem canonicalSound21539 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21539.moment H = canonicalOutput21539.moment H :=
  canonical_of_padded canonicalInput21539 canonicalOutput21539 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput21540 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![1, 0, 0, -2, 1], ![0, -3, 2, 0, 1], ![0, 3, -2, 0, -1]]⟩

def canonicalOutput21540 : ExponentCode := normalNode5961

theorem canonicalSound21540 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21540.moment H = canonicalOutput21540.moment H :=
  canonical_of_padded canonicalInput21540 canonicalOutput21540 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation188, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput21541 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![1, 0, 0, -2, 1], ![0, -2, 2, 1, -1], ![0, 2, -2, -1, 1]]⟩

def canonicalOutput21541 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2355⟩

theorem canonicalSound21541 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21541.moment H = canonicalOutput21541.moment H :=
  canonical_of_padded canonicalInput21541 canonicalOutput21541 (by decide) (by decide)
    ⟨true, false, canonicalPermutation53, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput21542 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![1, 0, 0, -2, 1], ![0, -2, 3, 0, -1], ![0, 2, -3, 0, 1]]⟩

def canonicalOutput21542 : ExponentCode := normalNode5961

theorem canonicalSound21542 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21542.moment H = canonicalOutput21542.moment H :=
  canonical_of_padded canonicalInput21542 canonicalOutput21542 (by decide) (by decide)
    ⟨true, false, canonicalPermutation53, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput21543 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![1, 0, 0, -1, 0], ![0, -3, 2, 0, 1], ![0, 3, -2, -1, 0]]⟩

def canonicalOutput21543 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2849⟩

theorem canonicalSound21543 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21543.moment H = canonicalOutput21543.moment H :=
  canonical_of_padded canonicalInput21543 canonicalOutput21543 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput21544 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![1, 0, 0, -1, 0], ![0, -3, 2, 1, 0], ![0, 3, -2, -2, 1]]⟩

def canonicalOutput21544 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2852⟩

theorem canonicalSound21544 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21544.moment H = canonicalOutput21544.moment H :=
  canonical_of_padded canonicalInput21544 canonicalOutput21544 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput21545 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![1, 0, 0, -1, 0], ![0, -3, 3, 0, 0], ![0, 3, -3, -1, 1]]⟩

def canonicalOutput21545 : ExponentCode := normalNode11155

theorem canonicalSound21545 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21545.moment H = canonicalOutput21545.moment H :=
  canonical_of_padded canonicalInput21545 canonicalOutput21545 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput21546 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![1, 0, 1, -2, 0], ![-1, 2, -2, 1, 0], ![1, -2, 1, -1, 1]]⟩

def canonicalOutput21546 : ExponentCode := normalNode5872

theorem canonicalSound21546 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21546.moment H = canonicalOutput21546.moment H :=
  canonical_of_padded canonicalInput21546 canonicalOutput21546 (by decide) (by decide)
    ⟨true, false, canonicalPermutation75, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput21547 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![1, 0, 1, -2, 0], ![-1, 3, -2, 0, 0], ![1, -3, 1, 0, 1]]⟩

def canonicalOutput21547 : ExponentCode := normalNode5948

theorem canonicalSound21547 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21547.moment H = canonicalOutput21547.moment H :=
  canonical_of_padded canonicalInput21547 canonicalOutput21547 (by decide) (by decide)
    ⟨true, true, canonicalPermutation53, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21548 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![1, 0, 1, -2, 0], ![0, 2, -2, 1, -1], ![0, -2, 1, -1, 2]]⟩

def canonicalOutput21548 : ExponentCode := normalNode5883

theorem canonicalSound21548 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21548.moment H = canonicalOutput21548.moment H :=
  canonical_of_padded canonicalInput21548 canonicalOutput21548 (by decide) (by decide)
    ⟨true, false, canonicalPermutation75, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput21549 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![1, 0, 1, -2, 0], ![0, 3, -2, 0, -1], ![0, -3, 1, 0, 2]]⟩

def canonicalOutput21549 : ExponentCode := normalNode5949

theorem canonicalSound21549 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21549.moment H = canonicalOutput21549.moment H :=
  canonical_of_padded canonicalInput21549 canonicalOutput21549 (by decide) (by decide)
    ⟨true, false, canonicalPermutation75, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput21550 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![2, 0, 0, -2, 0], ![-1, -3, 2, 0, 2], ![0, 3, -2, 0, -1]]⟩

def canonicalOutput21550 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1178

theorem canonicalSound21550 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21550.moment H = canonicalOutput21550.moment H :=
  canonical_of_padded canonicalInput21550 canonicalOutput21550 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput21551 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![2, 0, 0, -2, 0], ![0, -3, 2, 0, 1], ![-1, 3, -2, 0, 0]]⟩

def canonicalOutput21551 : ExponentCode := normalNode5471

theorem canonicalSound21551 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21551.moment H = canonicalOutput21551.moment H :=
  canonical_of_padded canonicalInput21551 canonicalOutput21551 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput21552 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![2, 0, 0, -1, -1], ![-1, -3, 2, 0, 2], ![0, 3, -2, -1, 0]]⟩

def canonicalOutput21552 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1180

theorem canonicalSound21552 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21552.moment H = canonicalOutput21552.moment H :=
  canonical_of_padded canonicalInput21552 canonicalOutput21552 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput21553 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![2, 0, 0, -1, -1], ![-1, -3, 2, 1, 1], ![0, 3, -2, -2, 1]]⟩

def canonicalOutput21553 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1121

theorem canonicalSound21553 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21553.moment H = canonicalOutput21553.moment H :=
  canonical_of_padded canonicalInput21553 canonicalOutput21553 (by decide) (by decide)
    ⟨true, true, canonicalPermutation53, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21554 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![2, 0, 0, -1, -1], ![-1, -3, 3, 0, 1], ![0, 3, -3, -1, 1]]⟩

def canonicalOutput21554 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1182

theorem canonicalSound21554 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21554.moment H = canonicalOutput21554.moment H :=
  canonical_of_padded canonicalInput21554 canonicalOutput21554 (by decide) (by decide)
    ⟨true, true, canonicalPermutation53, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21555 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![2, 0, 0, -1, -1], ![0, -3, 2, 0, 1], ![-1, 3, -2, -1, 1]]⟩

def canonicalOutput21555 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1191

theorem canonicalSound21555 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21555.moment H = canonicalOutput21555.moment H :=
  canonical_of_padded canonicalInput21555 canonicalOutput21555 (by decide) (by decide)
    ⟨true, true, canonicalPermutation53, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21556 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![2, 0, 0, -1, -1], ![0, -3, 2, 1, 0], ![-1, 3, -2, -2, 2]]⟩

def canonicalOutput21556 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1120

theorem canonicalSound21556 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21556.moment H = canonicalOutput21556.moment H :=
  canonical_of_padded canonicalInput21556 canonicalOutput21556 (by decide) (by decide)
    ⟨true, true, canonicalPermutation53, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21557 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![2, 0, 0, -1, -1], ![0, -3, 3, 0, 0], ![-1, 3, -3, -1, 2]]⟩

def canonicalOutput21557 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1181

theorem canonicalSound21557 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21557.moment H = canonicalOutput21557.moment H :=
  canonical_of_padded canonicalInput21557 canonicalOutput21557 (by decide) (by decide)
    ⟨true, true, canonicalPermutation53, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21558 : ExponentCode := ⟨6, 3, ![![-1, 0, 1], ![-3, 2, 1], ![1, -2, 1], ![1, -2, 1], ![1, 1, -2], ![1, 1, -2]]⟩

def canonicalOutput21558 : ExponentCode := normalNode188

theorem canonicalSound21558 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21558.moment H = canonicalOutput21558.moment H :=
  canonical_of_padded canonicalInput21558 canonicalOutput21558 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation206, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21559 : ExponentCode := ⟨6, 3, ![![-1, 0, 1], ![-2, 0, 2], ![-1, 2, -1], ![1, -2, 1], ![1, 1, -2], ![2, -1, -1]]⟩

def canonicalOutput21559 : ExponentCode := normalNode5561

theorem canonicalSound21559 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21559.moment H = canonicalOutput21559.moment H :=
  canonical_of_padded canonicalInput21559 canonicalOutput21559 (by decide) (by decide)
    ⟨false, false, canonicalPermutation115, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput21560 : ExponentCode := ⟨6, 3, ![![-1, 0, 1], ![-2, 0, 2], ![0, -1, 1], ![0, -1, 1], ![2, -2, 0], ![1, 4, -5]]⟩

def canonicalOutput21560 : ExponentCode := normalNode4587

theorem canonicalSound21560 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21560.moment H = canonicalOutput21560.moment H :=
  canonical_of_padded canonicalInput21560 canonicalOutput21560 (by decide) (by decide)
    ⟨false, false, canonicalPermutation201, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21561 : ExponentCode := ⟨6, 3, ![![-1, 0, 1], ![-2, 1, 1], ![0, -1, 1], ![1, -2, 1], ![1, 1, -2], ![1, 1, -2]]⟩

def canonicalOutput21561 : ExponentCode := normalNode5569

theorem canonicalSound21561 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21561.moment H = canonicalOutput21561.moment H :=
  canonical_of_padded canonicalInput21561 canonicalOutput21561 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation202, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21562 : ExponentCode := ⟨6, 3, ![![-1, 0, 1], ![-2, 1, 1], ![0, -1, 1], ![1, -1, 0], ![0, -2, 2], ![2, 3, -5]]⟩

def canonicalOutput21562 : ExponentCode := normalNode313

theorem canonicalSound21562 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21562.moment H = canonicalOutput21562.moment H :=
  canonical_of_padded canonicalInput21562 canonicalOutput21562 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation387, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21563 : ExponentCode := ⟨6, 3, ![![-1, 0, 1], ![-2, 1, 1], ![0, -1, 1], ![1, 0, -1], ![1, -3, 2], ![1, 3, -4]]⟩

def canonicalOutput21563 : ExponentCode := normalNode5567

theorem canonicalSound21563 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21563.moment H = canonicalOutput21563.moment H :=
  canonical_of_padded canonicalInput21563 canonicalOutput21563 (by decide) (by decide)
    ⟨false, false, canonicalPermutation202, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21564 : ExponentCode := ⟨6, 3, ![![-1, 0, 1], ![-2, 1, 1], ![0, 1, -1], ![1, -1, 0], ![0, -3, 3], ![2, 2, -4]]⟩

def canonicalOutput21564 : ExponentCode := normalNode964

theorem canonicalSound21564 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21564.moment H = canonicalOutput21564.moment H :=
  canonical_of_padded canonicalInput21564 canonicalOutput21564 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation387, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21565 : ExponentCode := ⟨6, 3, ![![-1, 0, 1], ![-2, 1, 1], ![1, -2, 1], ![0, -1, 1], ![1, 1, -2], ![1, 1, -2]]⟩

def canonicalOutput21565 : ExponentCode := normalNode5569

theorem canonicalSound21565 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21565.moment H = canonicalOutput21565.moment H :=
  canonical_of_padded canonicalInput21565 canonicalOutput21565 (by decide) (by decide)
    ⟨false, false, canonicalPermutation203, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21566 : ExponentCode := ⟨6, 3, ![![-1, 0, 1], ![-2, 1, 1], ![1, -2, 1], ![1, -2, 1], ![0, 2, -2], ![1, 1, -2]]⟩

def canonicalOutput21566 : ExponentCode := normalNode5570

theorem canonicalSound21566 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21566.moment H = canonicalOutput21566.moment H :=
  canonical_of_padded canonicalInput21566 canonicalOutput21566 (by decide) (by decide)
    ⟨false, false, canonicalPermutation187, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21567 : ExponentCode := ⟨6, 3, ![![-1, 0, 1], ![-2, 1, 1], ![1, -2, 1], ![1, -2, 1], ![1, 1, -2], ![0, 2, -2]]⟩

def canonicalOutput21567 : ExponentCode := normalNode5570

theorem canonicalSound21567 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21567.moment H = canonicalOutput21567.moment H :=
  canonical_of_padded canonicalInput21567 canonicalOutput21567 (by decide) (by decide)
    ⟨false, false, canonicalPermutation173, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
