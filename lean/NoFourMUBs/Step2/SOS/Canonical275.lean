import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes13
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.MomentCodes19
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes25
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes37
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes38
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes40
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes42
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput17600 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 0, -2, 0, 2], ![0, 0, 2, 0, -2], ![1, 1, 0, -2, 0]]⟩

def canonicalOutput17600 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1998⟩

theorem canonicalSound17600 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17600.moment H = canonicalOutput17600.moment H :=
  canonical_of_padded canonicalInput17600 canonicalOutput17600 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation178, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput17601 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 0, -2, 0, 2], ![0, 1, 0, -2, 1], ![1, 0, 2, 0, -3]]⟩

def canonicalOutput17601 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1632⟩

theorem canonicalSound17601 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17601.moment H = canonicalOutput17601.moment H :=
  canonical_of_padded canonicalInput17601 canonicalOutput17601 (by decide) (by decide)
    ⟨true, true, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput17602 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 0, -2, 0, 2], ![0, 1, 1, -2, 0], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput17602 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1999⟩

theorem canonicalSound17602 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17602.moment H = canonicalOutput17602.moment H :=
  canonical_of_padded canonicalInput17602 canonicalOutput17602 (by decide) (by decide)
    ⟨true, true, canonicalPermutation74, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput17603 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 0, -2, 0, 2], ![0, 1, 1, -1, -1], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput17603 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2055⟩

theorem canonicalSound17603 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17603.moment H = canonicalOutput17603.moment H :=
  canonical_of_padded canonicalInput17603 canonicalOutput17603 (by decide) (by decide)
    ⟨true, true, canonicalPermutation74, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput17604 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 0, -2, 0, 2], ![1, 0, 2, 0, -3], ![0, 1, 0, -2, 1]]⟩

def canonicalOutput17604 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1632⟩

theorem canonicalSound17604 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17604.moment H = canonicalOutput17604.moment H :=
  canonical_of_padded canonicalInput17604 canonicalOutput17604 (by decide) (by decide)
    ⟨true, true, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput17605 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 0, -1, -1, 2], ![0, 0, 2, -1, -1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput17605 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2087⟩

theorem canonicalSound17605 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17605.moment H = canonicalOutput17605.moment H :=
  canonical_of_padded canonicalInput17605 canonicalOutput17605 (by decide) (by decide)
    ⟨true, true, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput17606 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 0, -1, -1, 2], ![0, 0, 2, 0, -2], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput17606 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2013⟩

theorem canonicalSound17606 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17606.moment H = canonicalOutput17606.moment H :=
  canonical_of_padded canonicalInput17606 canonicalOutput17606 (by decide) (by decide)
    ⟨true, false, canonicalPermutation31, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput17607 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 0, -1, -1, 2], ![0, 1, -1, 0, 0], ![1, 0, 2, -1, -2]]⟩

def canonicalOutput17607 : ExponentCode := normalNode8992

theorem canonicalSound17607 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17607.moment H = canonicalOutput17607.moment H :=
  canonical_of_padded canonicalInput17607 canonicalOutput17607 (by decide) (by decide)
    ⟨true, false, canonicalPermutation36, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput17608 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 0, -1, -1, 2], ![0, 1, -1, 1, -1], ![1, 0, 2, -2, -1]]⟩

def canonicalOutput17608 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1820⟩

theorem canonicalSound17608 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17608.moment H = canonicalOutput17608.moment H :=
  canonical_of_padded canonicalInput17608 canonicalOutput17608 (by decide) (by decide)
    ⟨true, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput17609 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 0, -1, -1, 2], ![0, 1, 0, -1, 0], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput17609 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2583⟩

theorem canonicalSound17609 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17609.moment H = canonicalOutput17609.moment H :=
  canonical_of_padded canonicalInput17609 canonicalOutput17609 (by decide) (by decide)
    ⟨true, false, canonicalPermutation61, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput17610 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 0, -1, -1, 2], ![0, 1, 0, 0, -1], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput17610 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2588⟩

theorem canonicalSound17610 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17610.moment H = canonicalOutput17610.moment H :=
  canonical_of_padded canonicalInput17610 canonicalOutput17610 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput17611 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 0, -1, -1, 2], ![0, 1, 1, -1, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput17611 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2588⟩

theorem canonicalSound17611 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17611.moment H = canonicalOutput17611.moment H :=
  canonical_of_padded canonicalInput17611 canonicalOutput17611 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation201, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput17612 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 2, 0], ![0, 0, -1, 0, 1], ![0, 0, 1, -1, 0], ![0, 2, 1, -1, -2], ![1, -1, -1, 0, 1]]⟩

def canonicalOutput17612 : ExponentCode := normalNode10113

theorem canonicalSound17612 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17612.moment H = canonicalOutput17612.moment H :=
  canonical_of_padded canonicalInput17612 canonicalOutput17612 (by decide) (by decide)
    ⟨true, true, canonicalPermutation31, canonicalPermutation48⟩ (by decide +kernel) hH

def canonicalInput17613 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 0, -1, 0, 1], ![0, 1, 0, -2, 1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput17613 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2583⟩

theorem canonicalSound17613 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17613.moment H = canonicalOutput17613.moment H :=
  canonical_of_padded canonicalInput17613 canonicalOutput17613 (by decide) (by decide)
    ⟨true, true, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput17614 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 2, 0], ![0, 0, -1, 0, 1], ![0, 1, 0, -1, 0], ![0, 1, 1, 0, -2], ![1, -1, 0, -1, 1]]⟩

def canonicalOutput17614 : ExponentCode := normalNode10050

theorem canonicalSound17614 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17614.moment H = canonicalOutput17614.moment H :=
  canonical_of_padded canonicalInput17614 canonicalOutput17614 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput17615 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 0, 0, -2, 2], ![0, 0, 1, 0, -1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput17615 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2613⟩

theorem canonicalSound17615 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17615.moment H = canonicalOutput17615.moment H :=
  canonical_of_padded canonicalInput17615 canonicalOutput17615 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput17616 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 0, 0, -2, 2], ![0, 0, 2, 0, -2], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput17616 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2001⟩

theorem canonicalSound17616 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17616.moment H = canonicalOutput17616.moment H :=
  canonical_of_padded canonicalInput17616 canonicalOutput17616 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation192, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput17617 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 0, 0, -2, 2], ![0, 1, -2, 0, 1], ![1, 0, 2, 0, -3]]⟩

def canonicalOutput17617 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1633⟩

theorem canonicalSound17617 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17617.moment H = canonicalOutput17617.moment H :=
  canonical_of_padded canonicalInput17617 canonicalOutput17617 (by decide) (by decide)
    ⟨true, true, canonicalPermutation54, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput17618 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 0, 0, -2, 2], ![0, 1, -1, 0, 0], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput17618 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2745⟩

theorem canonicalSound17618 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17618.moment H = canonicalOutput17618.moment H :=
  canonical_of_padded canonicalInput17618 canonicalOutput17618 (by decide) (by decide)
    ⟨true, false, canonicalPermutation36, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput17619 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 0, 0, -2, 2], ![0, 1, -1, 1, -1], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput17619 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1786⟩

theorem canonicalSound17619 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17619.moment H = canonicalOutput17619.moment H :=
  canonical_of_padded canonicalInput17619 canonicalOutput17619 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation188, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput17620 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 0, 0, -2, 2], ![0, 1, 0, 0, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput17620 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1054⟩

theorem canonicalSound17620 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17620.moment H = canonicalOutput17620.moment H :=
  canonical_of_padded canonicalInput17620 canonicalOutput17620 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation177⟩ (by decide +kernel) hH

def canonicalInput17621 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 2, 0], ![0, 0, 0, -1, 1], ![0, 0, 2, 0, -2], ![0, 1, 0, -1, 0], ![1, 0, -2, 0, 1]]⟩

def canonicalOutput17621 : ExponentCode := normalNode8294

theorem canonicalSound17621 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17621.moment H = canonicalOutput17621.moment H :=
  canonical_of_padded canonicalInput17621 canonicalOutput17621 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput17622 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 2, 0], ![0, 0, 0, -1, 1], ![0, 1, -1, 0, 0], ![0, 1, 1, 0, -2], ![1, -1, 0, -1, 1]]⟩

def canonicalOutput17622 : ExponentCode := normalNode10049

theorem canonicalSound17622 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17622.moment H = canonicalOutput17622.moment H :=
  canonical_of_padded canonicalInput17622 canonicalOutput17622 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation192, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput17623 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 2, 0], ![0, 0, 0, -1, 1], ![0, 1, 0, -1, 0], ![0, 1, 1, 0, -2], ![1, -1, -1, 0, 1]]⟩

def canonicalOutput17623 : ExponentCode := normalNode8363

theorem canonicalSound17623 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17623.moment H = canonicalOutput17623.moment H :=
  canonical_of_padded canonicalInput17623 canonicalOutput17623 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation192, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput17624 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 0, 0, 1, -1], ![0, 2, -2, -1, 1], ![1, -1, 2, -2, 0]]⟩

def canonicalOutput17624 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2452⟩

theorem canonicalSound17624 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17624.moment H = canonicalOutput17624.moment H :=
  canonical_of_padded canonicalInput17624 canonicalOutput17624 (by decide) (by decide)
    ⟨true, true, canonicalPermutation53, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput17625 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 0, 1, -2, 1], ![-1, 2, -2, 0, 1], ![2, -1, 1, 0, -2]]⟩

def canonicalOutput17625 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1272

theorem canonicalSound17625 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17625.moment H = canonicalOutput17625.moment H :=
  canonical_of_padded canonicalInput17625 canonicalOutput17625 (by decide) (by decide)
    ⟨true, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput17626 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 0, 1, -2, 1], ![-1, 2, -2, 1, 0], ![2, -1, 1, -1, -1]]⟩

def canonicalOutput17626 : ExponentCode := normalNode5842

theorem canonicalSound17626 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17626.moment H = canonicalOutput17626.moment H :=
  canonical_of_padded canonicalInput17626 canonicalOutput17626 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation187, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput17627 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 0, 1, -2, 1], ![0, -1, 1, 0, 0], ![1, 2, -2, 0, -1]]⟩

def canonicalOutput17627 : ExponentCode := normalNode8943

theorem canonicalSound17627 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17627.moment H = canonicalOutput17627.moment H :=
  canonical_of_padded canonicalInput17627 canonicalOutput17627 (by decide) (by decide)
    ⟨true, false, canonicalPermutation39, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput17628 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 0, 1, -2, 1], ![0, 1, -2, 0, 1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput17628 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2023⟩

theorem canonicalSound17628 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17628.moment H = canonicalOutput17628.moment H :=
  canonical_of_padded canonicalInput17628 canonicalOutput17628 (by decide) (by decide)
    ⟨true, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput17629 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 0, 1, -2, 1], ![0, 2, -2, 0, 0], ![1, -1, 1, 0, -1]]⟩

def canonicalOutput17629 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2021⟩

theorem canonicalSound17629 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17629.moment H = canonicalOutput17629.moment H :=
  canonical_of_padded canonicalInput17629 canonicalOutput17629 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation187, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput17630 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 0, 1, -2, 1], ![0, 2, -2, 1, -1], ![1, -1, 1, -1, 0]]⟩

def canonicalOutput17630 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1834⟩

theorem canonicalSound17630 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17630.moment H = canonicalOutput17630.moment H :=
  canonical_of_padded canonicalInput17630 canonicalOutput17630 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation187, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput17631 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 0, 1, -2, 1], ![1, -1, 1, 0, -1], ![0, 2, -2, 0, 0]]⟩

def canonicalOutput17631 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2021⟩

theorem canonicalSound17631 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17631.moment H = canonicalOutput17631.moment H :=
  canonical_of_padded canonicalInput17631 canonicalOutput17631 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation187, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput17632 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 2, 0], ![0, 0, 1, 0, -1], ![0, 1, 0, 0, -1], ![0, 1, 1, -1, -1], ![1, -1, -2, -1, 3]]⟩

def canonicalOutput17632 : ExponentCode := normalNode7528

theorem canonicalSound17632 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17632.moment H = canonicalOutput17632.moment H :=
  canonical_of_padded canonicalInput17632 canonicalOutput17632 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, OAI.MUB6.Certificate.PairSemantics.permutation171⟩ (by decide +kernel) hH

def canonicalInput17633 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 0, 2, -2, 0], ![0, -1, -2, 1, 2], ![1, 2, 0, -1, -2]]⟩

def canonicalOutput17633 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2036⟩

theorem canonicalSound17633 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17633.moment H = canonicalOutput17633.moment H :=
  canonical_of_padded canonicalInput17633 canonicalOutput17633 (by decide) (by decide)
    ⟨true, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput17634 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 0, 2, -2, 0], ![1, -1, -2, 1, 1], ![0, 2, 0, -1, -1]]⟩

def canonicalOutput17634 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1839⟩

theorem canonicalSound17634 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17634.moment H = canonicalOutput17634.moment H :=
  canonical_of_padded canonicalInput17634 canonicalOutput17634 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation195, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput17635 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 0, 2, -1, -1], ![-1, 2, -1, 0, 0], ![2, -1, -1, -1, 1]]⟩

def canonicalOutput17635 : ExponentCode := normalNode4498

theorem canonicalSound17635 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17635.moment H = canonicalOutput17635.moment H :=
  canonical_of_padded canonicalInput17635 canonicalOutput17635 (by decide) (by decide)
    ⟨true, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput17636 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 0, 2, -1, -1], ![-1, 3, -1, -1, 0], ![2, -2, -1, 0, 1]]⟩

def canonicalOutput17636 : ExponentCode := normalNode4521

theorem canonicalSound17636 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17636.moment H = canonicalOutput17636.moment H :=
  canonical_of_padded canonicalInput17636 canonicalOutput17636 (by decide) (by decide)
    ⟨true, true, canonicalPermutation50, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput17637 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 0, 2, -1, -1], ![0, -1, -1, 0, 2], ![1, 2, -1, -1, -1]]⟩

def canonicalOutput17637 : ExponentCode := normalNode4212

theorem canonicalSound17637 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17637.moment H = canonicalOutput17637.moment H :=
  canonical_of_padded canonicalInput17637 canonicalOutput17637 (by decide) (by decide)
    ⟨true, true, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput17638 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 0, 2, -1, -1], ![0, 2, -1, 0, -1], ![1, -1, -1, -1, 2]]⟩

def canonicalOutput17638 : ExponentCode := normalNode4498

theorem canonicalSound17638 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17638.moment H = canonicalOutput17638.moment H :=
  canonical_of_padded canonicalInput17638 canonicalOutput17638 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation167, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput17639 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 0, 2, -1, -1], ![0, 3, -1, -1, -1], ![1, -2, -1, 0, 2]]⟩

def canonicalOutput17639 : ExponentCode := normalNode4518

theorem canonicalSound17639 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17639.moment H = canonicalOutput17639.moment H :=
  canonical_of_padded canonicalInput17639 canonicalOutput17639 (by decide) (by decide)
    ⟨true, true, canonicalPermutation50, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput17640 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 0, 2, -1, -1], ![1, -1, -1, 0, 1], ![0, 2, -1, -1, 0]]⟩

def canonicalOutput17640 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2073⟩

theorem canonicalSound17640 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17640.moment H = canonicalOutput17640.moment H :=
  canonical_of_padded canonicalInput17640 canonicalOutput17640 (by decide) (by decide)
    ⟨true, true, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput17641 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 0, 2, -1, -1], ![2, -1, -1, 0, 0], ![-1, 2, -1, -1, 1]]⟩

def canonicalOutput17641 : ExponentCode := normalNode4498

theorem canonicalSound17641 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17641.moment H = canonicalOutput17641.moment H :=
  canonical_of_padded canonicalInput17641 canonicalOutput17641 (by decide) (by decide)
    ⟨true, true, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput17642 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 0, 2, -1, -1], ![2, -1, 0, -1, 0], ![-1, 2, -2, 0, 1]]⟩

def canonicalOutput17642 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1996⟩

theorem canonicalSound17642 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17642.moment H = canonicalOutput17642.moment H :=
  canonical_of_padded canonicalInput17642 canonicalOutput17642 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation177, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput17643 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 0, 2, 0, -2], ![-1, 2, -1, -1, 1], ![2, -1, -1, -1, 1]]⟩

def canonicalOutput17643 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code943

theorem canonicalSound17643 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17643.moment H = canonicalOutput17643.moment H :=
  canonical_of_padded canonicalInput17643 canonicalOutput17643 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation179, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput17644 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 0, 2, 0, -2], ![-1, 3, -2, -1, 1], ![2, -2, 0, -1, 1]]⟩

def canonicalOutput17644 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code849

theorem canonicalSound17644 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17644.moment H = canonicalOutput17644.moment H :=
  canonical_of_padded canonicalInput17644 canonicalOutput17644 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation178, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput17645 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 0, 2, 0, -2], ![0, -1, -2, 1, 2], ![1, 2, 0, -3, 0]]⟩

def canonicalOutput17645 : ExponentCode := normalNode3375

theorem canonicalSound17645 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17645.moment H = canonicalOutput17645.moment H :=
  canonical_of_padded canonicalInput17645 canonicalOutput17645 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17646 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 0, 2, 0, -2], ![0, -1, -1, -1, 3], ![1, 2, -1, -1, -1]]⟩

def canonicalOutput17646 : ExponentCode := normalNode3453

theorem canonicalSound17646 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17646.moment H = canonicalOutput17646.moment H :=
  canonical_of_padded canonicalInput17646 canonicalOutput17646 (by decide) (by decide)
    ⟨true, false, canonicalPermutation31, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput17647 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 0, 2, 0, -2], ![0, -1, -1, 0, 2], ![1, 2, -1, -2, 0]]⟩

def canonicalOutput17647 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1997⟩

theorem canonicalSound17647 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17647.moment H = canonicalOutput17647.moment H :=
  canonical_of_padded canonicalInput17647 canonicalOutput17647 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17648 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 0, 2, 0, -2], ![0, 1, -2, 0, 1], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput17648 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1999⟩

theorem canonicalSound17648 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17648.moment H = canonicalOutput17648.moment H :=
  canonical_of_padded canonicalInput17648 canonicalOutput17648 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation178, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput17649 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 0, 2, 0, -2], ![0, 1, -1, -1, 1], ![1, 0, -1, -1, 1]]⟩

def canonicalOutput17649 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2055⟩

theorem canonicalSound17649 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17649.moment H = canonicalOutput17649.moment H :=
  canonical_of_padded canonicalInput17649 canonicalOutput17649 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation179, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput17650 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 0, 2, 0, -2], ![0, 1, 0, -2, 1], ![1, 0, -2, 0, 1]]⟩

def canonicalOutput17650 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1999⟩

theorem canonicalSound17650 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17650.moment H = canonicalOutput17650.moment H :=
  canonical_of_padded canonicalInput17650 canonicalOutput17650 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation179, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput17651 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 0, 2, 0, -2], ![0, 1, 0, -1, 0], ![1, 0, -2, -1, 2]]⟩

def canonicalOutput17651 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2805⟩

theorem canonicalSound17651 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17651.moment H = canonicalOutput17651.moment H :=
  canonical_of_padded canonicalInput17651 canonicalOutput17651 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation170, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput17652 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 0, 2, 0, -2], ![0, 2, -1, -1, 0], ![1, -1, -1, -1, 2]]⟩

def canonicalOutput17652 : ExponentCode := normalNode3873

theorem canonicalSound17652 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17652.moment H = canonicalOutput17652.moment H :=
  canonical_of_padded canonicalInput17652 canonicalOutput17652 (by decide) (by decide)
    ⟨true, false, canonicalPermutation31, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput17653 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 0, 2, 0, -2], ![0, 2, 0, -1, -1], ![1, -1, -2, -1, 3]]⟩

def canonicalOutput17653 : ExponentCode := normalNode1827

theorem canonicalSound17653 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17653.moment H = canonicalOutput17653.moment H :=
  canonical_of_padded canonicalInput17653 canonicalOutput17653 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput17654 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 0, 2, 0, -2], ![0, 3, -2, -1, 0], ![1, -2, 0, -1, 2]]⟩

def canonicalOutput17654 : ExponentCode := normalNode3776

theorem canonicalSound17654 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17654.moment H = canonicalOutput17654.moment H :=
  canonical_of_padded canonicalInput17654 canonicalOutput17654 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation178, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput17655 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 0, 2, 0, -2], ![1, -1, -2, 1, 1], ![0, 2, 0, -3, 1]]⟩

def canonicalOutput17655 : ExponentCode := normalNode3376

theorem canonicalSound17655 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17655.moment H = canonicalOutput17655.moment H :=
  canonical_of_padded canonicalInput17655 canonicalOutput17655 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17656 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 0, 2, 0, -2], ![1, -1, -1, -1, 2], ![0, 2, -1, -1, 0]]⟩

def canonicalOutput17656 : ExponentCode := normalNode3873

theorem canonicalSound17656 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17656.moment H = canonicalOutput17656.moment H :=
  canonical_of_padded canonicalInput17656 canonicalOutput17656 (by decide) (by decide)
    ⟨true, false, canonicalPermutation31, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput17657 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 0, 2, 0, -2], ![1, -1, -1, 0, 1], ![0, 2, -1, -2, 1]]⟩

def canonicalOutput17657 : ExponentCode := normalNode3790

theorem canonicalSound17657 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17657.moment H = canonicalOutput17657.moment H :=
  canonical_of_padded canonicalInput17657 canonicalOutput17657 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17658 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 0, 2, 0, -2], ![1, -1, 0, -1, 1], ![0, 2, -2, -1, 1]]⟩

def canonicalOutput17658 : ExponentCode := normalNode3773

theorem canonicalSound17658 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17658.moment H = canonicalOutput17658.moment H :=
  canonical_of_padded canonicalInput17658 canonicalOutput17658 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation178, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput17659 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 0, 2, 0, -2], ![2, -1, 0, -1, 0], ![-1, 2, -2, -1, 2]]⟩

def canonicalOutput17659 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code848

theorem canonicalSound17659 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17659.moment H = canonicalOutput17659.moment H :=
  canonical_of_padded canonicalInput17659 canonicalOutput17659 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation178, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput17660 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 1, -2, -2, 3], ![0, 0, 2, 0, -2], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput17660 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2413⟩

theorem canonicalSound17660 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17660.moment H = canonicalOutput17660.moment H :=
  canonical_of_padded canonicalInput17660 canonicalOutput17660 (by decide) (by decide)
    ⟨true, false, canonicalPermutation13, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput17661 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 1, -2, 0, 1], ![-1, -1, 2, 1, -1], ![2, 1, 0, -3, 0]]⟩

def canonicalOutput17661 : ExponentCode := normalNode3491

theorem canonicalSound17661 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17661.moment H = canonicalOutput17661.moment H :=
  canonical_of_padded canonicalInput17661 canonicalOutput17661 (by decide) (by decide)
    ⟨true, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17662 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 1, -2, 0, 1], ![-1, 1, 1, -2, 1], ![2, -1, 1, 0, -2]]⟩

def canonicalOutput17662 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code889

theorem canonicalSound17662 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17662.moment H = canonicalOutput17662.moment H :=
  canonical_of_padded canonicalInput17662 canonicalOutput17662 (by decide) (by decide)
    ⟨true, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput17663 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 1, -2, 0, 1], ![-1, 1, 1, -1, 0], ![2, -1, 1, -1, -1]]⟩

def canonicalOutput17663 : ExponentCode := normalNode4311

theorem canonicalSound17663 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17663.moment H = canonicalOutput17663.moment H :=
  canonical_of_padded canonicalInput17663 canonicalOutput17663 (by decide) (by decide)
    ⟨true, false, canonicalPermutation42, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
