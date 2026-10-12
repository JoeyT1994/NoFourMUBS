import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes00
import NoFourMUBs.Step2.SOS.MomentCodes04
import NoFourMUBs.Step2.SOS.MomentCodes06
import NoFourMUBs.Step2.SOS.MomentCodes08
import NoFourMUBs.Step2.SOS.MomentCodes09
import NoFourMUBs.Step2.SOS.MomentCodes12
import NoFourMUBs.Step2.SOS.MomentCodes16
import NoFourMUBs.Step2.SOS.MomentCodes17
import NoFourMUBs.Step2.SOS.NormalizationNodes004
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes008
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes26
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes34
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes36
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes6
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput5504 : ExponentCode := ⟨3, 4, ![![-2, -1, 2, 1], ![-1, 2, -3, 2], ![3, -1, 1, -3]]⟩

def canonicalOutput5504 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node160⟩

theorem canonicalSound5504 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5504.moment H = canonicalOutput5504.moment H :=
  canonical_of_padded canonicalInput5504 canonicalOutput5504 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5505 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![-1, 2, -2, 1], ![1, 0, 1, -2], ![2, -1, -1, 0]]⟩

def canonicalOutput5505 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code636

theorem canonicalSound5505 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5505.moment H = canonicalOutput5505.moment H :=
  canonical_of_padded canonicalInput5505 canonicalOutput5505 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput5506 : ExponentCode := ⟨3, 4, ![![-2, -1, 2, 1], ![-1, 3, -3, 1], ![3, -2, 1, -2]]⟩

def canonicalOutput5506 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node160⟩

theorem canonicalSound5506 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5506.moment H = canonicalOutput5506.moment H :=
  canonical_of_padded canonicalInput5506 canonicalOutput5506 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5507 : ExponentCode := ⟨3, 4, ![![-2, -1, 2, 1], ![-1, 3, -2, 0], ![3, -2, 0, -1]]⟩

def canonicalOutput5507 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node107⟩

theorem canonicalSound5507 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5507.moment H = canonicalOutput5507.moment H :=
  canonical_of_padded canonicalInput5507 canonicalOutput5507 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput5508 : ExponentCode := ⟨3, 4, ![![-2, -1, 2, 1], ![-1, 3, -1, -1], ![3, -2, -1, 0]]⟩

def canonicalOutput5508 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node109⟩

theorem canonicalSound5508 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5508.moment H = canonicalOutput5508.moment H :=
  canonical_of_padded canonicalInput5508 canonicalOutput5508 (by decide) (by decide)
    ⟨true, true, canonicalPermutation1, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput5509 : ExponentCode := ⟨3, 4, ![![-2, -1, 2, 1], ![0, -3, 0, 3], ![2, 4, -2, -4]]⟩

def canonicalOutput5509 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code32

theorem canonicalSound5509 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5509.moment H = canonicalOutput5509.moment H :=
  canonical_of_padded canonicalInput5509 canonicalOutput5509 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput5510 : ExponentCode := ⟨3, 4, ![![-2, -1, 2, 1], ![0, -3, 2, 1], ![2, 4, -4, -2]]⟩

def canonicalOutput5510 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code33

theorem canonicalSound5510 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5510.moment H = canonicalOutput5510.moment H :=
  canonical_of_padded canonicalInput5510 canonicalOutput5510 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput5511 : ExponentCode := ⟨3, 4, ![![-2, -1, 2, 1], ![0, -2, -2, 4], ![2, 3, 0, -5]]⟩

def canonicalOutput5511 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1031

theorem canonicalSound5511 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5511.moment H = canonicalOutput5511.moment H :=
  canonical_of_padded canonicalInput5511 canonicalOutput5511 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5512 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, -2, -1, 3], ![1, 0, -1, 0], ![1, 3, 0, -4]]⟩

def canonicalOutput5512 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1154⟩

theorem canonicalSound5512 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5512.moment H = canonicalOutput5512.moment H :=
  canonical_of_padded canonicalInput5512 canonicalOutput5512 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput5513 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, -2, -1, 3], ![1, 0, 0, -1], ![1, 3, -1, -3]]⟩

def canonicalOutput5513 : ExponentCode := normalNode10906

theorem canonicalSound5513 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5513.moment H = canonicalOutput5513.moment H :=
  canonical_of_padded canonicalInput5513 canonicalOutput5513 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation153, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput5514 : ExponentCode := ⟨3, 4, ![![-2, -1, 2, 1], ![0, -2, -1, 3], ![2, 3, -1, -4]]⟩

def canonicalOutput5514 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node84⟩

theorem canonicalSound5514 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5514.moment H = canonicalOutput5514.moment H :=
  canonical_of_padded canonicalInput5514 canonicalOutput5514 (by decide) (by decide)
    ⟨true, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput5515 : ExponentCode := ⟨5, 4, ![![-2, -1, 2, 1], ![0, -2, 0, 2], ![0, 0, -1, 1], ![1, 0, -1, 0], ![1, 3, 0, -4]]⟩

def canonicalOutput5515 : ExponentCode := normalNode5860

theorem canonicalSound5515 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5515.moment H = canonicalOutput5515.moment H :=
  canonical_of_padded canonicalInput5515 canonicalOutput5515 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput5516 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, -2, 0, 2], ![0, 1, -2, 1], ![2, 2, 0, -4]]⟩

def canonicalOutput5516 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node459⟩

theorem canonicalSound5516 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5516.moment H = canonicalOutput5516.moment H :=
  canonical_of_padded canonicalInput5516 canonicalOutput5516 (by decide) (by decide)
    ⟨true, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput5517 : ExponentCode := ⟨5, 4, ![![-2, -1, 2, 1], ![0, -2, 0, 2], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 2, 0, -3]]⟩

def canonicalOutput5517 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2350⟩

theorem canonicalSound5517 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5517.moment H = canonicalOutput5517.moment H :=
  canonical_of_padded canonicalInput5517 canonicalOutput5517 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput5518 : ExponentCode := ⟨5, 4, ![![-2, -1, 2, 1], ![0, -2, 0, 2], ![0, 1, 1, -2], ![1, 0, -1, 0], ![1, 2, -2, -1]]⟩

def canonicalOutput5518 : ExponentCode := normalNode2264

theorem canonicalSound5518 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5518.moment H = canonicalOutput5518.moment H :=
  canonical_of_padded canonicalInput5518 canonicalOutput5518 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5519 : ExponentCode := ⟨5, 4, ![![-2, -1, 2, 1], ![0, -2, 0, 2], ![0, 2, 1, -3], ![1, 0, -1, 0], ![1, 1, -2, 0]]⟩

def canonicalOutput5519 : ExponentCode := normalNode2271

theorem canonicalSound5519 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5519.moment H = canonicalOutput5519.moment H :=
  canonical_of_padded canonicalInput5519 canonicalOutput5519 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5520 : ExponentCode := ⟨5, 4, ![![-2, -1, 2, 1], ![0, -2, 0, 2], ![0, 3, -2, -1], ![1, 0, -1, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput5520 : ExponentCode := normalNode2273

theorem canonicalSound5520 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5520.moment H = canonicalOutput5520.moment H :=
  canonical_of_padded canonicalInput5520 canonicalOutput5520 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5521 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, -2, 0, 2], ![1, 0, -2, 1], ![1, 3, 0, -4]]⟩

def canonicalOutput5521 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node448⟩

theorem canonicalSound5521 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5521.moment H = canonicalOutput5521.moment H :=
  canonical_of_padded canonicalInput5521 canonicalOutput5521 (by decide) (by decide)
    ⟨true, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput5522 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, -2, 0, 2], ![1, 0, 0, -1], ![1, 3, -2, -2]]⟩

def canonicalOutput5522 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1315⟩

theorem canonicalSound5522 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5522.moment H = canonicalOutput5522.moment H :=
  canonical_of_padded canonicalInput5522 canonicalOutput5522 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation153, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput5523 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, -2, 0, 2], ![1, 1, -3, 1], ![1, 2, 1, -4]]⟩

def canonicalOutput5523 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code274

theorem canonicalSound5523 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5523.moment H = canonicalOutput5523.moment H :=
  canonical_of_padded canonicalInput5523 canonicalOutput5523 (by decide) (by decide)
    ⟨true, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5524 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, -2, 1, 1], ![0, 0, -2, 2], ![2, 3, -1, -4]]⟩

def canonicalOutput5524 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code308

theorem canonicalSound5524 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5524.moment H = canonicalOutput5524.moment H :=
  canonical_of_padded canonicalInput5524 canonicalOutput5524 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput5525 : ExponentCode := ⟨5, 4, ![![-2, -1, 2, 1], ![0, -2, 1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, 1, -2, -1]]⟩

def canonicalOutput5525 : ExponentCode := normalNode5098

theorem canonicalSound5525 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5525.moment H = canonicalOutput5525.moment H :=
  canonical_of_padded canonicalInput5525 canonicalOutput5525 (by decide) (by decide)
    ⟨false, false, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput5526 : ExponentCode := ⟨5, 4, ![![-2, -1, 2, 1], ![0, -2, 1, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 2, -2, -1]]⟩

def canonicalOutput5526 : ExponentCode := normalNode5110

theorem canonicalSound5526 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5526.moment H = canonicalOutput5526.moment H :=
  canonical_of_padded canonicalInput5526 canonicalOutput5526 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput5527 : ExponentCode := ⟨5, 4, ![![-2, -1, 2, 1], ![0, -2, 1, 1], ![0, 1, 0, -1], ![1, 1, -2, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput5527 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2204⟩

theorem canonicalSound5527 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5527.moment H = canonicalOutput5527.moment H :=
  canonical_of_padded canonicalInput5527 canonicalOutput5527 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput5528 : ExponentCode := ⟨5, 4, ![![-2, -1, 2, 1], ![0, -2, 1, 1], ![0, 2, 0, -2], ![1, 0, -1, 0], ![1, 1, -2, 0]]⟩

def canonicalOutput5528 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2040⟩

theorem canonicalSound5528 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5528.moment H = canonicalOutput5528.moment H :=
  canonical_of_padded canonicalInput5528 canonicalOutput5528 (by decide) (by decide)
    ⟨false, false, canonicalPermutation26, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput5529 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, -2, 1, 1], ![0, 3, -3, 0], ![2, 0, 0, -2]]⟩

def canonicalOutput5529 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node601⟩

theorem canonicalSound5529 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5529.moment H = canonicalOutput5529.moment H :=
  canonical_of_padded canonicalInput5529 canonicalOutput5529 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput5530 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, -2, 1, 1], ![0, 3, -2, -1], ![2, 0, -1, -1]]⟩

def canonicalOutput5530 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node603⟩

theorem canonicalSound5530 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5530.moment H = canonicalOutput5530.moment H :=
  canonical_of_padded canonicalInput5530 canonicalOutput5530 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput5531 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, -2, 1, 1], ![0, 3, -1, -2], ![2, 0, -2, 0]]⟩

def canonicalOutput5531 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node602⟩

theorem canonicalSound5531 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5531.moment H = canonicalOutput5531.moment H :=
  canonical_of_padded canonicalInput5531 canonicalOutput5531 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation164, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput5532 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, -2, 1, 1], ![1, 0, -3, 2], ![1, 3, 0, -4]]⟩

def canonicalOutput5532 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code386

theorem canonicalSound5532 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5532.moment H = canonicalOutput5532.moment H :=
  canonical_of_padded canonicalInput5532 canonicalOutput5532 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5533 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, -2, 1, 1], ![1, 0, -2, 1], ![1, 3, -1, -3]]⟩

def canonicalOutput5533 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code799

theorem canonicalSound5533 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5533.moment H = canonicalOutput5533.moment H :=
  canonical_of_padded canonicalInput5533 canonicalOutput5533 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput5534 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, -2, 1, 1], ![1, 0, -1, 0], ![1, 3, -2, -2]]⟩

def canonicalOutput5534 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1310⟩

theorem canonicalSound5534 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5534.moment H = canonicalOutput5534.moment H :=
  canonical_of_padded canonicalInput5534 canonicalOutput5534 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation155, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput5535 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, -2, 1, 1], ![1, 0, 0, -1], ![1, 3, -3, -1]]⟩

def canonicalOutput5535 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1308⟩

theorem canonicalSound5535 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5535.moment H = canonicalOutput5535.moment H :=
  canonical_of_padded canonicalInput5535 canonicalOutput5535 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation153, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput5536 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, -2, 1, 1], ![1, 1, 0, -2], ![1, 2, -3, 0]]⟩

def canonicalOutput5536 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1139

theorem canonicalSound5536 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5536.moment H = canonicalOutput5536.moment H :=
  canonical_of_padded canonicalInput5536 canonicalOutput5536 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput5537 : ExponentCode := ⟨3, 4, ![![-2, -1, 2, 1], ![0, -2, 2, 0], ![2, 3, -4, -1]]⟩

def canonicalOutput5537 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node140⟩

theorem canonicalSound5537 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5537.moment H = canonicalOutput5537.moment H :=
  canonical_of_padded canonicalInput5537 canonicalOutput5537 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput5538 : ExponentCode := ⟨3, 4, ![![-2, -1, 2, 1], ![0, -1, -3, 4], ![2, 2, 1, -5]]⟩

def canonicalOutput5538 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1033

theorem canonicalSound5538 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5538.moment H = canonicalOutput5538.moment H :=
  canonical_of_padded canonicalInput5538 canonicalOutput5538 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5539 : ExponentCode := ⟨5, 4, ![![-2, -1, 2, 1], ![0, -1, -2, 3], ![0, 0, 1, -1], ![0, 1, 0, -1], ![2, 1, -1, -2]]⟩

def canonicalOutput5539 : ExponentCode := normalNode2359

theorem canonicalSound5539 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5539.moment H = canonicalOutput5539.moment H :=
  canonical_of_padded canonicalInput5539 canonicalOutput5539 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5540 : ExponentCode := ⟨5, 4, ![![-2, -1, 2, 1], ![0, -1, -2, 3], ![0, 1, 0, -1], ![0, 1, 0, -1], ![2, 0, 0, -2]]⟩

def canonicalOutput5540 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1699⟩

theorem canonicalSound5540 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5540.moment H = canonicalOutput5540.moment H :=
  canonical_of_padded canonicalInput5540 canonicalOutput5540 (by decide) (by decide)
    ⟨false, false, canonicalPermutation16, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput5541 : ExponentCode := ⟨5, 4, ![![-2, -1, 2, 1], ![0, -1, -2, 3], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput5541 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1684⟩

theorem canonicalSound5541 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5541.moment H = canonicalOutput5541.moment H :=
  canonical_of_padded canonicalInput5541 canonicalOutput5541 (by decide) (by decide)
    ⟨false, false, canonicalPermutation40, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput5542 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, -1, -2, 3], ![0, 1, 0, -1], ![2, 1, 0, -3]]⟩

def canonicalOutput5542 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node726⟩

theorem canonicalSound5542 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5542.moment H = canonicalOutput5542.moment H :=
  canonical_of_padded canonicalInput5542 canonicalOutput5542 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput5543 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, -1, -2, 3], ![0, 1, 1, -2], ![2, 1, -1, -2]]⟩

def canonicalOutput5543 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code542

theorem canonicalSound5543 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5543.moment H = canonicalOutput5543.moment H :=
  canonical_of_padded canonicalInput5543 canonicalOutput5543 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5544 : ExponentCode := ⟨5, 4, ![![-2, -1, 2, 1], ![0, -1, -2, 3], ![0, 2, 0, -2], ![1, 0, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput5544 : ExponentCode := normalNode2005

theorem canonicalSound5544 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5544.moment H = canonicalOutput5544.moment H :=
  canonical_of_padded canonicalInput5544 canonicalOutput5544 (by decide) (by decide)
    ⟨false, false, canonicalPermutation29, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput5545 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, -1, -2, 3], ![1, -1, 0, 0], ![1, 3, 0, -4]]⟩

def canonicalOutput5545 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node929⟩

theorem canonicalSound5545 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5545.moment H = canonicalOutput5545.moment H :=
  canonical_of_padded canonicalInput5545 canonicalOutput5545 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput5546 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, -1, -2, 3], ![1, 0, -1, 0], ![1, 2, 1, -4]]⟩

def canonicalOutput5546 : ExponentCode := normalNode7111

theorem canonicalSound5546 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5546.moment H = canonicalOutput5546.moment H :=
  canonical_of_padded canonicalInput5546 canonicalOutput5546 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput5547 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, -1, -2, 3], ![1, 0, 0, -1], ![1, 2, 0, -3]]⟩

def canonicalOutput5547 : ExponentCode := normalNode6121

theorem canonicalSound5547 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5547.moment H = canonicalOutput5547.moment H :=
  canonical_of_padded canonicalInput5547 canonicalOutput5547 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput5548 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, -1, -2, 3], ![1, 0, 1, -2], ![1, 2, -1, -2]]⟩

def canonicalOutput5548 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code547

theorem canonicalSound5548 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5548.moment H = canonicalOutput5548.moment H :=
  canonical_of_padded canonicalInput5548 canonicalOutput5548 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5549 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, -1, -2, 3], ![1, 1, -2, 0], ![1, 1, 2, -4]]⟩

def canonicalOutput5549 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code570

theorem canonicalSound5549 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5549.moment H = canonicalOutput5549.moment H :=
  canonical_of_padded canonicalInput5549 canonicalOutput5549 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5550 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, -1, -2, 3], ![1, 1, 0, -2], ![1, 1, 0, -2]]⟩

def canonicalOutput5550 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node489⟩

theorem canonicalSound5550 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5550.moment H = canonicalOutput5550.moment H :=
  canonical_of_padded canonicalInput5550 canonicalOutput5550 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput5551 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, -1, -2, 3], ![1, 2, -1, -2], ![1, 0, 1, -2]]⟩

def canonicalOutput5551 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code547

theorem canonicalSound5551 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5551.moment H = canonicalOutput5551.moment H :=
  canonical_of_padded canonicalInput5551 canonicalOutput5551 (by decide) (by decide)
    ⟨false, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5552 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, -1, -2, 3], ![1, 2, 0, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput5552 : ExponentCode := normalNode6121

theorem canonicalSound5552 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5552.moment H = canonicalOutput5552.moment H :=
  canonical_of_padded canonicalInput5552 canonicalOutput5552 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput5553 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, -1, -2, 3], ![1, 2, 1, -4], ![1, 0, -1, 0]]⟩

def canonicalOutput5553 : ExponentCode := normalNode7111

theorem canonicalSound5553 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5553.moment H = canonicalOutput5553.moment H :=
  canonical_of_padded canonicalInput5553 canonicalOutput5553 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput5554 : ExponentCode := ⟨5, 4, ![![-2, -1, 2, 1], ![0, -1, -1, 2], ![0, -1, 0, 1], ![1, 0, -1, 0], ![1, 3, 0, -4]]⟩

def canonicalOutput5554 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2348⟩

theorem canonicalSound5554 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5554.moment H = canonicalOutput5554.moment H :=
  canonical_of_padded canonicalInput5554 canonicalOutput5554 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput5555 : ExponentCode := ⟨5, 4, ![![-2, -1, 2, 1], ![0, -1, -1, 2], ![0, -1, 1, 0], ![1, 0, 0, -1], ![1, 3, -2, -2]]⟩

def canonicalOutput5555 : ExponentCode := normalNode2350

theorem canonicalSound5555 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5555.moment H = canonicalOutput5555.moment H :=
  canonical_of_padded canonicalInput5555 canonicalOutput5555 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5556 : ExponentCode := ⟨5, 4, ![![-2, -1, 2, 1], ![0, -1, -1, 2], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 3, 0, -4]]⟩

def canonicalOutput5556 : ExponentCode := normalNode5836

theorem canonicalSound5556 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5556.moment H = canonicalOutput5556.moment H :=
  canonical_of_padded canonicalInput5556 canonicalOutput5556 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput5557 : ExponentCode := ⟨5, 4, ![![-2, -1, 2, 1], ![0, -1, -1, 2], ![0, 0, -1, 1], ![1, 0, -1, 0], ![1, 2, 1, -4]]⟩

def canonicalOutput5557 : ExponentCode := normalNode1262

theorem canonicalSound5557 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5557.moment H = canonicalOutput5557.moment H :=
  canonical_of_padded canonicalInput5557 canonicalOutput5557 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5558 : ExponentCode := ⟨5, 4, ![![-2, -1, 2, 1], ![0, -1, -1, 2], ![0, 0, -1, 1], ![1, 1, -2, 0], ![1, 1, 2, -4]]⟩

def canonicalOutput5558 : ExponentCode := normalNode2551

theorem canonicalSound5558 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5558.moment H = canonicalOutput5558.moment H :=
  canonical_of_padded canonicalInput5558 canonicalOutput5558 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5559 : ExponentCode := ⟨5, 4, ![![-2, -1, 2, 1], ![0, -1, -1, 2], ![0, 0, 1, -1], ![0, 1, -1, 0], ![2, 1, -1, -2]]⟩

def canonicalOutput5559 : ExponentCode := normalNode2450

theorem canonicalSound5559 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5559.moment H = canonicalOutput5559.moment H :=
  canonical_of_padded canonicalInput5559 canonicalOutput5559 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5560 : ExponentCode := ⟨5, 4, ![![-2, -1, 2, 1], ![0, -1, -1, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![2, 1, -2, -1]]⟩

def canonicalOutput5560 : ExponentCode := normalNode2464

theorem canonicalSound5560 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5560.moment H = canonicalOutput5560.moment H :=
  canonical_of_padded canonicalInput5560 canonicalOutput5560 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5561 : ExponentCode := ⟨5, 4, ![![-2, -1, 2, 1], ![0, -1, -1, 2], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 3, -2, -2]]⟩

def canonicalOutput5561 : ExponentCode := normalNode2542

theorem canonicalSound5561 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5561.moment H = canonicalOutput5561.moment H :=
  canonical_of_padded canonicalInput5561 canonicalOutput5561 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5562 : ExponentCode := ⟨5, 4, ![![-2, -1, 2, 1], ![0, -1, -1, 2], ![0, 0, 1, -1], ![1, 0, 0, -1], ![1, 2, -2, -1]]⟩

def canonicalOutput5562 : ExponentCode := normalNode2485

theorem canonicalSound5562 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5562.moment H = canonicalOutput5562.moment H :=
  canonical_of_padded canonicalInput5562 canonicalOutput5562 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput5563 : ExponentCode := ⟨5, 4, ![![-2, -1, 2, 1], ![0, -1, -1, 2], ![0, 0, 1, -1], ![1, 1, -3, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput5563 : ExponentCode := normalNode2543

theorem canonicalSound5563 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5563.moment H = canonicalOutput5563.moment H :=
  canonical_of_padded canonicalInput5563 canonicalOutput5563 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5564 : ExponentCode := ⟨5, 4, ![![-2, -1, 2, 1], ![0, -1, -1, 2], ![0, 0, 1, -1], ![1, 1, -2, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput5564 : ExponentCode := normalNode2544

theorem canonicalSound5564 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5564.moment H = canonicalOutput5564.moment H :=
  canonical_of_padded canonicalInput5564 canonicalOutput5564 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5565 : ExponentCode := ⟨5, 4, ![![-2, -1, 2, 1], ![0, -1, -1, 2], ![0, 0, 1, -1], ![1, 1, -1, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput5565 : ExponentCode := normalNode2545

theorem canonicalSound5565 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5565.moment H = canonicalOutput5565.moment H :=
  canonical_of_padded canonicalInput5565 canonicalOutput5565 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5566 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, -1, -1, 2], ![0, 1, -2, 1], ![2, 1, 1, -4]]⟩

def canonicalOutput5566 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node447⟩

theorem canonicalSound5566 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5566.moment H = canonicalOutput5566.moment H :=
  canonical_of_padded canonicalInput5566 canonicalOutput5566 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5567 : ExponentCode := ⟨5, 4, ![![-2, -1, 2, 1], ![0, -1, -1, 2], ![0, 1, -1, 0], ![0, 1, -1, 0], ![2, 0, 1, -3]]⟩

def canonicalOutput5567 : ExponentCode := normalNode2561

theorem canonicalSound5567 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5567.moment H = canonicalOutput5567.moment H :=
  canonical_of_padded canonicalInput5567 canonicalOutput5567 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
