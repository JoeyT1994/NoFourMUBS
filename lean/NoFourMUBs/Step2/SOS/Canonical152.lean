import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes02
import NoFourMUBs.Step2.SOS.MomentCodes07
import NoFourMUBs.Step2.SOS.MomentCodes12
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.MomentCodes15
import NoFourMUBs.Step2.SOS.MomentCodes16
import NoFourMUBs.Step2.SOS.NormalizationNodes012
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes018
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes21
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes23
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes30
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput9728 : ExponentCode := ⟨4, 4, ![![-2, 1, -3, 4], ![0, 1, 2, -3], ![1, -2, 2, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput9728 : ExponentCode := normalNode9137

theorem canonicalSound9728 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9728.moment H = canonicalOutput9728.moment H :=
  canonical_of_padded canonicalInput9728 canonicalOutput9728 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation155, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput9729 : ExponentCode := ⟨4, 4, ![![-2, 1, -3, 4], ![0, 1, 3, -4], ![1, -2, 0, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput9729 : ExponentCode := normalNode9053

theorem canonicalSound9729 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9729.moment H = canonicalOutput9729.moment H :=
  canonical_of_padded canonicalInput9729 canonicalOutput9729 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation153, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput9730 : ExponentCode := ⟨4, 4, ![![-2, 1, -3, 4], ![0, 1, 3, -4], ![1, -2, 1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput9730 : ExponentCode := normalNode9118

theorem canonicalSound9730 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9730.moment H = canonicalOutput9730.moment H :=
  canonical_of_padded canonicalInput9730 canonicalOutput9730 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation155, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput9731 : ExponentCode := ⟨4, 4, ![![-2, 1, -3, 4], ![1, -2, 2, -1], ![0, 1, 2, -3], ![1, 0, -1, 0]]⟩

def canonicalOutput9731 : ExponentCode := normalNode9137

theorem canonicalSound9731 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9731.moment H = canonicalOutput9731.moment H :=
  canonical_of_padded canonicalInput9731 canonicalOutput9731 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation155, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput9732 : ExponentCode := ⟨4, 4, ![![-2, 1, -3, 4], ![1, -2, 3, -2], ![0, 1, 1, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput9732 : ExponentCode := normalNode10303

theorem canonicalSound9732 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9732.moment H = canonicalOutput9732.moment H :=
  canonical_of_padded canonicalInput9732 canonicalOutput9732 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput9733 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, -2, 0, 2], ![0, 0, 1, -1], ![1, 0, -1, 0], ![1, 1, 2, -4]]⟩

def canonicalOutput9733 : ExponentCode := normalNode4087

theorem canonicalSound9733 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9733.moment H = canonicalOutput9733.moment H :=
  canonical_of_padded canonicalInput9733 canonicalOutput9733 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation171, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9734 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, -2, 0, 2], ![0, 0, 1, -1], ![1, 0, 2, -3], ![1, 1, -1, -1]]⟩

def canonicalOutput9734 : ExponentCode := normalNode4093

theorem canonicalSound9734 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9734.moment H = canonicalOutput9734.moment H :=
  canonical_of_padded canonicalInput9734 canonicalOutput9734 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation171, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9735 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, -2, 0, 2], ![0, 0, 2, -2], ![1, 0, 1, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput9735 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code904

theorem canonicalSound9735 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9735.moment H = canonicalOutput9735.moment H :=
  canonical_of_padded canonicalInput9735 canonicalOutput9735 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation171, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9736 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, -2, 0, 2], ![0, 0, 3, -3], ![1, 0, -1, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput9736 : ExponentCode := normalNode4105

theorem canonicalSound9736 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9736.moment H = canonicalOutput9736.moment H :=
  canonical_of_padded canonicalInput9736 canonicalOutput9736 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation171, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9737 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, -2, 0, 2], ![0, 0, 3, -3], ![1, 0, 0, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput9737 : ExponentCode := normalNode4107

theorem canonicalSound9737 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9737.moment H = canonicalOutput9737.moment H :=
  canonical_of_padded canonicalInput9737 canonicalOutput9737 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation171, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9738 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, -2, 0, 2], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 3, -4]]⟩

def canonicalOutput9738 : ExponentCode := normalNode4131

theorem canonicalSound9738 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9738.moment H = canonicalOutput9738.moment H :=
  canonical_of_padded canonicalInput9738 canonicalOutput9738 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation174, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9739 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, -2, 0, 2], ![0, 1, 3, -4], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput9739 : ExponentCode := normalNode4126

theorem canonicalSound9739 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9739.moment H = canonicalOutput9739.moment H :=
  canonical_of_padded canonicalInput9739 canonicalOutput9739 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation174, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9740 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![0, -2, 0, 2], ![1, 0, -1, 0], ![1, 1, 3, -5]]⟩

def canonicalOutput9740 : ExponentCode := normalNode9852

theorem canonicalSound9740 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9740.moment H = canonicalOutput9740.moment H :=
  canonical_of_padded canonicalInput9740 canonicalOutput9740 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput9741 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![0, -2, 0, 2], ![1, 0, 1, -2], ![1, 1, 1, -3]]⟩

def canonicalOutput9741 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code158

theorem canonicalSound9741 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9741.moment H = canonicalOutput9741.moment H :=
  canonical_of_padded canonicalInput9741 canonicalOutput9741 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput9742 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, -2, 1, 1], ![0, 0, -1, 1], ![1, 0, 1, -2], ![1, 1, 1, -3]]⟩

def canonicalOutput9742 : ExponentCode := normalNode4484

theorem canonicalSound9742 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9742.moment H = canonicalOutput9742.moment H :=
  canonical_of_padded canonicalInput9742 canonicalOutput9742 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation171, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9743 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, -2, 1, 1], ![0, 0, 1, -1], ![1, 0, -1, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput9743 : ExponentCode := normalNode4501

theorem canonicalSound9743 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9743.moment H = canonicalOutput9743.moment H :=
  canonical_of_padded canonicalInput9743 canonicalOutput9743 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation171, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9744 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, -2, 1, 1], ![0, 0, 1, -1], ![1, 0, 1, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput9744 : ExponentCode := normalNode4504

theorem canonicalSound9744 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9744.moment H = canonicalOutput9744.moment H :=
  canonical_of_padded canonicalInput9744 canonicalOutput9744 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation171, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9745 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, -2, 1, 1], ![0, 0, 1, -1], ![1, 0, 2, -3], ![1, 1, -2, 0]]⟩

def canonicalOutput9745 : ExponentCode := normalNode4456

theorem canonicalSound9745 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9745.moment H = canonicalOutput9745.moment H :=
  canonical_of_padded canonicalInput9745 canonicalOutput9745 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation171, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput9746 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, -2, 1, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 0, 3, -4]]⟩

def canonicalOutput9746 : ExponentCode := normalNode4510

theorem canonicalSound9746 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9746.moment H = canonicalOutput9746.moment H :=
  canonical_of_padded canonicalInput9746 canonicalOutput9746 (by decide) (by decide)
    ⟨false, false, canonicalPermutation37, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput9747 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, -2, 1, 1], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput9747 : ExponentCode := normalNode4564

theorem canonicalSound9747 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9747.moment H = canonicalOutput9747.moment H :=
  canonical_of_padded canonicalInput9747 canonicalOutput9747 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation174, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9748 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, -2, 1, 1], ![0, 1, 2, -3], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput9748 : ExponentCode := normalNode4548

theorem canonicalSound9748 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9748.moment H = canonicalOutput9748.moment H :=
  canonical_of_padded canonicalInput9748 canonicalOutput9748 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation174, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9749 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, -2, 1, 1], ![0, 1, 3, -4], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput9749 : ExponentCode := normalNode4542

theorem canonicalSound9749 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9749.moment H = canonicalOutput9749.moment H :=
  canonical_of_padded canonicalInput9749 canonicalOutput9749 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation174, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9750 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![0, -2, 1, 1], ![1, 0, 2, -3], ![1, 1, -1, -1]]⟩

def canonicalOutput9750 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1022

theorem canonicalSound9750 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9750.moment H = canonicalOutput9750.moment H :=
  canonical_of_padded canonicalInput9750 canonicalOutput9750 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9751 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![0, -2, 1, 1], ![1, 0, 3, -4], ![1, 1, -2, 0]]⟩

def canonicalOutput9751 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code996

theorem canonicalSound9751 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9751.moment H = canonicalOutput9751.moment H :=
  canonical_of_padded canonicalInput9751 canonicalOutput9751 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput9752 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, -2, 2, 0], ![0, 0, -1, 1], ![1, 0, 0, -1], ![1, 1, 1, -3]]⟩

def canonicalOutput9752 : ExponentCode := normalNode4655

theorem canonicalSound9752 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9752.moment H = canonicalOutput9752.moment H :=
  canonical_of_padded canonicalInput9752 canonicalOutput9752 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation171, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9753 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, -2, 2, 0], ![0, 0, 1, -1], ![1, 0, -2, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput9753 : ExponentCode := normalNode4059

theorem canonicalSound9753 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9753.moment H = canonicalOutput9753.moment H :=
  canonical_of_padded canonicalInput9753 canonicalOutput9753 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation171, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput9754 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, -2, 2, 0], ![0, 0, 1, -1], ![1, 0, 0, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput9754 : ExponentCode := normalNode4055

theorem canonicalSound9754 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9754.moment H = canonicalOutput9754.moment H :=
  canonical_of_padded canonicalInput9754 canonicalOutput9754 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation171, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput9755 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, -2, 2, 0], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput9755 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2041⟩

theorem canonicalSound9755 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9755.moment H = canonicalOutput9755.moment H :=
  canonical_of_padded canonicalInput9755 canonicalOutput9755 (by decide) (by decide)
    ⟨false, false, canonicalPermutation37, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput9756 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![0, -2, 2, 0], ![0, 1, -1, 0], ![2, 0, 1, -3]]⟩

def canonicalOutput9756 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1376⟩

theorem canonicalSound9756 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9756.moment H = canonicalOutput9756.moment H :=
  canonical_of_padded canonicalInput9756 canonicalOutput9756 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput9757 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, -2, 2, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput9757 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2043⟩

theorem canonicalSound9757 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9757.moment H = canonicalOutput9757.moment H :=
  canonical_of_padded canonicalInput9757 canonicalOutput9757 (by decide) (by decide)
    ⟨false, false, canonicalPermutation37, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput9758 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, -2, 2, 0], ![0, 1, 1, -2], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput9758 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2049⟩

theorem canonicalSound9758 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9758.moment H = canonicalOutput9758.moment H :=
  canonical_of_padded canonicalInput9758 canonicalOutput9758 (by decide) (by decide)
    ⟨false, false, canonicalPermutation37, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput9759 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![0, -2, 2, 0], ![1, 0, -1, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput9759 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1270⟩

theorem canonicalSound9759 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9759.moment H = canonicalOutput9759.moment H :=
  canonical_of_padded canonicalInput9759 canonicalOutput9759 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput9760 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![0, -2, 2, 0], ![1, 0, 2, -3], ![1, 1, -2, 0]]⟩

def canonicalOutput9760 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node611⟩

theorem canonicalSound9760 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9760.moment H = canonicalOutput9760.moment H :=
  canonical_of_padded canonicalInput9760 canonicalOutput9760 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput9761 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, -2, 3, -1], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput9761 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1977⟩

theorem canonicalSound9761 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9761.moment H = canonicalOutput9761.moment H :=
  canonical_of_padded canonicalInput9761 canonicalOutput9761 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation174, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput9762 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![0, -2, 3, -1], ![0, 1, -1, 0], ![2, 0, 0, -2]]⟩

def canonicalOutput9762 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1305⟩

theorem canonicalSound9762 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9762.moment H = canonicalOutput9762.moment H :=
  canonical_of_padded canonicalInput9762 canonicalOutput9762 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput9763 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, -2, 3, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput9763 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1980⟩

theorem canonicalSound9763 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9763.moment H = canonicalOutput9763.moment H :=
  canonical_of_padded canonicalInput9763 canonicalOutput9763 (by decide) (by decide)
    ⟨false, false, canonicalPermutation37, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput9764 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![0, -2, 3, -1], ![0, 1, 0, -1], ![2, 0, -1, -1]]⟩

def canonicalOutput9764 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node953⟩

theorem canonicalSound9764 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9764.moment H = canonicalOutput9764.moment H :=
  canonical_of_padded canonicalInput9764 canonicalOutput9764 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput9765 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, -2, 3, -1], ![0, 1, 1, -2], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput9765 : ExponentCode := normalNode3633

theorem canonicalSound9765 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9765.moment H = canonicalOutput9765.moment H :=
  canonical_of_padded canonicalInput9765 canonicalOutput9765 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation174, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput9766 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![0, -2, 3, -1], ![0, 1, 1, -2], ![2, 0, -2, 0]]⟩

def canonicalOutput9766 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code810

theorem canonicalSound9766 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9766.moment H = canonicalOutput9766.moment H :=
  canonical_of_padded canonicalInput9766 canonicalOutput9766 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput9767 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![0, -2, 3, -1], ![1, 0, -2, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput9767 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code802

theorem canonicalSound9767 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9767.moment H = canonicalOutput9767.moment H :=
  canonical_of_padded canonicalInput9767 canonicalOutput9767 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput9768 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![0, -2, 3, -1], ![1, 0, -1, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput9768 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1011⟩

theorem canonicalSound9768 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9768.moment H = canonicalOutput9768.moment H :=
  canonical_of_padded canonicalInput9768 canonicalOutput9768 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput9769 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![0, -2, 3, -1], ![1, 0, 0, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput9769 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node948⟩

theorem canonicalSound9769 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9769.moment H = canonicalOutput9769.moment H :=
  canonical_of_padded canonicalInput9769 canonicalOutput9769 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput9770 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, -2, 4, -2], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput9770 : ExponentCode := normalNode3327

theorem canonicalSound9770 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9770.moment H = canonicalOutput9770.moment H :=
  canonical_of_padded canonicalInput9770 canonicalOutput9770 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation174, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput9771 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![0, -2, 4, -2], ![0, 1, 0, -1], ![2, 0, -2, 0]]⟩

def canonicalOutput9771 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1194⟩

theorem canonicalSound9771 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9771.moment H = canonicalOutput9771.moment H :=
  canonical_of_padded canonicalInput9771 canonicalOutput9771 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput9772 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![0, -2, 4, -2], ![1, 0, -1, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput9772 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node900⟩

theorem canonicalSound9772 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9772.moment H = canonicalOutput9772.moment H :=
  canonical_of_padded canonicalInput9772 canonicalOutput9772 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput9773 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, -1, -1, 2], ![0, -1, 3, -2], ![1, 1, 0, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput9773 : ExponentCode := normalNode4796

theorem canonicalSound9773 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9773.moment H = canonicalOutput9773.moment H :=
  canonical_of_padded canonicalInput9773 canonicalOutput9773 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9774 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![0, -1, -1, 2], ![0, -1, 3, -2], ![2, 1, 0, -3]]⟩

def canonicalOutput9774 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code473

theorem canonicalSound9774 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9774.moment H = canonicalOutput9774.moment H :=
  canonical_of_padded canonicalInput9774 canonicalOutput9774 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9775 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![0, -1, -1, 2], ![0, 0, 2, -2], ![2, 0, 1, -3]]⟩

def canonicalOutput9775 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1266⟩

theorem canonicalSound9775 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9775.moment H = canonicalOutput9775.moment H :=
  canonical_of_padded canonicalInput9775 canonicalOutput9775 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9776 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, -1, -1, 2], ![0, 0, 3, -3], ![1, 0, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput9776 : ExponentCode := normalNode10349

theorem canonicalSound9776 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9776.moment H = canonicalOutput9776.moment H :=
  canonical_of_padded canonicalInput9776 canonicalOutput9776 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation172, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9777 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![0, -1, -1, 2], ![0, 0, 3, -3], ![2, 0, 0, -2]]⟩

def canonicalOutput9777 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1271⟩

theorem canonicalSound9777 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9777.moment H = canonicalOutput9777.moment H :=
  canonical_of_padded canonicalInput9777 canonicalOutput9777 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9778 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![0, -1, -1, 2], ![0, 1, 0, -1], ![2, -1, 3, -4]]⟩

def canonicalOutput9778 : ExponentCode := normalNode11128

theorem canonicalSound9778 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9778.moment H = canonicalOutput9778.moment H :=
  canonical_of_padded canonicalInput9778 canonicalOutput9778 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput9779 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![0, -1, -1, 2], ![1, -1, 0, 0], ![1, 1, 3, -5]]⟩

def canonicalOutput9779 : ExponentCode := normalNode9371

theorem canonicalSound9779 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9779.moment H = canonicalOutput9779.moment H :=
  canonical_of_padded canonicalInput9779 canonicalOutput9779 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput9780 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![0, -1, -1, 2], ![1, 0, 0, -1], ![1, 0, 3, -4]]⟩

def canonicalOutput9780 : ExponentCode := normalNode10359

theorem canonicalSound9780 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9780.moment H = canonicalOutput9780.moment H :=
  canonical_of_padded canonicalInput9780 canonicalOutput9780 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9781 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![0, -1, -1, 2], ![1, 0, 1, -2], ![1, 0, 2, -3]]⟩

def canonicalOutput9781 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1279⟩

theorem canonicalSound9781 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9781.moment H = canonicalOutput9781.moment H :=
  canonical_of_padded canonicalInput9781 canonicalOutput9781 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9782 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![0, -1, -1, 2], ![1, 0, 2, -3], ![1, 0, 1, -2]]⟩

def canonicalOutput9782 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1279⟩

theorem canonicalSound9782 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9782.moment H = canonicalOutput9782.moment H :=
  canonical_of_padded canonicalInput9782 canonicalOutput9782 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9783 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![0, -1, -1, 2], ![1, 0, 3, -4], ![1, 0, 0, -1]]⟩

def canonicalOutput9783 : ExponentCode := normalNode10359

theorem canonicalSound9783 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9783.moment H = canonicalOutput9783.moment H :=
  canonical_of_padded canonicalInput9783 canonicalOutput9783 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9784 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![0, -1, -1, 2], ![1, 1, 1, -3], ![1, -1, 2, -2]]⟩

def canonicalOutput9784 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1083

theorem canonicalSound9784 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9784.moment H = canonicalOutput9784.moment H :=
  canonical_of_padded canonicalInput9784 canonicalOutput9784 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9785 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, -1, 0, 1], ![0, 0, 0, 0], ![1, 0, -1, 0], ![1, 0, 3, -4]]⟩

def canonicalOutput9785 : ExponentCode := normalNode9712

theorem canonicalSound9785 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9785.moment H = canonicalOutput9785.moment H :=
  canonical_of_padded canonicalInput9785 canonicalOutput9785 (by decide) (by decide)
    ⟨true, true, canonicalPermutation0, canonicalPermutation32⟩ (by decide +kernel) hH

def canonicalInput9786 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, -1, 0, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![2, -1, 1, -2]]⟩

def canonicalOutput9786 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1493⟩

theorem canonicalSound9786 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9786.moment H = canonicalOutput9786.moment H :=
  canonical_of_padded canonicalInput9786 canonicalOutput9786 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput9787 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, -1, 0, 1], ![0, 0, 1, -1], ![1, 0, -1, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput9787 : ExponentCode := normalNode10723

theorem canonicalSound9787 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9787.moment H = canonicalOutput9787.moment H :=
  canonical_of_padded canonicalInput9787 canonicalOutput9787 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation172, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9788 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, -1, 0, 1], ![0, 0, 1, -1], ![1, 0, 2, -3], ![1, 0, -1, 0]]⟩

def canonicalOutput9788 : ExponentCode := normalNode10723

theorem canonicalSound9788 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9788.moment H = canonicalOutput9788.moment H :=
  canonical_of_padded canonicalInput9788 canonicalOutput9788 (by decide) (by decide)
    ⟨false, false, canonicalPermutation47, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9789 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, -1, 0, 1], ![0, 0, 2, -2], ![1, 0, 1, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput9789 : ExponentCode := normalNode10729

theorem canonicalSound9789 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9789.moment H = canonicalOutput9789.moment H :=
  canonical_of_padded canonicalInput9789 canonicalOutput9789 (by decide) (by decide)
    ⟨false, false, canonicalPermutation47, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9790 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, -1, 0, 1], ![0, 0, 3, -3], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput9790 : ExponentCode := normalNode10732

theorem canonicalSound9790 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9790.moment H = canonicalOutput9790.moment H :=
  canonical_of_padded canonicalInput9790 canonicalOutput9790 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation172, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9791 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, -1, 0, 1], ![0, 0, 3, -3], ![1, 0, 0, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput9791 : ExponentCode := normalNode10732

theorem canonicalSound9791 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9791.moment H = canonicalOutput9791.moment H :=
  canonical_of_padded canonicalInput9791 canonicalOutput9791 (by decide) (by decide)
    ⟨false, false, canonicalPermutation47, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
