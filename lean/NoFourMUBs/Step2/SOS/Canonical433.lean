import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes002
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes006
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes008
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes018
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput27712 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![2, 1, -2, -1], ![-2, -2, 2, 2]]⟩

def canonicalOutput27712 : ExponentCode := normalNode792

theorem canonicalSound27712 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27712.moment H = canonicalOutput27712.moment H :=
  canonical_of_padded canonicalInput27712 canonicalOutput27712 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27713 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![2, 1, -1, -2], ![-2, -2, 1, 3]]⟩

def canonicalOutput27713 : ExponentCode := normalNode564

theorem canonicalSound27713 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27713.moment H = canonicalOutput27713.moment H :=
  canonical_of_padded canonicalInput27713 canonicalOutput27713 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27714 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![-2, -1, 1, 2], ![1, 2, -1, -2]]⟩

def canonicalOutput27714 : ExponentCode := normalNode2586

theorem canonicalSound27714 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27714.moment H = canonicalOutput27714.moment H :=
  canonical_of_padded canonicalInput27714 canonicalOutput27714 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27715 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![0, 1, -1, 0], ![-1, 0, 2, -1], ![-1, -2, 0, 3], ![2, 1, 0, -3]]⟩

def canonicalOutput27715 : ExponentCode := normalNode1752

theorem canonicalSound27715 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27715.moment H = canonicalOutput27715.moment H :=
  canonical_of_padded canonicalInput27715 canonicalOutput27715 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation357, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27716 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![0, 1, -1, 0], ![-1, 0, 2, -1], ![-1, -2, 1, 2], ![2, 1, -1, -2]]⟩

def canonicalOutput27716 : ExponentCode := normalNode2435

theorem canonicalSound27716 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27716.moment H = canonicalOutput27716.moment H :=
  canonical_of_padded canonicalInput27716 canonicalOutput27716 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation357, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27717 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, -2, 0, 2], ![-2, 0, 3, -1], ![2, 1, -1, -2]]⟩

def canonicalOutput27717 : ExponentCode := normalNode2434

theorem canonicalSound27717 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27717.moment H = canonicalOutput27717.moment H :=
  canonical_of_padded canonicalInput27717 canonicalOutput27717 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation357, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27718 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, -2, 2, 0], ![-2, 1, -1, 2], ![2, 0, 1, -3]]⟩

def canonicalOutput27718 : ExponentCode := normalNode3460

theorem canonicalSound27718 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27718.moment H = canonicalOutput27718.moment H :=
  canonical_of_padded canonicalInput27718 canonicalOutput27718 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation357, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27719 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![2, 0, 1, -3], ![-2, -2, 2, 2]]⟩

def canonicalOutput27719 : ExponentCode := normalNode793

theorem canonicalSound27719 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27719.moment H = canonicalOutput27719.moment H :=
  canonical_of_padded canonicalInput27719 canonicalOutput27719 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27720 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-2, -1, 0, 3], ![2, -1, 2, -3]]⟩

def canonicalOutput27720 : ExponentCode := normalNode1918

theorem canonicalSound27720 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27720.moment H = canonicalOutput27720.moment H :=
  canonical_of_padded canonicalInput27720 canonicalOutput27720 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27721 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-2, -1, 1, 2], ![2, -1, 1, -2]]⟩

def canonicalOutput27721 : ExponentCode := normalNode2587

theorem canonicalSound27721 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27721.moment H = canonicalOutput27721.moment H :=
  canonical_of_padded canonicalInput27721 canonicalOutput27721 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27722 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, 0, 0, -2], ![-2, -2, 2, 2]]⟩

def canonicalOutput27722 : ExponentCode := normalNode794

theorem canonicalSound27722 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27722.moment H = canonicalOutput27722.moment H :=
  canonical_of_padded canonicalInput27722 canonicalOutput27722 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27723 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, 0, 1, -3], ![-2, -2, 1, 3]]⟩

def canonicalOutput27723 : ExponentCode := normalNode565

theorem canonicalSound27723 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27723.moment H = canonicalOutput27723.moment H :=
  canonical_of_padded canonicalInput27723 canonicalOutput27723 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27724 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-2, -1, 0, 3], ![1, 1, 2, -4]]⟩

def canonicalOutput27724 : ExponentCode := normalNode1919

theorem canonicalSound27724 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27724.moment H = canonicalOutput27724.moment H :=
  canonical_of_padded canonicalInput27724 canonicalOutput27724 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27725 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-2, 1, -1, 2], ![1, -1, 3, -3]]⟩

def canonicalOutput27725 : ExponentCode := normalNode5157

theorem canonicalSound27725 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27725.moment H = canonicalOutput27725.moment H :=
  canonical_of_padded canonicalInput27725 canonicalOutput27725 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27726 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, 1, -1], ![-2, -1, 0, 3], ![1, 1, 1, -3]]⟩

def canonicalOutput27726 : ExponentCode := normalNode1920

theorem canonicalSound27726 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27726.moment H = canonicalOutput27726.moment H :=
  canonical_of_padded canonicalInput27726 canonicalOutput27726 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27727 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 1, 1, -3], ![-2, -2, 2, 2]]⟩

def canonicalOutput27727 : ExponentCode := normalNode795

theorem canonicalSound27727 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27727.moment H = canonicalOutput27727.moment H :=
  canonical_of_padded canonicalInput27727 canonicalOutput27727 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27728 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, 0, 0, -1], ![-2, 2, 1, -1], ![1, -3, 1, 1]]⟩

def canonicalOutput27728 : ExponentCode := normalNode2451

theorem canonicalSound27728 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27728.moment H = canonicalOutput27728.moment H :=
  canonical_of_padded canonicalInput27728 canonicalOutput27728 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation280, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput27729 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, 0, 1, -2], ![-2, 1, -1, 2], ![1, -2, 2, -1]]⟩

def canonicalOutput27729 : ExponentCode := normalNode5156

theorem canonicalSound27729 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27729.moment H = canonicalOutput27729.moment H :=
  canonical_of_padded canonicalInput27729 canonicalOutput27729 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation259, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27730 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, 0, 0, 2], ![0, 1, 1, -2], ![2, -2, 0, 0]]⟩

def canonicalOutput27730 : ExponentCode := normalNode3733

theorem canonicalSound27730 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27730.moment H = canonicalOutput27730.moment H :=
  canonical_of_padded canonicalInput27730 canonicalOutput27730 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation243, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput27731 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, 0, 0, 2], ![1, -2, 1, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput27731 : ExponentCode := normalNode3734

theorem canonicalSound27731 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27731.moment H = canonicalOutput27731.moment H :=
  canonical_of_padded canonicalInput27731 canonicalOutput27731 (by decide) (by decide)
    ⟨false, false, canonicalPermutation163, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput27732 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, 0, 0, 2], ![1, 1, -1, -1], ![1, -2, 2, -1]]⟩

def canonicalOutput27732 : ExponentCode := normalNode4026

theorem canonicalSound27732 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27732.moment H = canonicalOutput27732.moment H :=
  canonical_of_padded canonicalInput27732 canonicalOutput27732 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation242, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27733 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, 0, 1, 1], ![0, -2, 1, 1], ![2, 1, -1, -2]]⟩

def canonicalOutput27733 : ExponentCode := normalNode2357

theorem canonicalSound27733 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27733.moment H = canonicalOutput27733.moment H :=
  canonical_of_padded canonicalInput27733 canonicalOutput27733 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation358, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27734 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, 0, 1, 1], ![1, -2, 0, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput27734 : ExponentCode := normalNode3778

theorem canonicalSound27734 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27734.moment H = canonicalOutput27734.moment H :=
  canonical_of_padded canonicalInput27734 canonicalOutput27734 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation191, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput27735 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, 0, 1, 1], ![1, -2, 1, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput27735 : ExponentCode := normalNode4426

theorem canonicalSound27735 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27735.moment H = canonicalOutput27735.moment H :=
  canonical_of_padded canonicalInput27735 canonicalOutput27735 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation241, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27736 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, 0, 2, 0], ![1, -2, 0, 1], ![1, 1, -1, -1]]⟩

def canonicalOutput27736 : ExponentCode := normalNode4043

theorem canonicalSound27736 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27736.moment H = canonicalOutput27736.moment H :=
  canonical_of_padded canonicalInput27736 canonicalOutput27736 (by decide) (by decide)
    ⟨false, false, canonicalPermutation135, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27737 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, 0, 2, 0], ![1, 1, 0, -2], ![1, -2, -1, 2]]⟩

def canonicalOutput27737 : ExponentCode := normalNode4652

theorem canonicalSound27737 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27737.moment H = canonicalOutput27737.moment H :=
  canonical_of_padded canonicalInput27737 canonicalOutput27737 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation242, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27738 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, 1, 0, 1], ![0, -2, 1, 1], ![2, 0, 0, -2]]⟩

def canonicalOutput27738 : ExponentCode := normalNode3754

theorem canonicalSound27738 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27738.moment H = canonicalOutput27738.moment H :=
  canonical_of_padded canonicalInput27738 canonicalOutput27738 (by decide) (by decide)
    ⟨false, false, canonicalPermutation49, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput27739 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, 1, 0, 1], ![0, -2, 2, 0], ![2, 0, -1, -1]]⟩

def canonicalOutput27739 : ExponentCode := normalNode4044

theorem canonicalSound27739 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27739.moment H = canonicalOutput27739.moment H :=
  canonical_of_padded canonicalInput27739 canonicalOutput27739 (by decide) (by decide)
    ⟨false, false, canonicalPermutation288, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput27740 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, 1, 0, 1], ![0, -1, 2, -1], ![2, -1, -1, 0]]⟩

def canonicalOutput27740 : ExponentCode := normalNode5375

theorem canonicalSound27740 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27740.moment H = canonicalOutput27740.moment H :=
  canonical_of_padded canonicalInput27740 canonicalOutput27740 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation356, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27741 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, 1, 0, 1], ![1, -2, 0, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput27741 : ExponentCode := normalNode3745

theorem canonicalSound27741 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27741.moment H = canonicalOutput27741.moment H :=
  canonical_of_padded canonicalInput27741 canonicalOutput27741 (by decide) (by decide)
    ⟨false, false, canonicalPermutation32, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput27742 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, 1, 0, 1], ![1, 1, -1, -1], ![1, -3, 2, 0]]⟩

def canonicalOutput27742 : ExponentCode := normalNode4175

theorem canonicalSound27742 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27742.moment H = canonicalOutput27742.moment H :=
  canonical_of_padded canonicalInput27742 canonicalOutput27742 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation243, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput27743 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, 1, 1, 0], ![0, -2, 0, 2], ![2, 0, 0, -2]]⟩

def canonicalOutput27743 : ExponentCode := normalNode3737

theorem canonicalSound27743 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27743.moment H = canonicalOutput27743.moment H :=
  canonical_of_padded canonicalInput27743 canonicalOutput27743 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation275, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput27744 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, 1, 1, 0], ![0, -2, 1, 1], ![2, 0, -1, -1]]⟩

def canonicalOutput27744 : ExponentCode := normalNode4351

theorem canonicalSound27744 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27744.moment H = canonicalOutput27744.moment H :=
  canonical_of_padded canonicalInput27744 canonicalOutput27744 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation358, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27745 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, 1, 1, 0], ![1, 0, 1, -2], ![1, -2, -1, 2]]⟩

def canonicalOutput27745 : ExponentCode := normalNode5160

theorem canonicalSound27745 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27745.moment H = canonicalOutput27745.moment H :=
  canonical_of_padded canonicalInput27745 canonicalOutput27745 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation313, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput27746 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, 1, 1, 0], ![1, 1, -1, -1], ![1, -3, 1, 1]]⟩

def canonicalOutput27746 : ExponentCode := normalNode4344

theorem canonicalSound27746 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27746.moment H = canonicalOutput27746.moment H :=
  canonical_of_padded canonicalInput27746 canonicalOutput27746 (by decide) (by decide)
    ⟨false, false, canonicalPermutation146, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput27747 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, 2, 0, 0], ![2, 0, -1, -1], ![0, -3, 2, 1]]⟩

def canonicalOutput27747 : ExponentCode := normalNode3792

theorem canonicalSound27747 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27747.moment H = canonicalOutput27747.moment H :=
  canonical_of_padded canonicalInput27747 canonicalOutput27747 (by decide) (by decide)
    ⟨false, false, canonicalPermutation163, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput27748 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-1, -1, 0, 2], ![-1, -1, 1, 1], ![2, 1, 0, -3]]⟩

def canonicalOutput27748 : ExponentCode := normalNode1706

theorem canonicalSound27748 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27748.moment H = canonicalOutput27748.moment H :=
  canonical_of_padded canonicalInput27748 canonicalOutput27748 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation358, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27749 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-1, -1, 0, 2], ![-1, 1, 1, -1], ![2, -1, 0, -1]]⟩

def canonicalOutput27749 : ExponentCode := normalNode3830

theorem canonicalSound27749 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27749.moment H = canonicalOutput27749.moment H :=
  canonical_of_padded canonicalInput27749 canonicalOutput27749 (by decide) (by decide)
    ⟨false, false, canonicalPermutation77, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput27750 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-1, -1, 1, 1], ![-1, 1, 1, -1], ![2, -1, -1, 0]]⟩

def canonicalOutput27750 : ExponentCode := normalNode5376

theorem canonicalSound27750 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27750.moment H = canonicalOutput27750.moment H :=
  canonical_of_padded canonicalInput27750 canonicalOutput27750 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation356, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27751 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-1, -1, 1, 1], ![-1, 2, -1, 0], ![2, -2, 1, -1]]⟩

def canonicalOutput27751 : ExponentCode := normalNode2476

theorem canonicalSound27751 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27751.moment H = canonicalOutput27751.moment H :=
  canonical_of_padded canonicalInput27751 canonicalOutput27751 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation337, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput27752 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-1, -1, 2, 0], ![-1, 2, 0, -1], ![2, -2, -1, 1]]⟩

def canonicalOutput27752 : ExponentCode := normalNode2265

theorem canonicalSound27752 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27752.moment H = canonicalOutput27752.moment H :=
  canonical_of_padded canonicalInput27752 canonicalOutput27752 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation308, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput27753 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-1, 0, -1, 2], ![-1, 1, 1, -1], ![2, -2, 1, -1]]⟩

def canonicalOutput27753 : ExponentCode := normalNode5864

theorem canonicalSound27753 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27753.moment H = canonicalOutput27753.moment H :=
  canonical_of_padded canonicalInput27753 canonicalOutput27753 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation358, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27754 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-1, 0, 2, -1], ![-1, 2, -1, 0], ![2, -3, 0, 1]]⟩

def canonicalOutput27754 : ExponentCode := normalNode1646

theorem canonicalSound27754 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27754.moment H = canonicalOutput27754.moment H :=
  canonical_of_padded canonicalInput27754 canonicalOutput27754 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation309, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput27755 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-1, 1, 1, -1], ![2, 0, -1, -1], ![-1, -2, 1, 2]]⟩

def canonicalOutput27755 : ExponentCode := normalNode2591

theorem canonicalSound27755 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27755.moment H = canonicalOutput27755.moment H :=
  canonical_of_padded canonicalInput27755 canonicalOutput27755 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation313, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput27756 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-1, 2, -1, 0], ![2, -1, 0, -1], ![-1, -2, 2, 1]]⟩

def canonicalOutput27756 : ExponentCode := normalNode4363

theorem canonicalSound27756 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27756.moment H = canonicalOutput27756.moment H :=
  canonical_of_padded canonicalInput27756 canonicalOutput27756 (by decide) (by decide)
    ⟨false, true, canonicalPermutation164, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput27757 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-1, 2, 0, -1], ![2, -1, -1, 0], ![-1, -2, 2, 1]]⟩

def canonicalOutput27757 : ExponentCode := normalNode4179

theorem canonicalSound27757 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27757.moment H = canonicalOutput27757.moment H :=
  canonical_of_padded canonicalInput27757 canonicalOutput27757 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation265, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput27758 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, -2, 0, 2], ![2, 0, -1, -1], ![-2, 1, 2, -1]]⟩

def canonicalOutput27758 : ExponentCode := normalNode4027

theorem canonicalSound27758 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27758.moment H = canonicalOutput27758.moment H :=
  canonical_of_padded canonicalInput27758 canonicalOutput27758 (by decide) (by decide)
    ⟨false, false, canonicalPermutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput27759 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, -2, 1, 1], ![2, -1, -1, 0], ![-2, 2, 1, -1]]⟩

def canonicalOutput27759 : ExponentCode := normalNode2336

theorem canonicalSound27759 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27759.moment H = canonicalOutput27759.moment H :=
  canonical_of_padded canonicalInput27759 canonicalOutput27759 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation359, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput27760 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, -1, -1, 2], ![2, -1, 0, -1], ![-2, 1, 2, -1]]⟩

def canonicalOutput27760 : ExponentCode := normalNode5335

theorem canonicalSound27760 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27760.moment H = canonicalOutput27760.moment H :=
  canonical_of_padded canonicalInput27760 canonicalOutput27760 (by decide) (by decide)
    ⟨false, true, canonicalPermutation119, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27761 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, -1, 2, -1], ![2, -2, 0, 0], ![-2, 2, -1, 1]]⟩

def canonicalOutput27761 : ExponentCode := normalNode2255

theorem canonicalSound27761 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27761.moment H = canonicalOutput27761.moment H :=
  canonical_of_padded canonicalInput27761 canonicalOutput27761 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation314, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput27762 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-2, 0, 3, -1], ![2, -2, -2, 2]]⟩

def canonicalOutput27762 : ExponentCode := normalNode3572

theorem canonicalSound27762 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27762.moment H = canonicalOutput27762.moment H :=
  canonical_of_padded canonicalInput27762 canonicalOutput27762 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation277, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27763 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 2, -1, -1], ![2, -2, 0, 0], ![-2, -1, 2, 1]]⟩

def canonicalOutput27763 : ExponentCode := normalNode2658

theorem canonicalSound27763 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27763.moment H = canonicalOutput27763.moment H :=
  canonical_of_padded canonicalInput27763 canonicalOutput27763 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation331, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27764 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -2, 1, 0], ![1, -1, 1, -1], ![-2, 2, -1, 1]]⟩

def canonicalOutput27764 : ExponentCode := normalNode2258

theorem canonicalSound27764 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27764.moment H = canonicalOutput27764.moment H :=
  canonical_of_padded canonicalInput27764 canonicalOutput27764 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation315, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput27765 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-2, -1, 0, 3], ![1, 1, 1, -3]]⟩

def canonicalOutput27765 : ExponentCode := normalNode1921

theorem canonicalSound27765 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27765.moment H = canonicalOutput27765.moment H :=
  canonical_of_padded canonicalInput27765 canonicalOutput27765 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27766 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-2, 1, -1, 2], ![1, -1, 2, -2]]⟩

def canonicalOutput27766 : ExponentCode := normalNode5159

theorem canonicalSound27766 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27766.moment H = canonicalOutput27766.moment H :=
  canonical_of_padded canonicalInput27766 canonicalOutput27766 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27767 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-2, 2, -1, 1], ![1, -2, 2, -1]]⟩

def canonicalOutput27767 : ExponentCode := normalNode2257

theorem canonicalSound27767 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27767.moment H = canonicalOutput27767.moment H :=
  canonical_of_padded canonicalInput27767 canonicalOutput27767 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation264, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput27768 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, -1, -2, 2], ![-2, 1, 3, -2]]⟩

def canonicalOutput27768 : ExponentCode := normalNode4942

theorem canonicalSound27768 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27768.moment H = canonicalOutput27768.moment H :=
  canonical_of_padded canonicalInput27768 canonicalOutput27768 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation331, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27769 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 1, -1, -1], ![-2, -1, 2, 1]]⟩

def canonicalOutput27769 : ExponentCode := normalNode2659

theorem canonicalSound27769 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27769.moment H = canonicalOutput27769.moment H :=
  canonical_of_padded canonicalInput27769 canonicalOutput27769 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation331, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27770 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 1, 0, -2], ![-2, -1, 1, 2]]⟩

def canonicalOutput27770 : ExponentCode := normalNode2588

theorem canonicalSound27770 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27770.moment H = canonicalOutput27770.moment H :=
  canonical_of_padded canonicalInput27770 canonicalOutput27770 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27771 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 1, -1], ![1, 1, -1, -1], ![-2, -1, 1, 2]]⟩

def canonicalOutput27771 : ExponentCode := normalNode2589

theorem canonicalSound27771 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27771.moment H = canonicalOutput27771.moment H :=
  canonical_of_padded canonicalInput27771 canonicalOutput27771 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27772 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 1, -1], ![1, 1, 0, -2], ![-2, -1, 0, 3]]⟩

def canonicalOutput27772 : ExponentCode := normalNode1922

theorem canonicalSound27772 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27772.moment H = canonicalOutput27772.moment H :=
  canonical_of_padded canonicalInput27772 canonicalOutput27772 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27773 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, 2, 1, -1], ![1, -3, 1, 1]]⟩

def canonicalOutput27773 : ExponentCode := normalNode2339

theorem canonicalSound27773 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27773.moment H = canonicalOutput27773.moment H :=
  canonical_of_padded canonicalInput27773 canonicalOutput27773 (by decide) (by decide)
    ⟨false, false, canonicalPermutation119, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput27774 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, -2, -1, 2], ![-2, 1, 3, -2]]⟩

def canonicalOutput27774 : ExponentCode := normalNode4941

theorem canonicalSound27774 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27774.moment H = canonicalOutput27774.moment H :=
  canonical_of_padded canonicalInput27774 canonicalOutput27774 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation332, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27775 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, -2, 0, 1], ![-2, 1, 2, -1]]⟩

def canonicalOutput27775 : ExponentCode := normalNode5206

theorem canonicalSound27775 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27775.moment H = canonicalOutput27775.moment H :=
  canonical_of_padded canonicalInput27775 canonicalOutput27775 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation332, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
