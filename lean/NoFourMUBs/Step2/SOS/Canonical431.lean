import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes19
import NoFourMUBs.Step2.SOS.NormalizationNodes002
import NoFourMUBs.Step2.SOS.NormalizationNodes006
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes21
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes41
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes42
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput27584 : ExponentCode := ⟨4, 5, ![![0, 0, -2, 0, 2], ![-1, 0, 2, 2, -3], ![0, 1, 0, -2, 1], ![1, -1, 0, 0, 0]]⟩

def canonicalOutput27584 : ExponentCode := normalNode10510

theorem canonicalSound27584 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27584.moment H = canonicalOutput27584.moment H :=
  canonical_of_padded canonicalInput27584 canonicalOutput27584 (by decide) (by decide)
    ⟨true, true, canonicalPermutation9, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput27585 : ExponentCode := ⟨4, 5, ![![0, 0, -2, 0, 2], ![0, -1, 0, 2, -1], ![0, 0, 1, -2, 1], ![0, 1, 1, 0, -2]]⟩

def canonicalOutput27585 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1010⟩

theorem canonicalSound27585 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27585.moment H = canonicalOutput27585.moment H :=
  canonical_of_padded canonicalInput27585 canonicalOutput27585 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27586 : ExponentCode := ⟨4, 5, ![![0, 0, -2, 0, 2], ![0, -1, 0, 2, -1], ![0, 0, 2, 0, -2], ![0, 1, 0, -2, 1]]⟩

def canonicalOutput27586 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1304⟩

theorem canonicalSound27586 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27586.moment H = canonicalOutput27586.moment H :=
  canonical_of_padded canonicalInput27586 canonicalOutput27586 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27587 : ExponentCode := ⟨4, 5, ![![0, 0, -2, 0, 2], ![0, -1, 1, 1, -1], ![0, 0, 1, -3, 2], ![0, 1, 0, 2, -3]]⟩

def canonicalOutput27587 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1215⟩

theorem canonicalSound27587 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27587.moment H = canonicalOutput27587.moment H :=
  canonical_of_padded canonicalInput27587 canonicalOutput27587 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27588 : ExponentCode := ⟨4, 5, ![![0, 0, -2, 0, 2], ![0, -1, 1, 1, -1], ![0, 0, 1, -2, 1], ![0, 1, 0, 1, -2]]⟩

def canonicalOutput27588 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1058⟩

theorem canonicalSound27588 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27588.moment H = canonicalOutput27588.moment H :=
  canonical_of_padded canonicalInput27588 canonicalOutput27588 (by decide) (by decide)
    ⟨false, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput27589 : ExponentCode := ⟨4, 5, ![![0, 0, -2, 0, 2], ![0, -1, 1, 1, -1], ![0, 0, 1, 1, -2], ![0, 1, 0, -2, 1]]⟩

def canonicalOutput27589 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1309⟩

theorem canonicalSound27589 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27589.moment H = canonicalOutput27589.moment H :=
  canonical_of_padded canonicalInput27589 canonicalOutput27589 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27590 : ExponentCode := ⟨4, 5, ![![0, 0, -2, 0, 2], ![0, 0, 2, 1, -3], ![-1, 1, 0, -1, 1], ![1, -1, 0, 0, 0]]⟩

def canonicalOutput27590 : ExponentCode := normalNode10816

theorem canonicalSound27590 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27590.moment H = canonicalOutput27590.moment H :=
  canonical_of_padded canonicalInput27590 canonicalOutput27590 (by decide) (by decide)
    ⟨true, true, canonicalPermutation9, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput27591 : ExponentCode := ⟨4, 5, ![![0, 0, -2, 0, 2], ![0, 0, 2, 1, -3], ![0, 1, 0, -2, 1], ![0, -1, 0, 1, 0]]⟩

def canonicalOutput27591 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1296⟩

theorem canonicalSound27591 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27591.moment H = canonicalOutput27591.moment H :=
  canonical_of_padded canonicalInput27591 canonicalOutput27591 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27592 : ExponentCode := ⟨5, 5, ![![0, 0, -2, 1, 1], ![-1, 0, 0, 1, 0], ![0, 0, 2, -2, 0], ![0, 1, 0, 0, -1], ![1, -1, 0, 0, 0]]⟩

def canonicalOutput27592 : ExponentCode := normalNode10416

theorem canonicalSound27592 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27592.moment H = canonicalOutput27592.moment H :=
  canonical_of_padded canonicalInput27592 canonicalOutput27592 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, canonicalPermutation31⟩ (by decide +kernel) hH

def canonicalInput27593 : ExponentCode := ⟨5, 5, ![![0, 0, -2, 1, 1], ![-1, 0, 1, -2, 2], ![0, 0, 1, 1, -2], ![0, 1, 0, 0, -1], ![1, -1, 0, 0, 0]]⟩

def canonicalOutput27593 : ExponentCode := normalNode9786

theorem canonicalSound27593 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27593.moment H = canonicalOutput27593.moment H :=
  canonical_of_padded canonicalInput27593 canonicalOutput27593 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput27594 : ExponentCode := ⟨4, 5, ![![0, 0, -2, 1, 1], ![-1, 0, 1, 1, -1], ![0, 1, 0, 0, -1], ![1, -1, 1, -2, 1]]⟩

def canonicalOutput27594 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2631⟩

theorem canonicalSound27594 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27594.moment H = canonicalOutput27594.moment H :=
  canonical_of_padded canonicalInput27594 canonicalOutput27594 (by decide) (by decide)
    ⟨true, false, canonicalPermutation14, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput27595 : ExponentCode := ⟨4, 5, ![![0, 0, -2, 1, 1], ![-1, 1, 1, -2, 1], ![0, 0, 1, 1, -2], ![1, -1, 0, 0, 0]]⟩

def canonicalOutput27595 : ExponentCode := normalNode10529

theorem canonicalSound27595 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27595.moment H = canonicalOutput27595.moment H :=
  canonical_of_padded canonicalInput27595 canonicalOutput27595 (by decide) (by decide)
    ⟨true, false, canonicalPermutation47, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput27596 : ExponentCode := ⟨5, 5, ![![0, 0, -2, 1, 1], ![0, 0, 0, 1, -1], ![-1, 0, 2, -2, 1], ![0, 1, 0, 0, -1], ![1, -1, 0, 0, 0]]⟩

def canonicalOutput27596 : ExponentCode := normalNode8723

theorem canonicalSound27596 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27596.moment H = canonicalOutput27596.moment H :=
  canonical_of_padded canonicalInput27596 canonicalOutput27596 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation200, OAI.MUB6.Certificate.PairSemantics.permutation174⟩ (by decide +kernel) hH

def canonicalInput27597 : ExponentCode := ⟨5, 5, ![![0, 0, -2, 1, 1], ![0, 0, 0, 1, -1], ![0, 0, 2, -2, 0], ![-1, 1, 0, 0, 0], ![1, -1, 0, 0, 0]]⟩

def canonicalOutput27597 : ExponentCode := normalNode10415

theorem canonicalSound27597 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27597.moment H = canonicalOutput27597.moment H :=
  canonical_of_padded canonicalInput27597 canonicalOutput27597 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, canonicalPermutation31⟩ (by decide +kernel) hH

def canonicalInput27598 : ExponentCode := ⟨5, 5, ![![0, 0, -2, 1, 1], ![0, 0, 0, 1, -1], ![0, 0, 2, -2, 0], ![0, 1, 0, 0, -1], ![0, -1, 0, 0, 1]]⟩

def canonicalOutput27598 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2743⟩

theorem canonicalSound27598 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27598.moment H = canonicalOutput27598.moment H :=
  canonical_of_padded canonicalInput27598 canonicalOutput27598 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27599 : ExponentCode := ⟨5, 5, ![![0, 0, -2, 1, 1], ![0, 0, 1, -2, 1], ![-1, 0, 1, 1, -1], ![0, 1, 0, 0, -1], ![1, -1, 0, 0, 0]]⟩

def canonicalOutput27599 : ExponentCode := normalNode10176

theorem canonicalSound27599 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27599.moment H = canonicalOutput27599.moment H :=
  canonical_of_padded canonicalInput27599 canonicalOutput27599 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput27600 : ExponentCode := ⟨4, 5, ![![0, 0, -2, 1, 1], ![0, 0, 1, -2, 1], ![-1, 1, 1, 1, -2], ![1, -1, 0, 0, 0]]⟩

def canonicalOutput27600 : ExponentCode := normalNode10529

theorem canonicalSound27600 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27600.moment H = canonicalOutput27600.moment H :=
  canonical_of_padded canonicalInput27600 canonicalOutput27600 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation172, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput27601 : ExponentCode := ⟨5, 5, ![![0, 0, -2, 1, 1], ![0, 0, 1, -2, 1], ![0, 0, 1, 1, -2], ![-1, 1, 0, 0, 0], ![1, -1, 0, 0, 0]]⟩

def canonicalOutput27601 : ExponentCode := normalNode11165

theorem canonicalSound27601 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27601.moment H = canonicalOutput27601.moment H :=
  canonical_of_padded canonicalInput27601 canonicalOutput27601 (by decide) (by decide)
    ⟨false, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27602 : ExponentCode := ⟨4, 5, ![![0, 0, -2, 1, 1], ![0, 0, 1, -2, 1], ![0, 0, 1, 1, -2], ![0, 0, 0, 0, 0]]⟩

def canonicalOutput27602 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node44⟩

theorem canonicalSound27602 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27602.moment H = canonicalOutput27602.moment H :=
  canonical_of_padded canonicalInput27602 canonicalOutput27602 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27603 : ExponentCode := ⟨5, 5, ![![0, 0, -2, 1, 1], ![0, 0, 1, -2, 1], ![0, 0, 1, 1, -2], ![0, 1, 0, 0, -1], ![0, -1, 0, 0, 1]]⟩

def canonicalOutput27603 : ExponentCode := normalNode10529

theorem canonicalSound27603 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27603.moment H = canonicalOutput27603.moment H :=
  canonical_of_padded canonicalInput27603 canonicalOutput27603 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27604 : ExponentCode := ⟨4, 5, ![![0, 0, -2, 1, 1], ![0, 0, 1, 1, -2], ![-1, 1, 0, 0, 0], ![1, -1, 1, -2, 1]]⟩

def canonicalOutput27604 : ExponentCode := normalNode10529

theorem canonicalSound27604 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27604.moment H = canonicalOutput27604.moment H :=
  canonical_of_padded canonicalInput27604 canonicalOutput27604 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput27605 : ExponentCode := ⟨4, 5, ![![0, 0, -2, 1, 1], ![0, 0, 1, 1, -2], ![0, 1, 0, 0, -1], ![0, -1, 1, -2, 2]]⟩

def canonicalOutput27605 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node846⟩

theorem canonicalSound27605 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27605.moment H = canonicalOutput27605.moment H :=
  canonical_of_padded canonicalInput27605 canonicalOutput27605 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput27606 : ExponentCode := ⟨4, 4, ![![0, 0, -2, 2], ![-1, 0, -1, 2], ![0, 2, 2, -4], ![1, -2, 1, 0]]⟩

def canonicalOutput27606 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1257⟩

theorem canonicalSound27606 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27606.moment H = canonicalOutput27606.moment H :=
  canonical_of_padded canonicalInput27606 canonicalOutput27606 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27607 : ExponentCode := ⟨4, 4, ![![0, 0, -2, 2], ![-1, 0, -1, 2], ![0, 2, 3, -5], ![1, -2, 0, 1]]⟩

def canonicalOutput27607 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1258⟩

theorem canonicalSound27607 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27607.moment H = canonicalOutput27607.moment H :=
  canonical_of_padded canonicalInput27607 canonicalOutput27607 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27608 : ExponentCode := ⟨5, 4, ![![0, 0, -2, 2], ![-1, 0, 1, 0], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0]]⟩

def canonicalOutput27608 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2784⟩

theorem canonicalSound27608 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27608.moment H = canonicalOutput27608.moment H :=
  canonical_of_padded canonicalInput27608 canonicalOutput27608 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation169, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27609 : ExponentCode := ⟨4, 4, ![![0, 0, -2, 2], ![-1, 0, 2, -1], ![0, 1, 0, -1], ![1, -1, 0, 0]]⟩

def canonicalOutput27609 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1264⟩

theorem canonicalSound27609 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27609.moment H = canonicalOutput27609.moment H :=
  canonical_of_padded canonicalInput27609 canonicalOutput27609 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27610 : ExponentCode := ⟨4, 4, ![![0, 0, -2, 2], ![-1, 0, 2, -1], ![0, 2, -1, -1], ![1, -2, 1, 0]]⟩

def canonicalOutput27610 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1010⟩

theorem canonicalSound27610 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27610.moment H = canonicalOutput27610.moment H :=
  canonical_of_padded canonicalInput27610 canonicalOutput27610 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput27611 : ExponentCode := ⟨4, 4, ![![0, 0, -2, 2], ![-1, 0, 2, -1], ![0, 2, 0, -2], ![1, -2, 0, 1]]⟩

def canonicalOutput27611 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1314⟩

theorem canonicalSound27611 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27611.moment H = canonicalOutput27611.moment H :=
  canonical_of_padded canonicalInput27611 canonicalOutput27611 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27612 : ExponentCode := ⟨4, 4, ![![0, 0, -2, 2], ![-1, 0, 2, -1], ![0, 2, 1, -3], ![1, -2, -1, 2]]⟩

def canonicalOutput27612 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1315⟩

theorem canonicalSound27612 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27612.moment H = canonicalOutput27612.moment H :=
  canonical_of_padded canonicalInput27612 canonicalOutput27612 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27613 : ExponentCode := ⟨4, 4, ![![0, 0, -2, 2], ![-1, 0, 3, -2], ![0, 2, -1, -1], ![1, -2, 0, 1]]⟩

def canonicalOutput27613 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1223⟩

theorem canonicalSound27613 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27613.moment H = canonicalOutput27613.moment H :=
  canonical_of_padded canonicalInput27613 canonicalOutput27613 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27614 : ExponentCode := ⟨4, 4, ![![0, 0, -2, 2], ![-1, 0, 3, -2], ![0, 2, 0, -2], ![1, -2, -1, 2]]⟩

def canonicalOutput27614 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1322⟩

theorem canonicalSound27614 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27614.moment H = canonicalOutput27614.moment H :=
  canonical_of_padded canonicalInput27614 canonicalOutput27614 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27615 : ExponentCode := ⟨4, 4, ![![0, 0, -2, 2], ![-1, 1, -1, 1], ![0, 0, 4, -4], ![1, -1, -1, 1]]⟩

def canonicalOutput27615 : ExponentCode := normalNode11119

theorem canonicalSound27615 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27615.moment H = canonicalOutput27615.moment H :=
  canonical_of_padded canonicalInput27615 canonicalOutput27615 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27616 : ExponentCode := ⟨4, 4, ![![0, 0, -2, 2], ![-1, 1, -1, 1], ![0, 1, 1, -2], ![1, -2, 2, -1]]⟩

def canonicalOutput27616 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1346⟩

theorem canonicalSound27616 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27616.moment H = canonicalOutput27616.moment H :=
  canonical_of_padded canonicalInput27616 canonicalOutput27616 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27617 : ExponentCode := ⟨4, 4, ![![0, 0, -2, 2], ![-1, 1, -1, 1], ![0, 1, 2, -3], ![1, -2, 1, 0]]⟩

def canonicalOutput27617 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1347⟩

theorem canonicalSound27617 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27617.moment H = canonicalOutput27617.moment H :=
  canonical_of_padded canonicalInput27617 canonicalOutput27617 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27618 : ExponentCode := ⟨4, 4, ![![0, 0, -2, 2], ![-1, 1, -1, 1], ![0, 1, 3, -4], ![1, -2, 0, 1]]⟩

def canonicalOutput27618 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1348⟩

theorem canonicalSound27618 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27618.moment H = canonicalOutput27618.moment H :=
  canonical_of_padded canonicalInput27618 canonicalOutput27618 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27619 : ExponentCode := ⟨4, 4, ![![0, 0, -2, 2], ![-1, 1, 1, -1], ![0, 0, 2, -2], ![1, -1, -1, 1]]⟩

def canonicalOutput27619 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1344⟩

theorem canonicalSound27619 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27619.moment H = canonicalOutput27619.moment H :=
  canonical_of_padded canonicalInput27619 canonicalOutput27619 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27620 : ExponentCode := ⟨4, 4, ![![0, 0, -2, 2], ![-1, 1, 1, -1], ![0, 1, 1, -2], ![1, -2, 0, 1]]⟩

def canonicalOutput27620 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1309⟩

theorem canonicalSound27620 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27620.moment H = canonicalOutput27620.moment H :=
  canonical_of_padded canonicalInput27620 canonicalOutput27620 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput27621 : ExponentCode := ⟨4, 4, ![![0, 0, -2, 2], ![-1, 1, 2, -2], ![0, 1, 1, -2], ![1, -2, -1, 2]]⟩

def canonicalOutput27621 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1370⟩

theorem canonicalSound27621 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27621.moment H = canonicalOutput27621.moment H :=
  canonical_of_padded canonicalInput27621 canonicalOutput27621 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27622 : ExponentCode := ⟨5, 4, ![![0, 0, -2, 2], ![0, -2, 1, 1], ![0, 0, 2, -2], ![0, 1, -2, 1], ![0, 1, 1, -2]]⟩

def canonicalOutput27622 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1220

theorem canonicalSound27622 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27622.moment H = canonicalOutput27622.moment H :=
  canonical_of_padded canonicalInput27622 canonicalOutput27622 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27623 : ExponentCode := ⟨4, 4, ![![0, 0, -2, 2], ![0, -2, 1, 1], ![0, 0, 2, -2], ![0, 2, -1, -1]]⟩

def canonicalOutput27623 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node224⟩

theorem canonicalSound27623 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27623.moment H = canonicalOutput27623.moment H :=
  canonical_of_padded canonicalInput27623 canonicalOutput27623 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27624 : ExponentCode := ⟨5, 4, ![![0, 0, -2, 2], ![0, -1, -1, 2], ![0, -1, 2, -1], ![0, 0, 2, -2], ![0, 2, -1, -1]]⟩

def canonicalOutput27624 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1220

theorem canonicalSound27624 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27624.moment H = canonicalOutput27624.moment H :=
  canonical_of_padded canonicalInput27624 canonicalOutput27624 (by decide) (by decide)
    ⟨false, true, canonicalPermutation51, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27625 : ExponentCode := ⟨4, 4, ![![0, 0, -2, 2], ![0, -1, -1, 2], ![0, -1, 3, -2], ![0, 2, 0, -2]]⟩

def canonicalOutput27625 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node212⟩

theorem canonicalSound27625 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27625.moment H = canonicalOutput27625.moment H :=
  canonical_of_padded canonicalInput27625 canonicalOutput27625 (by decide) (by decide)
    ⟨false, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27626 : ExponentCode := ⟨4, 4, ![![0, 0, -2, 2], ![0, -1, -1, 2], ![0, -1, 4, -3], ![0, 2, -1, -1]]⟩

def canonicalOutput27626 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node225⟩

theorem canonicalSound27626 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27626.moment H = canonicalOutput27626.moment H :=
  canonical_of_padded canonicalInput27626 canonicalOutput27626 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27627 : ExponentCode := ⟨4, 4, ![![0, 0, -2, 2], ![0, -1, 3, -2], ![0, 0, -2, 2], ![0, 1, 1, -2]]⟩

def canonicalOutput27627 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node274⟩

theorem canonicalSound27627 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27627.moment H = canonicalOutput27627.moment H :=
  canonical_of_padded canonicalInput27627 canonicalOutput27627 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27628 : ExponentCode := ⟨3, 4, ![![0, 0, -2, 2], ![0, 0, -2, 2], ![0, 0, 4, -4]]⟩

def canonicalOutput27628 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node9⟩

theorem canonicalSound27628 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27628.moment H = canonicalOutput27628.moment H :=
  canonical_of_padded canonicalInput27628 canonicalOutput27628 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27629 : ExponentCode := ⟨4, 4, ![![0, 0, -2, 2], ![0, 0, -1, 1], ![-1, 2, 1, -2], ![1, -2, 2, -1]]⟩

def canonicalOutput27629 : ExponentCode := normalNode7001

theorem canonicalSound27629 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27629.moment H = canonicalOutput27629.moment H :=
  canonical_of_padded canonicalInput27629 canonicalOutput27629 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput27630 : ExponentCode := ⟨4, 4, ![![0, 0, -2, 2], ![0, 0, -1, 1], ![-1, 2, 2, -3], ![1, -2, 1, 0]]⟩

def canonicalOutput27630 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node796⟩

theorem canonicalSound27630 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27630.moment H = canonicalOutput27630.moment H :=
  canonical_of_padded canonicalInput27630 canonicalOutput27630 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput27631 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![-2, 2, 1, -1], ![2, -2, 2, -2]]⟩

def canonicalOutput27631 : ExponentCode := normalNode5816

theorem canonicalSound27631 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27631.moment H = canonicalOutput27631.moment H :=
  canonical_of_padded canonicalInput27631 canonicalOutput27631 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation379, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput27632 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, -1, 1], ![0, 0, 1, -1], ![-1, 0, 2, -1], ![-1, 2, 1, -2], ![2, -2, -1, 1]]⟩

def canonicalOutput27632 : ExponentCode := normalNode5195

theorem canonicalSound27632 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27632.moment H = canonicalOutput27632.moment H :=
  canonical_of_padded canonicalInput27632 canonicalOutput27632 (by decide) (by decide)
    ⟨false, true, canonicalPermutation119, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput27633 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![-2, 2, -1, 1], ![2, -2, 2, -2]]⟩

def canonicalOutput27633 : ExponentCode := normalNode5810

theorem canonicalSound27633 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27633.moment H = canonicalOutput27633.moment H :=
  canonical_of_padded canonicalInput27633 canonicalOutput27633 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation364, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput27634 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![-2, 3, 0, -1], ![2, -3, 1, 0]]⟩

def canonicalOutput27634 : ExponentCode := normalNode1732

theorem canonicalSound27634 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27634.moment H = canonicalOutput27634.moment H :=
  canonical_of_padded canonicalInput27634 canonicalOutput27634 (by decide) (by decide)
    ⟨false, false, canonicalPermutation170, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput27635 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 2, -2], ![-2, 2, -1, 1], ![2, -2, 1, -1]]⟩

def canonicalOutput27635 : ExponentCode := normalNode5889

theorem canonicalSound27635 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27635.moment H = canonicalOutput27635.moment H :=
  canonical_of_padded canonicalInput27635 canonicalOutput27635 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27636 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![2, 1, 0, -3], ![-2, -2, 3, 1]]⟩

def canonicalOutput27636 : ExponentCode := normalNode592

theorem canonicalSound27636 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27636.moment H = canonicalOutput27636.moment H :=
  canonical_of_padded canonicalInput27636 canonicalOutput27636 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation357, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27637 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, 1, 1, 0], ![2, -2, 1, -1]]⟩

def canonicalOutput27637 : ExponentCode := normalNode5490

theorem canonicalSound27637 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27637.moment H = canonicalOutput27637.moment H :=
  canonical_of_padded canonicalInput27637 canonicalOutput27637 (by decide) (by decide)
    ⟨false, false, canonicalPermutation119, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27638 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, 2, 1, -1], ![2, -3, 1, 0]]⟩

def canonicalOutput27638 : ExponentCode := normalNode1768

theorem canonicalSound27638 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27638.moment H = canonicalOutput27638.moment H :=
  canonical_of_padded canonicalInput27638 canonicalOutput27638 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation364, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput27639 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![2, -2, -1, 1], ![-2, 1, 3, -2]]⟩

def canonicalOutput27639 : ExponentCode := normalNode4930

theorem canonicalSound27639 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27639.moment H = canonicalOutput27639.moment H :=
  canonical_of_padded canonicalInput27639 canonicalOutput27639 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation357, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27640 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![-2, -1, 2, 1], ![1, 2, 0, -3]]⟩

def canonicalOutput27640 : ExponentCode := normalNode1945

theorem canonicalSound27640 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27640.moment H = canonicalOutput27640.moment H :=
  canonical_of_padded canonicalInput27640 canonicalOutput27640 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation357, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput27641 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![-2, 3, 0, -1], ![1, -2, 2, -1]]⟩

def canonicalOutput27641 : ExponentCode := normalNode1805

theorem canonicalSound27641 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27641.moment H = canonicalOutput27641.moment H :=
  canonical_of_padded canonicalInput27641 canonicalOutput27641 (by decide) (by decide)
    ⟨false, false, canonicalPermutation140, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput27642 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, 0, 0, -1], ![-2, 3, 0, -1], ![1, -3, 2, 0]]⟩

def canonicalOutput27642 : ExponentCode := normalNode1804

theorem canonicalSound27642 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27642.moment H = canonicalOutput27642.moment H :=
  canonical_of_padded canonicalInput27642 canonicalOutput27642 (by decide) (by decide)
    ⟨false, false, canonicalPermutation119, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput27643 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-2, -1, 2, 1], ![2, -1, 2, -3]]⟩

def canonicalOutput27643 : ExponentCode := normalNode2742

theorem canonicalSound27643 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27643.moment H = canonicalOutput27643.moment H :=
  canonical_of_padded canonicalInput27643 canonicalOutput27643 (by decide) (by decide)
    ⟨false, false, canonicalPermutation161, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27644 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-2, -1, 2, 1], ![1, 1, 2, -4]]⟩

def canonicalOutput27644 : ExponentCode := normalNode2743

theorem canonicalSound27644 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27644.moment H = canonicalOutput27644.moment H :=
  canonical_of_padded canonicalInput27644 canonicalOutput27644 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation277, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27645 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-2, -1, 1, 2], ![2, -1, 2, -3]]⟩

def canonicalOutput27645 : ExponentCode := normalNode2585

theorem canonicalSound27645 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27645.moment H = canonicalOutput27645.moment H :=
  canonical_of_padded canonicalInput27645 canonicalOutput27645 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27646 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-2, -1, 2, 1], ![2, -1, 1, -2]]⟩

def canonicalOutput27646 : ExponentCode := normalNode2943

theorem canonicalSound27646 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27646.moment H = canonicalOutput27646.moment H :=
  canonical_of_padded canonicalInput27646 canonicalOutput27646 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27647 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-2, 0, 1, 1], ![2, -2, 2, -2]]⟩

def canonicalOutput27647 : ExponentCode := normalNode4424

theorem canonicalSound27647 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27647.moment H = canonicalOutput27647.moment H :=
  canonical_of_padded canonicalInput27647 canonicalOutput27647 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
