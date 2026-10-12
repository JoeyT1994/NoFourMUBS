import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes00
import NoFourMUBs.Step2.SOS.MomentCodes01
import NoFourMUBs.Step2.SOS.MomentCodes03
import NoFourMUBs.Step2.SOS.MomentCodes08
import NoFourMUBs.Step2.SOS.MomentCodes09
import NoFourMUBs.Step2.SOS.MomentCodes10
import NoFourMUBs.Step2.SOS.MomentCodes12
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.MomentCodes15
import NoFourMUBs.Step2.SOS.MomentCodes16
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.MomentCodes20
import NoFourMUBs.Step2.SOS.MomentCodes21
import NoFourMUBs.Step2.SOS.NormalizationNodes002
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes033
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes34
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput4608 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 1, 0, 0, -1], ![0, 1, 0, 0, -1], ![1, -1, 0, -2, 2], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput4608 : ExponentCode := normalNode7595

theorem canonicalSound4608 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4608.moment H = canonicalOutput4608.moment H :=
  canonical_of_padded canonicalInput4608 canonicalOutput4608 (by decide) (by decide)
    ⟨true, false, canonicalPermutation43, canonicalPermutation48⟩ (by decide +kernel) hH

def canonicalInput4609 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 1, 0, 0, -1], ![0, 1, 0, 0, -1], ![1, -1, 1, -2, 1], ![1, 0, -2, 1, 0]]⟩

def canonicalOutput4609 : ExponentCode := normalNode8610

theorem canonicalSound4609 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4609.moment H = canonicalOutput4609.moment H :=
  canonical_of_padded canonicalInput4609 canonicalOutput4609 (by decide) (by decide)
    ⟨true, false, canonicalPermutation43, canonicalPermutation48⟩ (by decide +kernel) hH

def canonicalInput4610 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 1, 0, 0, -1], ![0, 1, 1, -2, 0], ![1, -1, 0, 1, -1], ![1, 0, -2, 0, 1]]⟩

def canonicalOutput4610 : ExponentCode := normalNode8566

theorem canonicalSound4610 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4610.moment H = canonicalOutput4610.moment H :=
  canonical_of_padded canonicalInput4610 canonicalOutput4610 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation169, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput4611 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 1, 0, 1, -2], ![0, 1, 1, -2, 0], ![1, -1, 0, 0, 0], ![1, 0, -2, 0, 1]]⟩

def canonicalOutput4611 : ExponentCode := normalNode8172

theorem canonicalSound4611 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4611.moment H = canonicalOutput4611.moment H :=
  canonical_of_padded canonicalInput4611 canonicalOutput4611 (by decide) (by decide)
    ⟨true, true, canonicalPermutation9, canonicalPermutation52⟩ (by decide +kernel) hH

def canonicalInput4612 : ExponentCode := ⟨4, 5, ![![-2, -1, 1, 1, 1], ![0, 1, 0, 1, -2], ![1, -2, 1, -1, 1], ![1, 2, -2, -1, 0]]⟩

def canonicalOutput4612 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code946

theorem canonicalSound4612 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4612.moment H = canonicalOutput4612.moment H :=
  canonical_of_padded canonicalInput4612 canonicalOutput4612 (by decide) (by decide)
    ⟨true, false, canonicalPermutation43, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput4613 : ExponentCode := ⟨4, 5, ![![-2, -1, 1, 1, 1], ![0, 1, 0, 1, -2], ![1, -1, 1, -1, 0], ![1, 1, -2, -1, 1]]⟩

def canonicalOutput4613 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1009

theorem canonicalSound4613 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4613.moment H = canonicalOutput4613.moment H :=
  canonical_of_padded canonicalInput4613 canonicalOutput4613 (by decide) (by decide)
    ⟨true, false, canonicalPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput4614 : ExponentCode := ⟨4, 5, ![![-2, -1, 1, 1, 1], ![0, 1, 0, 1, -2], ![1, 1, -2, 0, 0], ![1, -1, 1, -2, 1]]⟩

def canonicalOutput4614 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code948

theorem canonicalSound4614 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4614.moment H = canonicalOutput4614.moment H :=
  canonical_of_padded canonicalInput4614 canonicalOutput4614 (by decide) (by decide)
    ⟨true, false, canonicalPermutation43, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput4615 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 1, 1, 1, -3], ![0, 1, -2, 0, 1], ![1, -1, 0, 0, 0], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput4615 : ExponentCode := normalNode8144

theorem canonicalSound4615 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4615.moment H = canonicalOutput4615.moment H :=
  canonical_of_padded canonicalInput4615 canonicalOutput4615 (by decide) (by decide)
    ⟨true, true, canonicalPermutation8, canonicalPermutation52⟩ (by decide +kernel) hH

def canonicalInput4616 : ExponentCode := ⟨4, 5, ![![-2, -1, 1, 1, 1], ![0, 2, -3, 0, 1], ![1, -1, 1, -2, 1], ![1, 0, 1, 1, -3]]⟩

def canonicalOutput4616 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code64

theorem canonicalSound4616 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4616.moment H = canonicalOutput4616.moment H :=
  canonical_of_padded canonicalInput4616 canonicalOutput4616 (by decide) (by decide)
    ⟨true, false, canonicalPermutation25, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4617 : ExponentCode := ⟨4, 5, ![![-2, -1, 1, 1, 1], ![0, 2, -3, 1, 0], ![1, -1, 1, 1, -2], ![1, 0, 1, -3, 1]]⟩

def canonicalOutput4617 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code64

theorem canonicalSound4617 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4617.moment H = canonicalOutput4617.moment H :=
  canonical_of_padded canonicalInput4617 canonicalOutput4617 (by decide) (by decide)
    ⟨true, false, canonicalPermutation55, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4618 : ExponentCode := ⟨4, 5, ![![-2, -1, 1, 1, 1], ![0, 2, -2, 0, 0], ![1, 0, 0, 1, -2], ![1, -1, 1, -2, 1]]⟩

def canonicalOutput4618 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code943

theorem canonicalSound4618 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4618.moment H = canonicalOutput4618.moment H :=
  canonical_of_padded canonicalInput4618 canonicalOutput4618 (by decide) (by decide)
    ⟨true, false, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput4619 : ExponentCode := ⟨3, 5, ![![-2, -1, 1, 1, 1], ![0, 2, -2, 1, -1], ![2, -1, 1, -2, 0]]⟩

def canonicalOutput4619 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node626⟩

theorem canonicalSound4619 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4619.moment H = canonicalOutput4619.moment H :=
  canonical_of_padded canonicalInput4619 canonicalOutput4619 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation160, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput4620 : ExponentCode := ⟨4, 5, ![![-2, -1, 1, 1, 1], ![0, 2, 0, 0, -2], ![1, 0, -2, 1, 0], ![1, -1, 1, -2, 1]]⟩

def canonicalOutput4620 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code943

theorem canonicalSound4620 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4620.moment H = canonicalOutput4620.moment H :=
  canonical_of_padded canonicalInput4620 canonicalOutput4620 (by decide) (by decide)
    ⟨true, false, canonicalPermutation43, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput4621 : ExponentCode := ⟨4, 5, ![![-2, -1, 1, 1, 1], ![0, 2, 0, 1, -3], ![1, -1, -2, 1, 1], ![1, 0, 1, -3, 1]]⟩

def canonicalOutput4621 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code64

theorem canonicalSound4621 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4621.moment H = canonicalOutput4621.moment H :=
  canonical_of_padded canonicalInput4621 canonicalOutput4621 (by decide) (by decide)
    ⟨true, false, canonicalPermutation14, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4622 : ExponentCode := ⟨3, 5, ![![-2, -1, 1, 1, 1], ![0, 3, -2, -2, 1], ![2, -2, 1, 1, -2]]⟩

def canonicalOutput4622 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1038

theorem canonicalSound4622 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4622.moment H = canonicalOutput4622.moment H :=
  canonical_of_padded canonicalInput4622 canonicalOutput4622 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4623 : ExponentCode := ⟨4, 5, ![![-2, -1, 1, 1, 1], ![1, -2, 0, 1, 0], ![0, 2, 1, -1, -2], ![1, 1, -2, -1, 1]]⟩

def canonicalOutput4623 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code599

theorem canonicalSound4623 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4623.moment H = canonicalOutput4623.moment H :=
  canonical_of_padded canonicalInput4623 canonicalOutput4623 (by decide) (by decide)
    ⟨true, false, canonicalPermutation48, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput4624 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![1, -1, -2, 0, 2], ![0, 1, 0, 1, -2], ![0, 1, 1, -2, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput4624 : ExponentCode := normalNode6605

theorem canonicalSound4624 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4624.moment H = canonicalOutput4624.moment H :=
  canonical_of_padded canonicalInput4624 canonicalOutput4624 (by decide) (by decide)
    ⟨true, false, canonicalPermutation20, canonicalPermutation30⟩ (by decide +kernel) hH

def canonicalInput4625 : ExponentCode := ⟨3, 5, ![![-2, -1, 1, 1, 1], ![1, -1, -2, 1, 1], ![1, 2, 1, -2, -2]]⟩

def canonicalOutput4625 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1212

theorem canonicalSound4625 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4625.moment H = canonicalOutput4625.moment H :=
  canonical_of_padded canonicalInput4625 canonicalOutput4625 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4626 : ExponentCode := ⟨4, 5, ![![-2, -1, 1, 1, 1], ![1, -1, -1, 1, 0], ![0, 2, -1, 1, -2], ![1, 0, 1, -3, 1]]⟩

def canonicalOutput4626 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1345

theorem canonicalSound4626 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4626.moment H = canonicalOutput4626.moment H :=
  canonical_of_padded canonicalInput4626 canonicalOutput4626 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation185, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput4627 : ExponentCode := ⟨4, 5, ![![-2, -1, 1, 1, 1], ![1, -1, -1, 1, 0], ![1, 0, 1, 1, -3], ![0, 2, -1, -3, 2]]⟩

def canonicalOutput4627 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1337

theorem canonicalSound4627 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4627.moment H = canonicalOutput4627.moment H :=
  canonical_of_padded canonicalInput4627 canonicalOutput4627 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation186, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput4628 : ExponentCode := ⟨4, 5, ![![-2, -1, 1, 1, 1], ![1, -1, 0, 1, -1], ![0, 2, -2, 1, -1], ![1, 0, 1, -3, 1]]⟩

def canonicalOutput4628 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1345

theorem canonicalSound4628 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4628.moment H = canonicalOutput4628.moment H :=
  canonical_of_padded canonicalInput4628 canonicalOutput4628 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation183, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput4629 : ExponentCode := ⟨4, 5, ![![-2, -1, 1, 1, 1], ![1, 0, -2, 1, 0], ![-2, 2, 0, -1, 1], ![3, -1, 1, -1, -2]]⟩

def canonicalOutput4629 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1017

theorem canonicalSound4629 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4629.moment H = canonicalOutput4629.moment H :=
  canonical_of_padded canonicalInput4629 canonicalOutput4629 (by decide) (by decide)
    ⟨true, false, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput4630 : ExponentCode := ⟨4, 5, ![![-2, -1, 1, 1, 1], ![1, 0, 0, 1, -2], ![0, -1, 2, -2, 1], ![1, 2, -3, 0, 0]]⟩

def canonicalOutput4630 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code930

theorem canonicalSound4630 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4630.moment H = canonicalOutput4630.moment H :=
  canonical_of_padded canonicalInput4630 canonicalOutput4630 (by decide) (by decide)
    ⟨true, false, canonicalPermutation33, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput4631 : ExponentCode := ⟨4, 5, ![![-2, -1, 1, 1, 1], ![1, 1, -2, 0, 0], ![-1, 1, 1, -2, 1], ![2, -1, 0, 1, -2]]⟩

def canonicalOutput4631 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code946

theorem canonicalSound4631 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4631.moment H = canonicalOutput4631.moment H :=
  canonical_of_padded canonicalInput4631 canonicalOutput4631 (by decide) (by decide)
    ⟨true, false, canonicalPermutation22, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput4632 : ExponentCode := ⟨4, 5, ![![-2, -1, 1, 1, 1], ![1, 1, -2, 0, 0], ![-1, 1, 1, 1, -2], ![2, -1, 0, -2, 1]]⟩

def canonicalOutput4632 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code946

theorem canonicalSound4632 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4632.moment H = canonicalOutput4632.moment H :=
  canonical_of_padded canonicalInput4632 canonicalOutput4632 (by decide) (by decide)
    ⟨true, false, canonicalPermutation19, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput4633 : ExponentCode := ⟨4, 5, ![![-2, -1, 1, 1, 1], ![2, -1, -1, 0, 0], ![-1, 1, 1, -2, 1], ![1, 1, -1, 1, -2]]⟩

def canonicalOutput4633 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code557

theorem canonicalSound4633 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4633.moment H = canonicalOutput4633.moment H :=
  canonical_of_padded canonicalInput4633 canonicalOutput4633 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput4634 : ExponentCode := ⟨4, 5, ![![-2, -1, 1, 1, 1], ![2, -1, 0, 0, -1], ![-1, 1, -2, 1, 1], ![1, 1, 1, -2, -1]]⟩

def canonicalOutput4634 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code557

theorem canonicalSound4634 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4634.moment H = canonicalOutput4634.moment H :=
  canonical_of_padded canonicalInput4634 canonicalOutput4634 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput4635 : ExponentCode := ⟨6, 6, ![![-2, -1, 1, 1, 1, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, 1, 0, -2, 1, 0], ![0, 1, 0, 1, -2, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput4635 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code828

theorem canonicalSound4635 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4635.moment H = canonicalOutput4635.moment H :=
  canonical_of_padded canonicalInput4635 canonicalOutput4635 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation367, OAI.MUB6.Certificate.PairSemantics.permutation366⟩ (by decide +kernel) hH

def canonicalInput4636 : ExponentCode := ⟨6, 6, ![![-2, -1, 1, 1, 1, 0], ![1, -2, 1, 0, 0, 0], ![1, 2, -2, -2, 1, 0], ![0, 1, 0, 1, -2, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput4636 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1007

theorem canonicalSound4636 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4636.moment H = canonicalOutput4636.moment H :=
  canonical_of_padded canonicalInput4636 canonicalOutput4636 (by decide) (by decide)
    ⟨true, false, canonicalPermutation82, OAI.MUB6.Certificate.PairSemantics.permutation305⟩ (by decide +kernel) hH

def canonicalInput4637 : ExponentCode := ⟨6, 6, ![![-2, -1, 1, 1, 1, 0], ![1, -2, 1, 0, 0, 0], ![1, 2, -2, 1, -2, 0], ![0, 1, 0, -2, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput4637 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1007

theorem canonicalSound4637 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4637.moment H = canonicalOutput4637.moment H :=
  canonical_of_padded canonicalInput4637 canonicalOutput4637 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation375, OAI.MUB6.Certificate.PairSemantics.permutation305⟩ (by decide +kernel) hH

def canonicalInput4638 : ExponentCode := ⟨6, 6, ![![-2, -1, 1, 1, 1, 0], ![1, -1, 1, -2, 1, 0], ![1, 1, -2, 0, 0, 0], ![0, 1, 0, 1, -2, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput4638 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code948

theorem canonicalSound4638 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4638.moment H = canonicalOutput4638.moment H :=
  canonical_of_padded canonicalInput4638 canonicalOutput4638 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation371, canonicalPermutation5⟩ (by decide +kernel) hH

def canonicalInput4639 : ExponentCode := ⟨6, 6, ![![-2, -1, 1, 1, 1, 0], ![1, -1, 1, -2, 1, 0], ![1, 2, -2, 1, -2, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput4639 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1212

theorem canonicalSound4639 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4639.moment H = canonicalOutput4639.moment H :=
  canonical_of_padded canonicalInput4639 canonicalOutput4639 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation310, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput4640 : ExponentCode := ⟨6, 6, ![![-2, -1, 1, 1, 1, 0], ![1, -1, 1, 1, -2, 0], ![1, 1, -2, 0, 0, 0], ![0, 1, 0, -2, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput4640 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code948

theorem canonicalSound4640 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4640.moment H = canonicalOutput4640.moment H :=
  canonical_of_padded canonicalInput4640 canonicalOutput4640 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation366, canonicalPermutation5⟩ (by decide +kernel) hH

def canonicalInput4641 : ExponentCode := ⟨6, 6, ![![-2, -1, 1, 1, 1, 0], ![1, -1, 1, 1, -2, 0], ![1, 2, -2, -2, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput4641 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1212

theorem canonicalSound4641 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4641.moment H = canonicalOutput4641.moment H :=
  canonical_of_padded canonicalInput4641 canonicalOutput4641 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation312, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput4642 : ExponentCode := ⟨3, 4, ![![-2, -1, 1, 2], ![-3, 2, 2, -1], ![5, -1, -3, -1]]⟩

def canonicalOutput4642 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code100

theorem canonicalSound4642 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4642.moment H = canonicalOutput4642.moment H :=
  canonical_of_padded canonicalInput4642 canonicalOutput4642 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4643 : ExponentCode := ⟨3, 4, ![![-2, -1, 1, 2], ![-3, 3, 1, -1], ![5, -2, -2, -1]]⟩

def canonicalOutput4643 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code101

theorem canonicalSound4643 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4643.moment H = canonicalOutput4643.moment H :=
  canonical_of_padded canonicalInput4643 canonicalOutput4643 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4644 : ExponentCode := ⟨3, 4, ![![-2, -1, 1, 2], ![-2, -1, 1, 2], ![4, 2, -2, -4]]⟩

def canonicalOutput4644 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code225

theorem canonicalSound4644 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4644.moment H = canonicalOutput4644.moment H :=
  canonical_of_padded canonicalInput4644 canonicalOutput4644 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4645 : ExponentCode := ⟨3, 4, ![![-2, -1, 1, 2], ![-2, -1, 3, 0], ![4, 2, -4, -2]]⟩

def canonicalOutput4645 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code33

theorem canonicalSound4645 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4645.moment H = canonicalOutput4645.moment H :=
  canonical_of_padded canonicalInput4645 canonicalOutput4645 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput4646 : ExponentCode := ⟨3, 4, ![![-2, -1, 1, 2], ![-2, 2, -2, 2], ![4, -1, 1, -4]]⟩

def canonicalOutput4646 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code227

theorem canonicalSound4646 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4646.moment H = canonicalOutput4646.moment H :=
  canonical_of_padded canonicalInput4646 canonicalOutput4646 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4647 : ExponentCode := ⟨3, 4, ![![-2, -1, 1, 2], ![-2, 2, 2, -2], ![4, -1, -3, 0]]⟩

def canonicalOutput4647 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node135⟩

theorem canonicalSound4647 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4647.moment H = canonicalOutput4647.moment H :=
  canonical_of_padded canonicalInput4647 canonicalOutput4647 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4648 : ExponentCode := ⟨3, 4, ![![-2, -1, 1, 2], ![-2, 3, -2, 1], ![4, -2, 1, -3]]⟩

def canonicalOutput4648 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code230

theorem canonicalSound4648 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4648.moment H = canonicalOutput4648.moment H :=
  canonical_of_padded canonicalInput4648 canonicalOutput4648 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4649 : ExponentCode := ⟨3, 4, ![![-2, -1, 1, 2], ![-2, 4, -2, 0], ![4, -3, 1, -2]]⟩

def canonicalOutput4649 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code232

theorem canonicalSound4649 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4649.moment H = canonicalOutput4649.moment H :=
  canonical_of_padded canonicalInput4649 canonicalOutput4649 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4650 : ExponentCode := ⟨3, 4, ![![-2, -1, 1, 2], ![-1, -1, 3, -1], ![3, 2, -4, -1]]⟩

def canonicalOutput4650 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node89⟩

theorem canonicalSound4650 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4650.moment H = canonicalOutput4650.moment H :=
  canonical_of_padded canonicalInput4650 canonicalOutput4650 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput4651 : ExponentCode := ⟨3, 4, ![![-2, -1, 1, 2], ![-1, -1, 4, -2], ![3, 2, -5, 0]]⟩

def canonicalOutput4651 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code679

theorem canonicalSound4651 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4651.moment H = canonicalOutput4651.moment H :=
  canonical_of_padded canonicalInput4651 canonicalOutput4651 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4652 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![-1, 0, 0, 1], ![0, 1, -1, 0], ![1, 1, -1, -1], ![2, -1, 1, -2]]⟩

def canonicalOutput4652 : ExponentCode := normalNode11019

theorem canonicalSound4652 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4652.moment H = canonicalOutput4652.moment H :=
  canonical_of_padded canonicalInput4652 canonicalOutput4652 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput4653 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![-1, 1, -1, 1], ![0, 0, 0, 0], ![1, 1, -1, -1], ![2, -1, 1, -2]]⟩

def canonicalOutput4653 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1380

theorem canonicalSound4653 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4653.moment H = canonicalOutput4653.moment H :=
  canonical_of_padded canonicalInput4653 canonicalOutput4653 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, canonicalPermutation32⟩ (by decide +kernel) hH

def canonicalInput4654 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![-1, 1, -1, 1], ![0, 1, -1, 0], ![1, 0, 0, -1], ![2, -1, 1, -2]]⟩

def canonicalOutput4654 : ExponentCode := normalNode11019

theorem canonicalSound4654 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4654.moment H = canonicalOutput4654.moment H :=
  canonical_of_padded canonicalInput4654 canonicalOutput4654 (by decide) (by decide)
    ⟨false, false, canonicalPermutation21, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput4655 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![-1, 1, -1, 1], ![0, 1, -1, 0], ![1, 0, 1, -2], ![2, -1, 0, -1]]⟩

def canonicalOutput4655 : ExponentCode := normalNode10203

theorem canonicalSound4655 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4655.moment H = canonicalOutput4655.moment H :=
  canonical_of_padded canonicalInput4655 canonicalOutput4655 (by decide) (by decide)
    ⟨false, false, canonicalPermutation21, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput4656 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![-1, 1, -1, 1], ![0, 1, -1, 0], ![1, 1, -1, -1], ![2, -2, 2, -2]]⟩

def canonicalOutput4656 : ExponentCode := normalNode733

theorem canonicalSound4656 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4656.moment H = canonicalOutput4656.moment H :=
  canonical_of_padded canonicalInput4656 canonicalOutput4656 (by decide) (by decide)
    ⟨false, false, canonicalPermutation56, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput4657 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![-1, 1, -1, 1], ![0, 1, 0, -1], ![1, -1, 1, -1], ![2, 0, -1, -1]]⟩

def canonicalOutput4657 : ExponentCode := normalNode10196

theorem canonicalSound4657 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4657.moment H = canonicalOutput4657.moment H :=
  canonical_of_padded canonicalInput4657 canonicalOutput4657 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation199, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput4658 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![-1, 1, -1, 1], ![0, 1, 0, -1], ![1, 0, 1, -2], ![2, -1, -1, 0]]⟩

def canonicalOutput4658 : ExponentCode := normalNode8886

theorem canonicalSound4658 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4658.moment H = canonicalOutput4658.moment H :=
  canonical_of_padded canonicalInput4658 canonicalOutput4658 (by decide) (by decide)
    ⟨false, false, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput4659 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![-1, 1, -1, 1], ![1, -1, 1, -1], ![2, 1, -1, -2]]⟩

def canonicalOutput4659 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1397

theorem canonicalSound4659 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4659.moment H = canonicalOutput4659.moment H :=
  canonical_of_padded canonicalInput4659 canonicalOutput4659 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput4660 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![-1, 1, -1, 1], ![1, 1, -1, -1], ![2, -1, 1, -2]]⟩

def canonicalOutput4660 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1380

theorem canonicalSound4660 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4660.moment H = canonicalOutput4660.moment H :=
  canonical_of_padded canonicalInput4660 canonicalOutput4660 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput4661 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![-1, 2, -2, 1], ![1, 0, 0, -1], ![2, -1, 1, -2]]⟩

def canonicalOutput4661 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node822⟩

theorem canonicalSound4661 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4661.moment H = canonicalOutput4661.moment H :=
  canonical_of_padded canonicalInput4661 canonicalOutput4661 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput4662 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![-1, 2, -2, 1], ![1, 0, 1, -2], ![2, -1, 0, -1]]⟩

def canonicalOutput4662 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code563

theorem canonicalSound4662 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4662.moment H = canonicalOutput4662.moment H :=
  canonical_of_padded canonicalInput4662 canonicalOutput4662 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput4663 : ExponentCode := ⟨3, 4, ![![-2, -1, 1, 2], ![-1, 2, 2, -3], ![3, -1, -3, 1]]⟩

def canonicalOutput4663 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node160⟩

theorem canonicalSound4663 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4663.moment H = canonicalOutput4663.moment H :=
  canonical_of_padded canonicalInput4663 canonicalOutput4663 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4664 : ExponentCode := ⟨3, 4, ![![-2, -1, 1, 2], ![-1, 3, -3, 1], ![3, -2, 2, -3]]⟩

def canonicalOutput4664 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code684

theorem canonicalSound4664 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4664.moment H = canonicalOutput4664.moment H :=
  canonical_of_padded canonicalInput4664 canonicalOutput4664 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4665 : ExponentCode := ⟨3, 4, ![![-2, -1, 1, 2], ![-1, 4, -2, -1], ![3, -3, 1, -1]]⟩

def canonicalOutput4665 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node161⟩

theorem canonicalSound4665 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4665.moment H = canonicalOutput4665.moment H :=
  canonical_of_padded canonicalInput4665 canonicalOutput4665 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4666 : ExponentCode := ⟨3, 4, ![![-2, -1, 1, 2], ![0, -3, 3, 0], ![2, 4, -4, -2]]⟩

def canonicalOutput4666 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code32

theorem canonicalSound4666 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4666.moment H = canonicalOutput4666.moment H :=
  canonical_of_padded canonicalInput4666 canonicalOutput4666 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput4667 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -2, 0, 2], ![0, 0, 1, -1], ![1, 0, -1, 0], ![1, 3, -1, -3]]⟩

def canonicalOutput4667 : ExponentCode := normalNode5175

theorem canonicalSound4667 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4667.moment H = canonicalOutput4667.moment H :=
  canonical_of_padded canonicalInput4667 canonicalOutput4667 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput4668 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -2, 0, 2], ![0, 0, 1, -1], ![1, 0, 0, -1], ![1, 3, -2, -2]]⟩

def canonicalOutput4668 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2216⟩

theorem canonicalSound4668 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4668.moment H = canonicalOutput4668.moment H :=
  canonical_of_padded canonicalInput4668 canonicalOutput4668 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput4669 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -2, 0, 2], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 2, 1, -4]]⟩

def canonicalOutput4669 : ExponentCode := normalNode5084

theorem canonicalSound4669 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4669.moment H = canonicalOutput4669.moment H :=
  canonical_of_padded canonicalInput4669 canonicalOutput4669 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput4670 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -2, 0, 2], ![0, 2, -2, 0], ![2, 1, 1, -4]]⟩

def canonicalOutput4670 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node459⟩

theorem canonicalSound4670 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4670.moment H = canonicalOutput4670.moment H :=
  canonical_of_padded canonicalInput4670 canonicalOutput4670 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput4671 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -2, 0, 2], ![0, 3, 1, -4], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput4671 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2218⟩

theorem canonicalSound4671 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4671.moment H = canonicalOutput4671.moment H :=
  canonical_of_padded canonicalInput4671 canonicalOutput4671 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
