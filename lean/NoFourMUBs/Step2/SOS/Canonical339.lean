import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes004
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes21
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput21696 : ExponentCode := ⟨3, 4, ![![-1, 0, 1, 0], ![-3, 4, -2, 1], ![4, -4, 1, -1]]⟩

def canonicalOutput21696 : ExponentCode := normalNode6292

theorem canonicalSound21696 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21696.moment H = canonicalOutput21696.moment H :=
  canonical_of_padded canonicalInput21696 canonicalOutput21696 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21697 : ExponentCode := ⟨3, 4, ![![-1, 0, 1, 0], ![-2, -2, 2, 2], ![3, 2, -3, -2]]⟩

def canonicalOutput21697 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node264⟩

theorem canonicalSound21697 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21697.moment H = canonicalOutput21697.moment H :=
  canonical_of_padded canonicalInput21697 canonicalOutput21697 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21698 : ExponentCode := ⟨3, 4, ![![-1, 0, 1, 0], ![-2, 2, -3, 3], ![3, -2, 2, -3]]⟩

def canonicalOutput21698 : ExponentCode := normalNode7148

theorem canonicalSound21698 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21698.moment H = canonicalOutput21698.moment H :=
  canonical_of_padded canonicalInput21698 canonicalOutput21698 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21699 : ExponentCode := ⟨3, 4, ![![-1, 0, 1, 0], ![-2, 3, -3, 2], ![3, -3, 2, -2]]⟩

def canonicalOutput21699 : ExponentCode := normalNode7148

theorem canonicalSound21699 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21699.moment H = canonicalOutput21699.moment H :=
  canonical_of_padded canonicalInput21699 canonicalOutput21699 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21700 : ExponentCode := ⟨3, 4, ![![-1, 0, 1, 0], ![-2, 3, 1, -2], ![3, -3, -2, 2]]⟩

def canonicalOutput21700 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node265⟩

theorem canonicalSound21700 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21700.moment H = canonicalOutput21700.moment H :=
  canonical_of_padded canonicalInput21700 canonicalOutput21700 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21701 : ExponentCode := ⟨3, 4, ![![-1, 0, 1, 0], ![-2, 5, -2, -1], ![3, -5, 1, 1]]⟩

def canonicalOutput21701 : ExponentCode := normalNode7146

theorem canonicalSound21701 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21701.moment H = canonicalOutput21701.moment H :=
  canonical_of_padded canonicalInput21701 canonicalOutput21701 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21702 : ExponentCode := ⟨3, 4, ![![-1, 0, 1, 0], ![-1, -4, 1, 4], ![2, 4, -2, -4]]⟩

def canonicalOutput21702 : ExponentCode := normalNode9521

theorem canonicalSound21702 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21702.moment H = canonicalOutput21702.moment H :=
  canonical_of_padded canonicalInput21702 canonicalOutput21702 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21703 : ExponentCode := ⟨6, 4, ![![-1, 0, 1, 0], ![-1, -1, 0, 2], ![0, -1, 0, 1], ![0, -1, 1, 0], ![0, 2, -3, 1], ![2, 1, 1, -4]]⟩

def canonicalOutput21703 : ExponentCode := normalNode1179

theorem canonicalSound21703 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21703.moment H = canonicalOutput21703.moment H :=
  canonical_of_padded canonicalInput21703 canonicalOutput21703 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation408, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21704 : ExponentCode := ⟨5, 4, ![![-1, 0, 1, 0], ![-1, 0, -2, 3], ![0, 1, 0, -1], ![1, -1, 2, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput21704 : ExponentCode := normalNode10644

theorem canonicalSound21704 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21704.moment H = canonicalOutput21704.moment H :=
  canonical_of_padded canonicalInput21704 canonicalOutput21704 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation181, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput21705 : ExponentCode := ⟨5, 4, ![![-1, 0, 1, 0], ![-1, 0, -2, 3], ![0, 1, 2, -3], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput21705 : ExponentCode := normalNode9923

theorem canonicalSound21705 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21705.moment H = canonicalOutput21705.moment H :=
  canonical_of_padded canonicalInput21705 canonicalOutput21705 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation181, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput21706 : ExponentCode := ⟨4, 4, ![![-1, 0, 1, 0], ![-1, 0, -2, 3], ![1, -1, 2, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput21706 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1122⟩

theorem canonicalSound21706 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21706.moment H = canonicalOutput21706.moment H :=
  canonical_of_padded canonicalInput21706 canonicalOutput21706 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput21707 : ExponentCode := ⟨6, 4, ![![-1, 0, 1, 0], ![-1, 0, -1, 2], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -3, 1, 1], ![1, 2, 1, -4]]⟩

def canonicalOutput21707 : ExponentCode := normalNode6427

theorem canonicalSound21707 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21707.moment H = canonicalOutput21707.moment H :=
  canonical_of_padded canonicalInput21707 canonicalOutput21707 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation408, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21708 : ExponentCode := ⟨5, 4, ![![-1, 0, 1, 0], ![-1, 0, -1, 2], ![0, 1, -2, 1], ![1, -1, 0, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput21708 : ExponentCode := normalNode10306

theorem canonicalSound21708 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21708.moment H = canonicalOutput21708.moment H :=
  canonical_of_padded canonicalInput21708 canonicalOutput21708 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput21709 : ExponentCode := ⟨6, 4, ![![-1, 0, 1, 0], ![-1, 0, -1, 2], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, -3, 0, 2], ![1, 1, 2, -4]]⟩

def canonicalOutput21709 : ExponentCode := normalNode6408

theorem canonicalSound21709 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21709.moment H = canonicalOutput21709.moment H :=
  canonical_of_padded canonicalInput21709 canonicalOutput21709 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation404, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput21710 : ExponentCode := ⟨6, 4, ![![-1, 0, 1, 0], ![-1, 0, -1, 2], ![0, 1, -1, 0], ![1, 0, -1, 0], ![0, -3, 1, 2], ![1, 2, 1, -4]]⟩

def canonicalOutput21710 : ExponentCode := normalNode6392

theorem canonicalSound21710 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21710.moment H = canonicalOutput21710.moment H :=
  canonical_of_padded canonicalInput21710 canonicalOutput21710 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation387, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21711 : ExponentCode := ⟨6, 4, ![![-1, 0, 1, 0], ![-1, 0, -1, 2], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, -3, 0, 2], ![0, 2, 2, -4]]⟩

def canonicalOutput21711 : ExponentCode := normalNode8867

theorem canonicalSound21711 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21711.moment H = canonicalOutput21711.moment H :=
  canonical_of_padded canonicalInput21711 canonicalOutput21711 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation203, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput21712 : ExponentCode := ⟨5, 4, ![![-1, 0, 1, 0], ![-1, 0, -1, 2], ![0, 1, 0, -1], ![1, -1, 2, -2], ![1, 0, -2, 1]]⟩

def canonicalOutput21712 : ExponentCode := normalNode10658

theorem canonicalSound21712 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21712.moment H = canonicalOutput21712.moment H :=
  canonical_of_padded canonicalInput21712 canonicalOutput21712 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation181, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput21713 : ExponentCode := ⟨5, 4, ![![-1, 0, 1, 0], ![-1, 0, -1, 2], ![0, 1, 2, -3], ![1, -1, -1, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput21713 : ExponentCode := normalNode9922

theorem canonicalSound21713 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21713.moment H = canonicalOutput21713.moment H :=
  canonical_of_padded canonicalInput21713 canonicalOutput21713 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation181, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput21714 : ExponentCode := ⟨5, 4, ![![-1, 0, 1, 0], ![-1, 0, -1, 2], ![0, 1, 2, -3], ![1, -1, 0, 0], ![1, 0, -2, 1]]⟩

def canonicalOutput21714 : ExponentCode := normalNode9933

theorem canonicalSound21714 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21714.moment H = canonicalOutput21714.moment H :=
  canonical_of_padded canonicalInput21714 canonicalOutput21714 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation181, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput21715 : ExponentCode := ⟨5, 4, ![![-1, 0, 1, 0], ![-1, 0, 2, -1], ![0, 1, 0, -1], ![1, -2, -2, 3], ![1, 1, -1, -1]]⟩

def canonicalOutput21715 : ExponentCode := normalNode4871

theorem canonicalSound21715 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21715.moment H = canonicalOutput21715.moment H :=
  canonical_of_padded canonicalInput21715 canonicalOutput21715 (by decide) (by decide)
    ⟨false, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput21716 : ExponentCode := ⟨4, 4, ![![-1, 0, 1, 0], ![-1, 1, -3, 3], ![1, -1, 0, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput21716 : ExponentCode := normalNode9973

theorem canonicalSound21716 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21716.moment H = canonicalOutput21716.moment H :=
  canonical_of_padded canonicalInput21716 canonicalOutput21716 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput21717 : ExponentCode := ⟨4, 4, ![![-1, 0, 1, 0], ![-1, 1, -3, 3], ![1, -1, 2, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput21717 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1217⟩

theorem canonicalSound21717 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21717.moment H = canonicalOutput21717.moment H :=
  canonical_of_padded canonicalInput21717 canonicalOutput21717 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput21718 : ExponentCode := ⟨4, 4, ![![-1, 0, 1, 0], ![-1, 1, -2, 2], ![1, -1, -1, 1], ![1, 0, 2, -3]]⟩

def canonicalOutput21718 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1334⟩

theorem canonicalSound21718 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21718.moment H = canonicalOutput21718.moment H :=
  canonical_of_padded canonicalInput21718 canonicalOutput21718 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput21719 : ExponentCode := ⟨4, 4, ![![-1, 0, 1, 0], ![-1, 1, -2, 2], ![1, -1, 2, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput21719 : ExponentCode := normalNode11069

theorem canonicalSound21719 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21719.moment H = canonicalOutput21719.moment H :=
  canonical_of_padded canonicalInput21719 canonicalOutput21719 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput21720 : ExponentCode := ⟨5, 4, ![![-1, 0, 1, 0], ![-1, 1, -1, 1], ![0, 0, 2, -2], ![1, -1, 0, 0], ![1, 0, -2, 1]]⟩

def canonicalOutput21720 : ExponentCode := normalNode9383

theorem canonicalSound21720 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21720.moment H = canonicalOutput21720.moment H :=
  canonical_of_padded canonicalInput21720 canonicalOutput21720 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation175, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput21721 : ExponentCode := ⟨5, 4, ![![-1, 0, 1, 0], ![-1, 1, -1, 1], ![0, 1, 0, -1], ![1, -1, -3, 3], ![1, -1, 3, -3]]⟩

def canonicalOutput21721 : ExponentCode := normalNode10494

theorem canonicalSound21721 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21721.moment H = canonicalOutput21721.moment H :=
  canonical_of_padded canonicalInput21721 canonicalOutput21721 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21722 : ExponentCode := ⟨5, 4, ![![-1, 0, 1, 0], ![-1, 1, -1, 1], ![0, 1, 0, -1], ![1, -1, -2, 2], ![1, -1, 2, -2]]⟩

def canonicalOutput21722 : ExponentCode := normalNode10495

theorem canonicalSound21722 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21722.moment H = canonicalOutput21722.moment H :=
  canonical_of_padded canonicalInput21722 canonicalOutput21722 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21723 : ExponentCode := ⟨6, 4, ![![-1, 0, 1, 0], ![-1, 1, -1, 1], ![0, 1, 0, -1], ![2, -2, 0, 0], ![0, 0, -3, 3], ![0, 0, 3, -3]]⟩

def canonicalOutput21723 : ExponentCode := normalNode5952

theorem canonicalSound21723 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21723.moment H = canonicalOutput21723.moment H :=
  canonical_of_padded canonicalInput21723 canonicalOutput21723 (by decide) (by decide)
    ⟨false, false, canonicalPermutation152, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput21724 : ExponentCode := ⟨4, 4, ![![-1, 0, 1, 0], ![-1, 1, 2, -2], ![1, -2, -2, 3], ![1, 1, -1, -1]]⟩

def canonicalOutput21724 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1332⟩

theorem canonicalSound21724 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21724.moment H = canonicalOutput21724.moment H :=
  canonical_of_padded canonicalInput21724 canonicalOutput21724 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput21725 : ExponentCode := ⟨5, 4, ![![-1, 0, 1, 0], ![-1, 2, 2, -3], ![0, -1, -1, 2], ![1, -1, -1, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput21725 : ExponentCode := normalNode4892

theorem canonicalSound21725 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21725.moment H = canonicalOutput21725.moment H :=
  canonical_of_padded canonicalInput21725 canonicalOutput21725 (by decide) (by decide)
    ⟨false, true, canonicalPermutation44, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput21726 : ExponentCode := ⟨4, 4, ![![-1, 0, 1, 0], ![-1, 2, 2, -3], ![1, -2, -2, 3], ![1, 0, -1, 0]]⟩

def canonicalOutput21726 : ExponentCode := normalNode11049

theorem canonicalSound21726 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21726.moment H = canonicalOutput21726.moment H :=
  canonical_of_padded canonicalInput21726 canonicalOutput21726 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput21727 : ExponentCode := ⟨4, 4, ![![-1, 0, 1, 0], ![-1, 2, 2, -3], ![1, -2, -1, 2], ![1, 0, -2, 1]]⟩

def canonicalOutput21727 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1366⟩

theorem canonicalSound21727 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21727.moment H = canonicalOutput21727.moment H :=
  canonical_of_padded canonicalInput21727 canonicalOutput21727 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput21728 : ExponentCode := ⟨4, 4, ![![-1, 0, 1, 0], ![-1, 2, 2, -3], ![1, -1, -2, 2], ![1, -1, -1, 1]]⟩

def canonicalOutput21728 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1361⟩

theorem canonicalSound21728 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21728.moment H = canonicalOutput21728.moment H :=
  canonical_of_padded canonicalInput21728 canonicalOutput21728 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput21729 : ExponentCode := ⟨3, 4, ![![-1, 0, 1, 0], ![-1, 3, -3, 1], ![2, -3, 2, -1]]⟩

def canonicalOutput21729 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node273⟩

theorem canonicalSound21729 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21729.moment H = canonicalOutput21729.moment H :=
  canonical_of_padded canonicalInput21729 canonicalOutput21729 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21730 : ExponentCode := ⟨3, 4, ![![-1, 0, 1, 0], ![-1, 5, -3, -1], ![2, -5, 2, 1]]⟩

def canonicalOutput21730 : ExponentCode := normalNode7146

theorem canonicalSound21730 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21730.moment H = canonicalOutput21730.moment H :=
  canonical_of_padded canonicalInput21730 canonicalOutput21730 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21731 : ExponentCode := ⟨3, 4, ![![-1, 0, 1, 0], ![-1, 5, -2, -2], ![2, -5, 1, 2]]⟩

def canonicalOutput21731 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node282⟩

theorem canonicalSound21731 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21731.moment H = canonicalOutput21731.moment H :=
  canonical_of_padded canonicalInput21731 canonicalOutput21731 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21732 : ExponentCode := ⟨3, 4, ![![-1, 0, 1, 0], ![0, -4, 1, 3], ![1, 4, -2, -3]]⟩

def canonicalOutput21732 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node278⟩

theorem canonicalSound21732 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21732.moment H = canonicalOutput21732.moment H :=
  canonical_of_padded canonicalInput21732 canonicalOutput21732 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21733 : ExponentCode := ⟨4, 4, ![![-1, 0, 1, 0], ![0, -3, 1, 2], ![0, 1, 1, -2], ![1, 2, -3, 0]]⟩

def canonicalOutput21733 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node951⟩

theorem canonicalSound21733 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21733.moment H = canonicalOutput21733.moment H :=
  canonical_of_padded canonicalInput21733 canonicalOutput21733 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput21734 : ExponentCode := ⟨4, 4, ![![-1, 0, 1, 0], ![0, -3, 1, 2], ![0, 2, -3, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput21734 : ExponentCode := normalNode7841

theorem canonicalSound21734 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21734.moment H = canonicalOutput21734.moment H :=
  canonical_of_padded canonicalInput21734 canonicalOutput21734 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21735 : ExponentCode := ⟨3, 4, ![![-1, 0, 1, 0], ![0, -2, -3, 5], ![1, 2, 2, -5]]⟩

def canonicalOutput21735 : ExponentCode := normalNode7141

theorem canonicalSound21735 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21735.moment H = canonicalOutput21735.moment H :=
  canonical_of_padded canonicalInput21735 canonicalOutput21735 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21736 : ExponentCode := ⟨4, 4, ![![-1, 0, 1, 0], ![0, -2, 0, 2], ![0, -1, 2, -1], ![1, 3, -3, -1]]⟩

def canonicalOutput21736 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node816⟩

theorem canonicalSound21736 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21736.moment H = canonicalOutput21736.moment H :=
  canonical_of_padded canonicalInput21736 canonicalOutput21736 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput21737 : ExponentCode := ⟨4, 4, ![![-1, 0, 1, 0], ![0, -2, 0, 2], ![0, 3, -3, 0], ![1, -1, 2, -2]]⟩

def canonicalOutput21737 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1191⟩

theorem canonicalSound21737 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21737.moment H = canonicalOutput21737.moment H :=
  canonical_of_padded canonicalInput21737 canonicalOutput21737 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21738 : ExponentCode := ⟨4, 4, ![![-1, 0, 1, 0], ![0, -2, 1, 1], ![0, 1, -3, 2], ![1, 1, 1, -3]]⟩

def canonicalOutput21738 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node952⟩

theorem canonicalSound21738 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21738.moment H = canonicalOutput21738.moment H :=
  canonical_of_padded canonicalInput21738 canonicalOutput21738 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21739 : ExponentCode := ⟨4, 4, ![![-1, 0, 1, 0], ![0, -2, 1, 1], ![0, 1, -2, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput21739 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1009⟩

theorem canonicalSound21739 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21739.moment H = canonicalOutput21739.moment H :=
  canonical_of_padded canonicalInput21739 canonicalOutput21739 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21740 : ExponentCode := ⟨4, 4, ![![-1, 0, 1, 0], ![0, -1, -2, 3], ![0, 1, 2, -3], ![1, 0, -1, 0]]⟩

def canonicalOutput21740 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1201⟩

theorem canonicalSound21740 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21740.moment H = canonicalOutput21740.moment H :=
  canonical_of_padded canonicalInput21740 canonicalOutput21740 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput21741 : ExponentCode := ⟨4, 4, ![![-1, 0, 1, 0], ![0, -1, -2, 3], ![0, 2, 1, -3], ![1, -1, 0, 0]]⟩

def canonicalOutput21741 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1267⟩

theorem canonicalSound21741 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21741.moment H = canonicalOutput21741.moment H :=
  canonical_of_padded canonicalInput21741 canonicalOutput21741 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput21742 : ExponentCode := ⟨5, 4, ![![-1, 0, 1, 0], ![0, -1, -1, 2], ![0, 0, -2, 2], ![0, 1, 2, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput21742 : ExponentCode := normalNode9897

theorem canonicalSound21742 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21742.moment H = canonicalOutput21742.moment H :=
  canonical_of_padded canonicalInput21742 canonicalOutput21742 (by decide) (by decide)
    ⟨false, true, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput21743 : ExponentCode := ⟨4, 4, ![![-1, 0, 1, 0], ![0, -1, -1, 2], ![0, 1, -2, 1], ![1, 0, 2, -3]]⟩

def canonicalOutput21743 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1207⟩

theorem canonicalSound21743 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21743.moment H = canonicalOutput21743.moment H :=
  canonical_of_padded canonicalInput21743 canonicalOutput21743 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21744 : ExponentCode := ⟨4, 4, ![![-1, 0, 1, 0], ![0, -1, -1, 2], ![0, 1, 1, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput21744 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1241⟩

theorem canonicalSound21744 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21744.moment H = canonicalOutput21744.moment H :=
  canonical_of_padded canonicalInput21744 canonicalOutput21744 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput21745 : ExponentCode := ⟨4, 4, ![![-1, 0, 1, 0], ![0, -1, -1, 2], ![0, 1, 2, -3], ![1, 0, -2, 1]]⟩

def canonicalOutput21745 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1206⟩

theorem canonicalSound21745 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21745.moment H = canonicalOutput21745.moment H :=
  canonical_of_padded canonicalInput21745 canonicalOutput21745 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput21746 : ExponentCode := ⟨4, 4, ![![-1, 0, 1, 0], ![0, -1, -1, 2], ![0, 2, -1, -1], ![1, -1, 1, -1]]⟩

def canonicalOutput21746 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1126⟩

theorem canonicalSound21746 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21746.moment H = canonicalOutput21746.moment H :=
  canonical_of_padded canonicalInput21746 canonicalOutput21746 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput21747 : ExponentCode := ⟨6, 4, ![![-1, 0, 1, 0], ![0, -1, 0, 1], ![-1, -1, 0, 2], ![0, -1, 1, 0], ![0, 2, -3, 1], ![2, 1, 1, -4]]⟩

def canonicalOutput21747 : ExponentCode := normalNode1179

theorem canonicalSound21747 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21747.moment H = canonicalOutput21747.moment H :=
  canonical_of_padded canonicalInput21747 canonicalOutput21747 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation407, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21748 : ExponentCode := ⟨6, 4, ![![-1, 0, 1, 0], ![0, -1, 0, 1], ![0, -1, 0, 1], ![-1, -1, 1, 1], ![0, 2, -3, 1], ![2, 1, 1, -4]]⟩

def canonicalOutput21748 : ExponentCode := normalNode1185

theorem canonicalSound21748 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21748.moment H = canonicalOutput21748.moment H :=
  canonical_of_padded canonicalInput21748 canonicalOutput21748 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation400, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21749 : ExponentCode := ⟨6, 4, ![![-1, 0, 1, 0], ![0, -1, 0, 1], ![0, -1, 0, 1], ![0, -1, 1, 0], ![-1, 2, -3, 2], ![2, 1, 1, -4]]⟩

def canonicalOutput21749 : ExponentCode := normalNode1247

theorem canonicalSound21749 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21749.moment H = canonicalOutput21749.moment H :=
  canonical_of_padded canonicalInput21749 canonicalOutput21749 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation379, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput21750 : ExponentCode := ⟨6, 4, ![![-1, 0, 1, 0], ![0, -1, 0, 1], ![0, -1, 0, 1], ![0, -1, 1, 0], ![0, 2, -3, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput21750 : ExponentCode := normalNode7831

theorem canonicalSound21750 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21750.moment H = canonicalOutput21750.moment H :=
  canonical_of_padded canonicalInput21750 canonicalOutput21750 (by decide) (by decide)
    ⟨false, true, canonicalPermutation91, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21751 : ExponentCode := ⟨6, 4, ![![-1, 0, 1, 0], ![0, -1, 0, 1], ![1, -1, 0, 0], ![0, 2, -1, -1], ![0, 0, -3, 3], ![0, 0, 3, -3]]⟩

def canonicalOutput21751 : ExponentCode := normalNode10625

theorem canonicalSound21751 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21751.moment H = canonicalOutput21751.moment H :=
  canonical_of_padded canonicalInput21751 canonicalOutput21751 (by decide) (by decide)
    ⟨false, false, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21752 : ExponentCode := ⟨3, 4, ![![-1, 0, 1, 0], ![0, 0, -4, 4], ![1, 0, 3, -4]]⟩

def canonicalOutput21752 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node54⟩

theorem canonicalSound21752 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21752.moment H = canonicalOutput21752.moment H :=
  canonical_of_padded canonicalInput21752 canonicalOutput21752 (by decide) (by decide)
    ⟨false, true, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput21753 : ExponentCode := ⟨4, 4, ![![-1, 0, 1, 0], ![0, 0, -3, 3], ![0, 1, 0, -1], ![1, -1, 2, -2]]⟩

def canonicalOutput21753 : ExponentCode := normalNode9926

theorem canonicalSound21753 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21753.moment H = canonicalOutput21753.moment H :=
  canonical_of_padded canonicalInput21753 canonicalOutput21753 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput21754 : ExponentCode := ⟨4, 4, ![![-1, 0, 1, 0], ![0, 0, -3, 3], ![0, 1, 2, -3], ![1, -1, 0, 0]]⟩

def canonicalOutput21754 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1225⟩

theorem canonicalSound21754 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21754.moment H = canonicalOutput21754.moment H :=
  canonical_of_padded canonicalInput21754 canonicalOutput21754 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput21755 : ExponentCode := ⟨4, 4, ![![-1, 0, 1, 0], ![0, 0, -2, 2], ![0, 1, 1, -2], ![1, -1, 0, 0]]⟩

def canonicalOutput21755 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1264⟩

theorem canonicalSound21755 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21755.moment H = canonicalOutput21755.moment H :=
  canonical_of_padded canonicalInput21755 canonicalOutput21755 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput21756 : ExponentCode := ⟨6, 4, ![![-1, 0, 1, 0], ![0, 0, -1, 1], ![-1, 0, -1, 2], ![0, 1, -1, 0], ![1, -3, 1, 1], ![1, 2, 1, -4]]⟩

def canonicalOutput21756 : ExponentCode := normalNode6427

theorem canonicalSound21756 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21756.moment H = canonicalOutput21756.moment H :=
  canonical_of_padded canonicalInput21756 canonicalOutput21756 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation407, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21757 : ExponentCode := ⟨6, 4, ![![-1, 0, 1, 0], ![0, 0, -1, 1], ![-1, 1, -1, 1], ![0, 1, -1, 0], ![1, -3, 0, 2], ![1, 1, 2, -4]]⟩

def canonicalOutput21757 : ExponentCode := normalNode6409

theorem canonicalSound21757 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21757.moment H = canonicalOutput21757.moment H :=
  canonical_of_padded canonicalInput21757 canonicalOutput21757 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation407, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput21758 : ExponentCode := ⟨6, 4, ![![-1, 0, 1, 0], ![0, 0, -1, 1], ![-1, 1, -1, 1], ![1, 0, -1, 0], ![0, -3, 1, 2], ![1, 2, 1, -4]]⟩

def canonicalOutput21758 : ExponentCode := normalNode6395

theorem canonicalSound21758 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21758.moment H = canonicalOutput21758.moment H :=
  canonical_of_padded canonicalInput21758 canonicalOutput21758 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation382, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21759 : ExponentCode := ⟨6, 4, ![![-1, 0, 1, 0], ![0, 0, -1, 1], ![-1, 1, -1, 1], ![1, 0, -1, 0], ![1, -3, 0, 2], ![0, 2, 2, -4]]⟩

def canonicalOutput21759 : ExponentCode := normalNode9334

theorem canonicalSound21759 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21759.moment H = canonicalOutput21759.moment H :=
  canonical_of_padded canonicalInput21759 canonicalOutput21759 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation224, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
