import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes00
import NoFourMUBs.Step2.SOS.MomentCodes02
import NoFourMUBs.Step2.SOS.MomentCodes03
import NoFourMUBs.Step2.SOS.MomentCodes05
import NoFourMUBs.Step2.SOS.MomentCodes07
import NoFourMUBs.Step2.SOS.MomentCodes12
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.MomentCodes15
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes36
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes5
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations
import OAI.Analysis.MutuallyUnbiased.PairTargets.ExtraPermutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput11520 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![3, 0, -3, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11520 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node63⟩

theorem canonicalSound11520 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11520.moment H = canonicalOutput11520.moment H :=
  canonical_of_padded canonicalInput11520 canonicalOutput11520 (by decide) (by decide)
    ⟨false, false, canonicalPermutation63, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput11521 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 1, -2, 1], ![1, -2, 1, -2, 1, 1], ![1, 1, -2, 0, 0, 0], ![0, 0, 0, 1, 1, -2], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11521 : ExponentCode := normalNode4210

theorem canonicalSound11521 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11521.moment H = canonicalOutput11521.moment H :=
  canonical_of_padded canonicalInput11521 canonicalOutput11521 (by decide) (by decide)
    ⟨true, false, canonicalPermutation96, OAI.MUB6.Certificate.PairSemantics.permutation302⟩ (by decide +kernel) hH

def canonicalInput11522 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 1, -2, 1], ![1, -2, 1, -2, 1, 1], ![1, 1, -2, 1, 1, -2], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11522 : ExponentCode := normalNode5550

theorem canonicalSound11522 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11522.moment H = canonicalOutput11522.moment H :=
  canonical_of_padded canonicalInput11522 canonicalOutput11522 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation183, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput11523 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 1, -2, 1], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, -2, 1, 1], ![0, 0, 0, 1, 1, -2], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11523 : ExponentCode := normalNode4210

theorem canonicalSound11523 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11523.moment H = canonicalOutput11523.moment H :=
  canonical_of_padded canonicalInput11523 canonicalOutput11523 (by decide) (by decide)
    ⟨true, false, canonicalPermutation92, canonicalPermutation10⟩ (by decide +kernel) hH

def canonicalInput11524 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 1, -2, 1], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, 0, 0, -2, 1, 1], ![0, 0, 0, 1, 1, -2], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11524 : ExponentCode := normalNode3674

theorem canonicalSound11524 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11524.moment H = canonicalOutput11524.moment H :=
  canonical_of_padded canonicalInput11524 canonicalOutput11524 (by decide) (by decide)
    ⟨true, false, canonicalPermutation104, OAI.MUB6.Certificate.PairSemantics.permutation348⟩ (by decide +kernel) hH

def canonicalInput11525 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 1, -2, 1], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 1, 1, -2], ![0, 0, 0, -2, 1, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11525 : ExponentCode := normalNode4210

theorem canonicalSound11525 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11525.moment H = canonicalOutput11525.moment H :=
  canonical_of_padded canonicalInput11525 canonicalOutput11525 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation213, canonicalPermutation10⟩ (by decide +kernel) hH

def canonicalInput11526 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 1, -2, 1], ![1, -2, 1, 1, 1, -2], ![1, 1, -2, -2, 1, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11526 : ExponentCode := normalNode5550

theorem canonicalSound11526 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11526.moment H = canonicalOutput11526.moment H :=
  canonical_of_padded canonicalInput11526 canonicalOutput11526 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation185, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput11527 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 1, -2, 1], ![1, -2, 1, 1, 1, -2], ![1, 1, -2, 0, 0, 0], ![0, 0, 0, -2, 1, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11527 : ExponentCode := normalNode4210

theorem canonicalSound11527 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11527.moment H = canonicalOutput11527.moment H :=
  canonical_of_padded canonicalInput11527 canonicalOutput11527 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation231, OAI.MUB6.Certificate.PairSemantics.permutation302⟩ (by decide +kernel) hH

def canonicalInput11528 : ExponentCode := ⟨3, 5, ![![-2, 1, 1, 1, -1], ![0, -3, 1, 1, 1], ![2, 2, -2, -2, 0]]⟩

def canonicalOutput11528 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node361⟩

theorem canonicalSound11528 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11528.moment H = canonicalOutput11528.moment H :=
  canonical_of_padded canonicalInput11528 canonicalOutput11528 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation168, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput11529 : ExponentCode := ⟨3, 5, ![![-2, 1, 1, 1, -1], ![0, -2, 1, 1, 0], ![2, 1, -2, -2, 1]]⟩

def canonicalOutput11529 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node703⟩

theorem canonicalSound11529 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11529.moment H = canonicalOutput11529.moment H :=
  canonical_of_padded canonicalInput11529 canonicalOutput11529 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation168, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput11530 : ExponentCode := ⟨5, 5, ![![-2, 1, 1, 1, -1], ![0, 0, 0, -3, 3], ![0, 0, 0, 2, -2], ![1, -2, 1, 0, 0], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput11530 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code812

theorem canonicalSound11530 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11530.moment H = canonicalOutput11530.moment H :=
  canonical_of_padded canonicalInput11530 canonicalOutput11530 (by decide) (by decide)
    ⟨true, false, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation180⟩ (by decide +kernel) hH

def canonicalInput11531 : ExponentCode := ⟨3, 5, ![![-2, 1, 1, 1, -1], ![1, -2, 1, 1, -1], ![1, 1, -2, -2, 2]]⟩

def canonicalOutput11531 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1212

theorem canonicalSound11531 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11531.moment H = canonicalOutput11531.moment H :=
  canonical_of_padded canonicalInput11531 canonicalOutput11531 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput11532 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 1, 1, -2], ![1, -2, 1, -2, 1, 1], ![1, 1, -2, 0, 0, 0], ![0, 0, 0, 1, -2, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11532 : ExponentCode := normalNode4210

theorem canonicalSound11532 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11532.moment H = canonicalOutput11532.moment H :=
  canonical_of_padded canonicalInput11532 canonicalOutput11532 (by decide) (by decide)
    ⟨true, false, canonicalPermutation62, OAI.MUB6.Certificate.PairSemantics.permutation302⟩ (by decide +kernel) hH

def canonicalInput11533 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 1, 1, -2], ![1, -2, 1, -2, 1, 1], ![1, 1, -2, 1, -2, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11533 : ExponentCode := normalNode5550

theorem canonicalSound11533 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11533.moment H = canonicalOutput11533.moment H :=
  canonical_of_padded canonicalInput11533 canonicalOutput11533 (by decide) (by decide)
    ⟨true, false, canonicalPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput11534 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 1, 1, -2], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, -2, 1, 1], ![0, 0, 0, 1, -2, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11534 : ExponentCode := normalNode4210

theorem canonicalSound11534 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11534.moment H = canonicalOutput11534.moment H :=
  canonical_of_padded canonicalInput11534 canonicalOutput11534 (by decide) (by decide)
    ⟨true, false, canonicalPermutation57, canonicalPermutation10⟩ (by decide +kernel) hH

def canonicalInput11535 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 1, 1, -2], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, 0, 0, -2, 1, 1], ![0, 0, 0, 1, -2, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11535 : ExponentCode := normalNode3674

theorem canonicalSound11535 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11535.moment H = canonicalOutput11535.moment H :=
  canonical_of_padded canonicalInput11535 canonicalOutput11535 (by decide) (by decide)
    ⟨true, false, canonicalPermutation84, OAI.MUB6.Certificate.PairSemantics.permutation348⟩ (by decide +kernel) hH

def canonicalInput11536 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 1, 1, -2], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 1, -2, 1], ![0, 0, 0, -2, 1, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11536 : ExponentCode := normalNode4210

theorem canonicalSound11536 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11536.moment H = canonicalOutput11536.moment H :=
  canonical_of_padded canonicalInput11536 canonicalOutput11536 (by decide) (by decide)
    ⟨true, false, canonicalPermutation100, canonicalPermutation10⟩ (by decide +kernel) hH

def canonicalInput11537 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 1, 1, -2], ![1, -2, 1, 1, -2, 1], ![1, 1, -2, -2, 1, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11537 : ExponentCode := normalNode5550

theorem canonicalSound11537 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11537.moment H = canonicalOutput11537.moment H :=
  canonical_of_padded canonicalInput11537 canonicalOutput11537 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation198, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput11538 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 1, 1, -2], ![1, -2, 1, 1, -2, 1], ![1, 1, -2, 0, 0, 0], ![0, 0, 0, -2, 1, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11538 : ExponentCode := normalNode4210

theorem canonicalSound11538 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11538.moment H = canonicalOutput11538.moment H :=
  canonical_of_padded canonicalInput11538 canonicalOutput11538 (by decide) (by decide)
    ⟨true, false, canonicalPermutation101, OAI.MUB6.Certificate.PairSemantics.permutation302⟩ (by decide +kernel) hH

def canonicalInput11539 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 2, -1, -1], ![1, -2, 1, -1, -1, 2], ![1, 1, -2, -1, 2, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11539 : ExponentCode := normalNode5557

theorem canonicalSound11539 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11539.moment H = canonicalOutput11539.moment H :=
  canonical_of_padded canonicalInput11539 canonicalOutput11539 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation195, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput11540 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 2, -1, -1], ![1, -2, 1, -1, -1, 2], ![1, 1, -2, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11540 : ExponentCode := normalNode4257

theorem canonicalSound11540 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11540.moment H = canonicalOutput11540.moment H :=
  canonical_of_padded canonicalInput11540 canonicalOutput11540 (by decide) (by decide)
    ⟨true, false, canonicalPermutation95, OAI.MUB6.Certificate.PairSemantics.permutation302⟩ (by decide +kernel) hH

def canonicalInput11541 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 2, -1, -1], ![1, -2, 1, -1, 2, -1], ![1, 1, -2, -1, -1, 2], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11541 : ExponentCode := normalNode5557

theorem canonicalSound11541 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11541.moment H = canonicalOutput11541.moment H :=
  canonical_of_padded canonicalInput11541 canonicalOutput11541 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput11542 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 2, -1, -1], ![1, -2, 1, -1, 2, -1], ![1, 1, -2, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11542 : ExponentCode := normalNode4257

theorem canonicalSound11542 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11542.moment H = canonicalOutput11542.moment H :=
  canonical_of_padded canonicalInput11542 canonicalOutput11542 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation234, OAI.MUB6.Certificate.PairSemantics.permutation302⟩ (by decide +kernel) hH

def canonicalInput11543 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 2, -1, -1], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, -1, -1, 2], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11543 : ExponentCode := normalNode4257

theorem canonicalSound11543 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11543.moment H = canonicalOutput11543.moment H :=
  canonical_of_padded canonicalInput11543 canonicalOutput11543 (by decide) (by decide)
    ⟨true, false, canonicalPermutation90, canonicalPermutation10⟩ (by decide +kernel) hH

def canonicalInput11544 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 2, -1, -1], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, -1, 2, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11544 : ExponentCode := normalNode4257

theorem canonicalSound11544 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11544.moment H = canonicalOutput11544.moment H :=
  canonical_of_padded canonicalInput11544 canonicalOutput11544 (by decide) (by decide)
    ⟨true, false, canonicalPermutation98, canonicalPermutation10⟩ (by decide +kernel) hH

def canonicalInput11545 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 2, -1, -1], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11545 : ExponentCode := normalNode3682

theorem canonicalSound11545 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11545.moment H = canonicalOutput11545.moment H :=
  canonical_of_padded canonicalInput11545 canonicalOutput11545 (by decide) (by decide)
    ⟨true, false, canonicalPermutation104, OAI.MUB6.Certificate.PairSemantics.permutation348⟩ (by decide +kernel) hH

def canonicalInput11546 : ExponentCode := ⟨6, 6, ![![-2, 1, 2, -2, 1, 0], ![1, -2, -1, 1, 1, 0], ![1, 1, -2, 0, 0, 0], ![0, 0, 1, 1, -2, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11546 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1007

theorem canonicalSound11546 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11546.moment H = canonicalOutput11546.moment H :=
  canonical_of_padded canonicalInput11546 canonicalOutput11546 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation398, canonicalPermutation11⟩ (by decide +kernel) hH

def canonicalInput11547 : ExponentCode := ⟨6, 6, ![![-2, 1, 2, -2, 1, 0], ![1, -2, -1, 1, 1, 0], ![1, 1, -1, 1, -2, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11547 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1212

theorem canonicalSound11547 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11547.moment H = canonicalOutput11547.moment H :=
  canonical_of_padded canonicalInput11547 canonicalOutput11547 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation341, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput11548 : ExponentCode := ⟨6, 6, ![![-2, 1, 2, -2, 1, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -4, 1, 1, 0], ![0, 0, 1, 1, -2, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11548 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code947

theorem canonicalSound11548 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11548.moment H = canonicalOutput11548.moment H :=
  canonical_of_padded canonicalInput11548 canonicalOutput11548 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation353, canonicalPermutation10⟩ (by decide +kernel) hH

def canonicalInput11549 : ExponentCode := ⟨6, 6, ![![-2, 1, 2, -2, 1, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, 0, -2, 1, 1, 0], ![0, 0, 1, 1, -2, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11549 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code145

theorem canonicalSound11549 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11549.moment H = canonicalOutput11549.moment H :=
  canonical_of_padded canonicalInput11549 canonicalOutput11549 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation329, OAI.MUB6.Certificate.PairSemantics.permutation324⟩ (by decide +kernel) hH

def canonicalInput11550 : ExponentCode := ⟨6, 6, ![![-2, 1, 2, -2, 1, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, 0, 1, 1, -2, 0], ![0, 0, -2, 1, 1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11550 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code145

theorem canonicalSound11550 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11550.moment H = canonicalOutput11550.moment H :=
  canonical_of_padded canonicalInput11550 canonicalOutput11550 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation324, OAI.MUB6.Certificate.PairSemantics.permutation324⟩ (by decide +kernel) hH

def canonicalInput11551 : ExponentCode := ⟨6, 6, ![![-2, 1, 2, -2, 1, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -1, 1, -2, 0], ![0, 0, -2, 1, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11551 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1007

theorem canonicalSound11551 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11551.moment H = canonicalOutput11551.moment H :=
  canonical_of_padded canonicalInput11551 canonicalOutput11551 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation354, canonicalPermutation4⟩ (by decide +kernel) hH

def canonicalInput11552 : ExponentCode := ⟨6, 6, ![![-2, 1, 2, -2, 1, 0], ![1, -2, 2, 1, -2, 0], ![1, 1, -4, 1, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11552 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code14

theorem canonicalSound11552 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11552.moment H = canonicalOutput11552.moment H :=
  canonical_of_padded canonicalInput11552 canonicalOutput11552 (by decide) (by decide)
    ⟨true, false, canonicalPermutation105, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput11553 : ExponentCode := ⟨6, 6, ![![-2, 1, 2, -2, 1, 0], ![1, -2, 2, 1, -2, 0], ![1, 1, -2, 0, 0, 0], ![0, 0, -2, 1, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11553 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code214

theorem canonicalSound11553 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11553.moment H = canonicalOutput11553.moment H :=
  canonical_of_padded canonicalInput11553 canonicalOutput11553 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation366, OAI.MUB6.Certificate.PairSemantics.permutation302⟩ (by decide +kernel) hH

def canonicalInput11554 : ExponentCode := ⟨3, 4, ![![-2, 1, 2, -1], ![-2, -2, 2, 2], ![4, 1, -4, -1]]⟩

def canonicalOutput11554 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code227

theorem canonicalSound11554 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11554.moment H = canonicalOutput11554.moment H :=
  canonical_of_padded canonicalInput11554 canonicalOutput11554 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput11555 : ExponentCode := ⟨3, 4, ![![-2, 1, 2, -1], ![-2, 1, -2, 3], ![4, -2, 0, -2]]⟩

def canonicalOutput11555 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node136⟩

theorem canonicalSound11555 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11555.moment H = canonicalOutput11555.moment H :=
  canonical_of_padded canonicalInput11555 canonicalOutput11555 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput11556 : ExponentCode := ⟨3, 4, ![![-2, 1, 2, -1], ![-2, 2, -2, 2], ![4, -3, 0, -1]]⟩

def canonicalOutput11556 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node135⟩

theorem canonicalSound11556 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11556.moment H = canonicalOutput11556.moment H :=
  canonical_of_padded canonicalInput11556 canonicalOutput11556 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput11557 : ExponentCode := ⟨3, 4, ![![-2, 1, 2, -1], ![-2, 3, -2, 1], ![4, -4, 0, 0]]⟩

def canonicalOutput11557 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node133⟩

theorem canonicalSound11557 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11557.moment H = canonicalOutput11557.moment H :=
  canonical_of_padded canonicalInput11557 canonicalOutput11557 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput11558 : ExponentCode := ⟨3, 4, ![![-2, 1, 2, -1], ![-2, 3, -1, 0], ![4, -4, -1, 1]]⟩

def canonicalOutput11558 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node82⟩

theorem canonicalSound11558 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11558.moment H = canonicalOutput11558.moment H :=
  canonical_of_padded canonicalInput11558 canonicalOutput11558 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput11559 : ExponentCode := ⟨3, 4, ![![-2, 1, 2, -1], ![-1, -3, 2, 2], ![3, 2, -4, -1]]⟩

def canonicalOutput11559 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code230

theorem canonicalSound11559 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11559.moment H = canonicalOutput11559.moment H :=
  canonical_of_padded canonicalInput11559 canonicalOutput11559 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput11560 : ExponentCode := ⟨3, 4, ![![-2, 1, 2, -1], ![-1, -2, 2, 1], ![3, 1, -4, 0]]⟩

def canonicalOutput11560 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node132⟩

theorem canonicalSound11560 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11560.moment H = canonicalOutput11560.moment H :=
  canonical_of_padded canonicalInput11560 canonicalOutput11560 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput11561 : ExponentCode := ⟨3, 4, ![![-2, 1, 2, -1], ![-1, -2, 3, 0], ![3, 1, -5, 1]]⟩

def canonicalOutput11561 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node72⟩

theorem canonicalSound11561 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11561.moment H = canonicalOutput11561.moment H :=
  canonical_of_padded canonicalInput11561 canonicalOutput11561 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput11562 : ExponentCode := ⟨3, 4, ![![-2, 1, 2, -1], ![-1, 1, -3, 3], ![3, -2, 1, -2]]⟩

def canonicalOutput11562 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node160⟩

theorem canonicalSound11562 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11562.moment H = canonicalOutput11562.moment H :=
  canonical_of_padded canonicalInput11562 canonicalOutput11562 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput11563 : ExponentCode := ⟨3, 4, ![![-2, 1, 2, -1], ![-1, 1, -2, 2], ![3, -2, 0, -1]]⟩

def canonicalOutput11563 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node111⟩

theorem canonicalSound11563 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11563.moment H = canonicalOutput11563.moment H :=
  canonical_of_padded canonicalInput11563 canonicalOutput11563 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation154, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput11564 : ExponentCode := ⟨3, 4, ![![-2, 1, 2, -1], ![-1, 2, -3, 2], ![3, -3, 1, -1]]⟩

def canonicalOutput11564 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node160⟩

theorem canonicalSound11564 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11564.moment H = canonicalOutput11564.moment H :=
  canonical_of_padded canonicalInput11564 canonicalOutput11564 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput11565 : ExponentCode := ⟨3, 4, ![![-2, 1, 2, -1], ![-1, 2, -2, 1], ![3, -3, 0, 0]]⟩

def canonicalOutput11565 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node105⟩

theorem canonicalSound11565 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11565.moment H = canonicalOutput11565.moment H :=
  canonical_of_padded canonicalInput11565 canonicalOutput11565 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput11566 : ExponentCode := ⟨3, 4, ![![-2, 1, 2, -1], ![-1, 3, -3, 1], ![3, -4, 1, 0]]⟩

def canonicalOutput11566 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node158⟩

theorem canonicalSound11566 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11566.moment H = canonicalOutput11566.moment H :=
  canonical_of_padded canonicalInput11566 canonicalOutput11566 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput11567 : ExponentCode := ⟨3, 4, ![![-2, 1, 2, -1], ![-1, 3, -2, 0], ![3, -4, 0, 1]]⟩

def canonicalOutput11567 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node83⟩

theorem canonicalSound11567 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11567.moment H = canonicalOutput11567.moment H :=
  canonical_of_padded canonicalInput11567 canonicalOutput11567 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput11568 : ExponentCode := ⟨3, 4, ![![-2, 1, 2, -1], ![-1, 3, -1, -1], ![3, -4, -1, 2]]⟩

def canonicalOutput11568 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node89⟩

theorem canonicalSound11568 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11568.moment H = canonicalOutput11568.moment H :=
  canonical_of_padded canonicalInput11568 canonicalOutput11568 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput11569 : ExponentCode := ⟨5, 4, ![![-2, 1, 2, -1], ![0, -3, -1, 4], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput11569 : ExponentCode := normalNode5836

theorem canonicalSound11569 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11569.moment H = canonicalOutput11569.moment H :=
  canonical_of_padded canonicalInput11569 canonicalOutput11569 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput11570 : ExponentCode := ⟨5, 4, ![![-2, 1, 2, -1], ![0, -3, -1, 4], ![0, 1, -1, 0], ![1, 1, -1, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput11570 : ExponentCode := normalNode5648

theorem canonicalSound11570 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11570.moment H = canonicalOutput11570.moment H :=
  canonical_of_padded canonicalInput11570 canonicalOutput11570 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput11571 : ExponentCode := ⟨5, 4, ![![-2, 1, 2, -1], ![0, -3, -1, 4], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput11571 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2349⟩

theorem canonicalSound11571 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11571.moment H = canonicalOutput11571.moment H :=
  canonical_of_padded canonicalInput11571 canonicalOutput11571 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput11572 : ExponentCode := ⟨4, 4, ![![-2, 1, 2, -1], ![0, -3, -1, 4], ![0, 2, -2, 0], ![2, 0, 1, -3]]⟩

def canonicalOutput11572 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code495

theorem canonicalSound11572 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11572.moment H = canonicalOutput11572.moment H :=
  canonical_of_padded canonicalInput11572 canonicalOutput11572 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput11573 : ExponentCode := ⟨4, 4, ![![-2, 1, 2, -1], ![0, -3, -1, 4], ![1, 0, -1, 0], ![1, 2, 0, -3]]⟩

def canonicalOutput11573 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1154⟩

theorem canonicalSound11573 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11573.moment H = canonicalOutput11573.moment H :=
  canonical_of_padded canonicalInput11573 canonicalOutput11573 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput11574 : ExponentCode := ⟨4, 4, ![![-2, 1, 2, -1], ![0, -3, -1, 4], ![1, 0, 0, -1], ![1, 2, -1, -2]]⟩

def canonicalOutput11574 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node758⟩

theorem canonicalSound11574 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11574.moment H = canonicalOutput11574.moment H :=
  canonical_of_padded canonicalInput11574 canonicalOutput11574 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput11575 : ExponentCode := ⟨4, 4, ![![-2, 1, 2, -1], ![0, -3, -1, 4], ![1, 0, 1, -2], ![1, 2, -2, -1]]⟩

def canonicalOutput11575 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code328

theorem canonicalSound11575 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11575.moment H = canonicalOutput11575.moment H :=
  canonical_of_padded canonicalInput11575 canonicalOutput11575 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput11576 : ExponentCode := ⟨4, 4, ![![-2, 1, 2, -1], ![0, -3, -1, 4], ![1, 1, -1, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput11576 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node453⟩

theorem canonicalSound11576 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11576.moment H = canonicalOutput11576.moment H :=
  canonical_of_padded canonicalInput11576 canonicalOutput11576 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput11577 : ExponentCode := ⟨4, 4, ![![-2, 1, 2, -1], ![0, -3, -1, 4], ![1, 1, 0, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput11577 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node453⟩

theorem canonicalSound11577 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11577.moment H = canonicalOutput11577.moment H :=
  canonical_of_padded canonicalInput11577 canonicalOutput11577 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput11578 : ExponentCode := ⟨4, 4, ![![-2, 1, 2, -1], ![0, -3, -1, 4], ![1, 2, -2, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput11578 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code328

theorem canonicalSound11578 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11578.moment H = canonicalOutput11578.moment H :=
  canonical_of_padded canonicalInput11578 canonicalOutput11578 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput11579 : ExponentCode := ⟨3, 4, ![![-2, 1, 2, -1], ![0, -3, -1, 4], ![2, 2, -1, -3]]⟩

def canonicalOutput11579 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node191⟩

theorem canonicalSound11579 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11579.moment H = canonicalOutput11579.moment H :=
  canonical_of_padded canonicalInput11579 canonicalOutput11579 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput11580 : ExponentCode := ⟨4, 4, ![![-2, 1, 2, -1], ![0, -3, 0, 3], ![0, 1, -2, 1], ![2, 1, 0, -3]]⟩

def canonicalOutput11580 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code792

theorem canonicalSound11580 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11580.moment H = canonicalOutput11580.moment H :=
  canonical_of_padded canonicalInput11580 canonicalOutput11580 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput11581 : ExponentCode := ⟨5, 4, ![![-2, 1, 2, -1], ![0, -3, 0, 3], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput11581 : ExponentCode := normalNode5854

theorem canonicalSound11581 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11581.moment H = canonicalOutput11581.moment H :=
  canonical_of_padded canonicalInput11581 canonicalOutput11581 (by decide) (by decide)
    ⟨false, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput11582 : ExponentCode := ⟨5, 4, ![![-2, 1, 2, -1], ![0, -3, 0, 3], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput11582 : ExponentCode := normalNode5867

theorem canonicalSound11582 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11582.moment H = canonicalOutput11582.moment H :=
  canonical_of_padded canonicalInput11582 canonicalOutput11582 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput11583 : ExponentCode := ⟨4, 4, ![![-2, 1, 2, -1], ![0, -3, 0, 3], ![1, 0, -2, 1], ![1, 2, 0, -3]]⟩

def canonicalOutput11583 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1183

theorem canonicalSound11583 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11583.moment H = canonicalOutput11583.moment H :=
  canonical_of_padded canonicalInput11583 canonicalOutput11583 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
