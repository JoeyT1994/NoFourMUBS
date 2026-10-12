import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes10
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes033
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes34
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes39
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes42
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes44
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes5
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes6
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput18560 : ExponentCode := ⟨5, 5, ![![-1, -1, 1, 2, -1], ![0, -1, -1, 0, 2], ![0, 1, 0, 0, -1], ![0, 1, 1, -1, -1], ![1, 0, -1, -1, 1]]⟩

def canonicalOutput18560 : ExponentCode := normalNode8546

theorem canonicalSound18560 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18560.moment H = canonicalOutput18560.moment H :=
  canonical_of_padded canonicalInput18560 canonicalOutput18560 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation169, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput18561 : ExponentCode := ⟨5, 5, ![![-1, -1, 1, 2, -1], ![0, -1, -1, 0, 2], ![0, 1, 1, -1, -1], ![0, 1, 0, 0, -1], ![1, 0, -1, -1, 1]]⟩

def canonicalOutput18561 : ExponentCode := normalNode8546

theorem canonicalSound18561 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18561.moment H = canonicalOutput18561.moment H :=
  canonical_of_padded canonicalInput18561 canonicalOutput18561 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation169, canonicalPermutation23⟩ (by decide +kernel) hH

def canonicalInput18562 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 2, -1], ![0, -1, 0, -1, 2], ![0, 1, -2, 0, 1], ![1, 1, 1, -1, -2]]⟩

def canonicalOutput18562 : ExponentCode := normalNode2761

theorem canonicalSound18562 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18562.moment H = canonicalOutput18562.moment H :=
  canonical_of_padded canonicalInput18562 canonicalOutput18562 (by decide) (by decide)
    ⟨true, true, canonicalPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput18563 : ExponentCode := ⟨5, 5, ![![-1, -1, 1, 2, -1], ![0, -1, 0, -1, 2], ![0, 1, 0, -1, 0], ![0, 1, 0, 0, -1], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput18563 : ExponentCode := normalNode8701

theorem canonicalSound18563 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18563.moment H = canonicalOutput18563.moment H :=
  canonical_of_padded canonicalInput18563 canonicalOutput18563 (by decide) (by decide)
    ⟨true, true, canonicalPermutation41, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput18564 : ExponentCode := ⟨5, 5, ![![-1, -1, 1, 2, -1], ![0, -1, 0, -1, 2], ![0, 1, 0, -1, 0], ![0, 1, 1, 0, -2], ![1, 0, -2, 0, 1]]⟩

def canonicalOutput18564 : ExponentCode := normalNode8249

theorem canonicalSound18564 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18564.moment H = canonicalOutput18564.moment H :=
  canonical_of_padded canonicalInput18564 canonicalOutput18564 (by decide) (by decide)
    ⟨true, false, canonicalPermutation61, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput18565 : ExponentCode := ⟨5, 5, ![![-1, -1, 1, 2, -1], ![0, -1, 0, -1, 2], ![0, 1, 0, 0, -1], ![0, 1, 0, 0, -1], ![1, 0, -1, -1, 1]]⟩

def canonicalOutput18565 : ExponentCode := normalNode8699

theorem canonicalSound18565 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18565.moment H = canonicalOutput18565.moment H :=
  canonical_of_padded canonicalInput18565 canonicalOutput18565 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation166, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput18566 : ExponentCode := ⟨5, 5, ![![-1, -1, 1, 2, -1], ![0, -1, 0, -1, 2], ![0, 1, 0, 0, -1], ![0, 1, 1, -1, -1], ![1, 0, -2, 0, 1]]⟩

def canonicalOutput18566 : ExponentCode := normalNode8567

theorem canonicalSound18566 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18566.moment H = canonicalOutput18566.moment H :=
  canonical_of_padded canonicalInput18566 canonicalOutput18566 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation169, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput18567 : ExponentCode := ⟨5, 5, ![![-1, -1, 1, 2, -1], ![0, -1, 0, -1, 2], ![0, 1, 1, -1, -1], ![0, 1, 0, 0, -1], ![1, 0, -2, 0, 1]]⟩

def canonicalOutput18567 : ExponentCode := normalNode8567

theorem canonicalSound18567 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18567.moment H = canonicalOutput18567.moment H :=
  canonical_of_padded canonicalInput18567 canonicalOutput18567 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation169, canonicalPermutation23⟩ (by decide +kernel) hH

def canonicalInput18568 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 2, -1], ![0, -1, 0, -1, 2], ![0, 2, 0, -1, -1], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput18568 : ExponentCode := normalNode10529

theorem canonicalSound18568 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18568.moment H = canonicalOutput18568.moment H :=
  canonical_of_padded canonicalInput18568 canonicalOutput18568 (by decide) (by decide)
    ⟨true, true, canonicalPermutation0, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput18569 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 2, -1], ![0, -1, 0, -1, 2], ![0, 2, 1, -1, -2], ![1, 0, -2, 0, 1]]⟩

def canonicalOutput18569 : ExponentCode := normalNode2520

theorem canonicalSound18569 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18569.moment H = canonicalOutput18569.moment H :=
  canonical_of_padded canonicalInput18569 canonicalOutput18569 (by decide) (by decide)
    ⟨true, true, canonicalPermutation14, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput18570 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 2, -1], ![0, -1, 0, -1, 2], ![1, 1, -2, 0, 0], ![0, 1, 1, -1, -1]]⟩

def canonicalOutput18570 : ExponentCode := normalNode4311

theorem canonicalSound18570 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18570.moment H = canonicalOutput18570.moment H :=
  canonical_of_padded canonicalInput18570 canonicalOutput18570 (by decide) (by decide)
    ⟨true, false, canonicalPermutation19, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput18571 : ExponentCode := ⟨5, 5, ![![-1, -1, 1, 2, -1], ![0, -1, 0, 0, 1], ![0, 1, -1, 0, 0], ![0, 1, 0, 0, -1], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput18571 : ExponentCode := normalNode9259

theorem canonicalSound18571 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18571.moment H = canonicalOutput18571.moment H :=
  canonical_of_padded canonicalInput18571 canonicalOutput18571 (by decide) (by decide)
    ⟨true, true, canonicalPermutation78, canonicalPermutation35⟩ (by decide +kernel) hH

def canonicalInput18572 : ExponentCode := ⟨5, 5, ![![-1, -1, 1, 2, -1], ![0, -1, 1, -2, 2], ![0, 1, 0, 0, -1], ![0, 1, 0, 0, -1], ![1, 0, -2, 0, 1]]⟩

def canonicalOutput18572 : ExponentCode := normalNode8691

theorem canonicalSound18572 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18572.moment H = canonicalOutput18572.moment H :=
  canonical_of_padded canonicalInput18572 canonicalOutput18572 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation167, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput18573 : ExponentCode := ⟨3, 5, ![![-1, -1, 1, 2, -1], ![0, -1, 1, -2, 2], ![1, 2, -2, 0, -1]]⟩

def canonicalOutput18573 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node626⟩

theorem canonicalSound18573 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18573.moment H = canonicalOutput18573.moment H :=
  canonical_of_padded canonicalInput18573 canonicalOutput18573 (by decide) (by decide)
    ⟨true, false, canonicalPermutation72, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput18574 : ExponentCode := ⟨5, 5, ![![-1, -1, 1, 2, -1], ![0, -1, 1, -1, 1], ![0, 1, 0, -1, 0], ![0, 1, 0, 0, -1], ![1, 0, -2, 0, 1]]⟩

def canonicalOutput18574 : ExponentCode := normalNode8709

theorem canonicalSound18574 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18574.moment H = canonicalOutput18574.moment H :=
  canonical_of_padded canonicalInput18574 canonicalOutput18574 (by decide) (by decide)
    ⟨true, true, canonicalPermutation41, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput18575 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 2, -1], ![0, -1, 1, -1, 1], ![0, 2, 0, -1, -1], ![1, 0, -2, 0, 1]]⟩

def canonicalOutput18575 : ExponentCode := normalNode4311

theorem canonicalSound18575 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18575.moment H = canonicalOutput18575.moment H :=
  canonical_of_padded canonicalInput18575 canonicalOutput18575 (by decide) (by decide)
    ⟨true, false, canonicalPermutation35, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput18576 : ExponentCode := ⟨3, 5, ![![-1, -1, 1, 2, -1], ![0, -1, 2, -1, 0], ![1, 2, -3, -1, 1]]⟩

def canonicalOutput18576 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node569⟩

theorem canonicalSound18576 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18576.moment H = canonicalOutput18576.moment H :=
  canonical_of_padded canonicalInput18576 canonicalOutput18576 (by decide) (by decide)
    ⟨true, true, canonicalPermutation55, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput18577 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 2, -1], ![0, 0, -2, -1, 3], ![0, 1, 0, -1, 0], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput18577 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2719⟩

theorem canonicalSound18577 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18577.moment H = canonicalOutput18577.moment H :=
  canonical_of_padded canonicalInput18577 canonicalOutput18577 (by decide) (by decide)
    ⟨true, false, canonicalPermutation76, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput18578 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 2, -1], ![0, 0, -2, 0, 2], ![0, 1, 0, -2, 1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput18578 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1840⟩

theorem canonicalSound18578 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18578.moment H = canonicalOutput18578.moment H :=
  canonical_of_padded canonicalInput18578 canonicalOutput18578 (by decide) (by decide)
    ⟨true, true, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput18579 : ExponentCode := ⟨5, 5, ![![-1, -1, 1, 2, -1], ![0, 0, -2, 0, 2], ![0, 1, 0, -1, 0], ![0, 1, 1, 0, -2], ![1, -1, 0, -1, 1]]⟩

def canonicalOutput18579 : ExponentCode := normalNode8268

theorem canonicalSound18579 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18579.moment H = canonicalOutput18579.moment H :=
  canonical_of_padded canonicalInput18579 canonicalOutput18579 (by decide) (by decide)
    ⟨true, false, canonicalPermutation61, canonicalPermutation17⟩ (by decide +kernel) hH

def canonicalInput18580 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 2, -1], ![0, 0, -1, -2, 3], ![0, 1, 0, 0, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput18580 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2555⟩

theorem canonicalSound18580 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18580.moment H = canonicalOutput18580.moment H :=
  canonical_of_padded canonicalInput18580 canonicalOutput18580 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput18581 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 2, -1], ![0, 0, -1, -1, 2], ![0, 1, -1, -1, 1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput18581 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1841⟩

theorem canonicalSound18581 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18581.moment H = canonicalOutput18581.moment H :=
  canonical_of_padded canonicalInput18581 canonicalOutput18581 (by decide) (by decide)
    ⟨true, true, canonicalPermutation54, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput18582 : ExponentCode := ⟨5, 5, ![![-1, -1, 1, 2, -1], ![0, 0, -1, -1, 2], ![0, 1, -1, 0, 0], ![0, 1, 0, 0, -1], ![1, -1, 1, -1, 0]]⟩

def canonicalOutput18582 : ExponentCode := normalNode8745

theorem canonicalSound18582 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18582.moment H = canonicalOutput18582.moment H :=
  canonical_of_padded canonicalInput18582 canonicalOutput18582 (by decide) (by decide)
    ⟨true, true, canonicalPermutation78, canonicalPermutation35⟩ (by decide +kernel) hH

def canonicalInput18583 : ExponentCode := ⟨5, 5, ![![-1, -1, 1, 2, -1], ![0, 0, -1, -1, 2], ![0, 1, -1, 0, 0], ![0, 1, 1, 0, -2], ![1, -1, 0, -1, 1]]⟩

def canonicalOutput18583 : ExponentCode := normalNode8461

theorem canonicalSound18583 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18583.moment H = canonicalOutput18583.moment H :=
  canonical_of_padded canonicalInput18583 canonicalOutput18583 (by decide) (by decide)
    ⟨true, false, canonicalPermutation36, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput18584 : ExponentCode := ⟨5, 5, ![![-1, -1, 1, 2, -1], ![0, 0, -1, -1, 2], ![0, 1, 0, -1, 0], ![0, 1, 1, 0, -2], ![1, -1, -1, 0, 1]]⟩

def canonicalOutput18584 : ExponentCode := normalNode8080

theorem canonicalSound18584 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18584.moment H = canonicalOutput18584.moment H :=
  canonical_of_padded canonicalInput18584 canonicalOutput18584 (by decide) (by decide)
    ⟨true, false, canonicalPermutation61, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput18585 : ExponentCode := ⟨5, 5, ![![-1, -1, 1, 2, -1], ![0, 0, -1, -1, 2], ![0, 1, 0, 0, -1], ![0, 1, 0, 0, -1], ![1, -1, 0, -1, 1]]⟩

def canonicalOutput18585 : ExponentCode := normalNode8740

theorem canonicalSound18585 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18585.moment H = canonicalOutput18585.moment H :=
  canonical_of_padded canonicalInput18585 canonicalOutput18585 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation166, canonicalPermutation35⟩ (by decide +kernel) hH

def canonicalInput18586 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 2, -1], ![0, 0, -1, -1, 2], ![1, 0, -1, -1, 1], ![0, 1, 1, 0, -2]]⟩

def canonicalOutput18586 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1841⟩

theorem canonicalSound18586 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18586.moment H = canonicalOutput18586.moment H :=
  canonical_of_padded canonicalInput18586 canonicalOutput18586 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput18587 : ExponentCode := ⟨5, 5, ![![-1, -1, 1, 2, -1], ![0, 0, -1, 0, 1], ![0, 1, -1, -1, 1], ![0, 1, 1, 0, -2], ![1, -1, 0, -1, 1]]⟩

def canonicalOutput18587 : ExponentCode := normalNode7638

theorem canonicalSound18587 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18587.moment H = canonicalOutput18587.moment H :=
  canonical_of_padded canonicalInput18587 canonicalOutput18587 (by decide) (by decide)
    ⟨true, true, canonicalPermutation31, canonicalPermutation16⟩ (by decide +kernel) hH

def canonicalInput18588 : ExponentCode := ⟨5, 5, ![![-1, -1, 1, 2, -1], ![0, 0, -1, 0, 1], ![0, 1, 0, -1, 0], ![0, 1, 0, 0, -1], ![1, -1, 0, -1, 1]]⟩

def canonicalOutput18588 : ExponentCode := normalNode8742

theorem canonicalSound18588 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18588.moment H = canonicalOutput18588.moment H :=
  canonical_of_padded canonicalInput18588 canonicalOutput18588 (by decide) (by decide)
    ⟨true, true, canonicalPermutation41, canonicalPermutation35⟩ (by decide +kernel) hH

def canonicalInput18589 : ExponentCode := ⟨5, 5, ![![-1, -1, 1, 2, -1], ![0, 0, -1, 0, 1], ![0, 1, 0, -1, 0], ![0, 1, 1, 0, -2], ![1, -1, -1, -1, 2]]⟩

def canonicalOutput18589 : ExponentCode := normalNode10157

theorem canonicalSound18589 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18589.moment H = canonicalOutput18589.moment H :=
  canonical_of_padded canonicalInput18589 canonicalOutput18589 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation175, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput18590 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 2, -1], ![0, 0, 0, -2, 2], ![0, 1, -2, 0, 1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput18590 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1839⟩

theorem canonicalSound18590 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18590.moment H = canonicalOutput18590.moment H :=
  canonical_of_padded canonicalInput18590 canonicalOutput18590 (by decide) (by decide)
    ⟨true, true, canonicalPermutation54, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput18591 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 2, -1], ![0, 0, 0, -2, 2], ![0, 1, -1, 0, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput18591 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2758⟩

theorem canonicalSound18591 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18591.moment H = canonicalOutput18591.moment H :=
  canonical_of_padded canonicalInput18591 canonicalOutput18591 (by decide) (by decide)
    ⟨true, true, canonicalPermutation78, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput18592 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 2, -1], ![0, 0, 0, -2, 2], ![0, 1, 0, 0, -1], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput18592 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2758⟩

theorem canonicalSound18592 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18592.moment H = canonicalOutput18592.moment H :=
  canonical_of_padded canonicalInput18592 canonicalOutput18592 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation154, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput18593 : ExponentCode := ⟨5, 5, ![![-1, -1, 1, 2, -1], ![0, 0, 0, -1, 1], ![0, 0, 1, 0, -1], ![0, 2, -1, 0, -1], ![1, -1, -1, -1, 2]]⟩

def canonicalOutput18593 : ExponentCode := normalNode10431

theorem canonicalSound18593 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18593.moment H = canonicalOutput18593.moment H :=
  canonical_of_padded canonicalInput18593 canonicalOutput18593 (by decide) (by decide)
    ⟨true, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput18594 : ExponentCode := ⟨5, 5, ![![-1, -1, 1, 2, -1], ![0, 0, 0, -1, 1], ![0, 1, -2, 0, 1], ![0, 1, 1, 0, -2], ![1, -1, 0, -1, 1]]⟩

def canonicalOutput18594 : ExponentCode := normalNode7636

theorem canonicalSound18594 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18594.moment H = canonicalOutput18594.moment H :=
  canonical_of_padded canonicalInput18594 canonicalOutput18594 (by decide) (by decide)
    ⟨true, true, canonicalPermutation65, canonicalPermutation16⟩ (by decide +kernel) hH

def canonicalInput18595 : ExponentCode := ⟨5, 5, ![![-1, -1, 1, 2, -1], ![0, 0, 0, -1, 1], ![0, 1, -1, -1, 1], ![0, 1, 1, 0, -2], ![1, -1, -1, 0, 1]]⟩

def canonicalOutput18595 : ExponentCode := normalNode7637

theorem canonicalSound18595 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18595.moment H = canonicalOutput18595.moment H :=
  canonical_of_padded canonicalInput18595 canonicalOutput18595 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation197, canonicalPermutation16⟩ (by decide +kernel) hH

def canonicalInput18596 : ExponentCode := ⟨5, 5, ![![-1, -1, 1, 2, -1], ![0, 0, 0, -1, 1], ![0, 1, -1, 0, 0], ![0, 1, 0, 0, -1], ![1, -1, 0, -1, 1]]⟩

def canonicalOutput18596 : ExponentCode := normalNode8746

theorem canonicalSound18596 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18596.moment H = canonicalOutput18596.moment H :=
  canonical_of_padded canonicalInput18596 canonicalOutput18596 (by decide) (by decide)
    ⟨true, true, canonicalPermutation78, canonicalPermutation35⟩ (by decide +kernel) hH

def canonicalInput18597 : ExponentCode := ⟨5, 5, ![![-1, -1, 1, 2, -1], ![0, 0, 0, -1, 1], ![0, 1, -1, 0, 0], ![0, 1, 1, 0, -2], ![1, -1, -1, -1, 2]]⟩

def canonicalOutput18597 : ExponentCode := normalNode10158

theorem canonicalSound18597 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18597.moment H = canonicalOutput18597.moment H :=
  canonical_of_padded canonicalInput18597 canonicalOutput18597 (by decide) (by decide)
    ⟨true, true, canonicalPermutation44, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput18598 : ExponentCode := ⟨5, 5, ![![-1, -1, 1, 2, -1], ![0, 0, 0, -1, 1], ![0, 1, 0, -1, 0], ![0, 1, 0, 0, -1], ![1, -1, -1, 0, 1]]⟩

def canonicalOutput18598 : ExponentCode := normalNode8413

theorem canonicalSound18598 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18598.moment H = canonicalOutput18598.moment H :=
  canonical_of_padded canonicalInput18598 canonicalOutput18598 (by decide) (by decide)
    ⟨true, false, canonicalPermutation61, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput18599 : ExponentCode := ⟨5, 5, ![![-1, -1, 1, 2, -1], ![0, 0, 0, -1, 1], ![0, 1, 0, -1, 0], ![0, 1, 1, 0, -2], ![1, -1, -2, 0, 2]]⟩

def canonicalOutput18599 : ExponentCode := normalNode8418

theorem canonicalSound18599 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18599.moment H = canonicalOutput18599.moment H :=
  canonical_of_padded canonicalInput18599 canonicalOutput18599 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation184, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput18600 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 2, -1], ![0, 0, 1, -2, 1], ![0, 1, -2, 0, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput18600 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2761⟩

theorem canonicalSound18600 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18600.moment H = canonicalOutput18600.moment H :=
  canonical_of_padded canonicalInput18600 canonicalOutput18600 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation153, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput18601 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 2, -1], ![0, 0, 1, 0, -1], ![0, 1, -2, 0, 1], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput18601 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2828⟩

theorem canonicalSound18601 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18601.moment H = canonicalOutput18601.moment H :=
  canonical_of_padded canonicalInput18601 canonicalOutput18601 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput18602 : ExponentCode := ⟨5, 5, ![![-1, -1, 1, 2, -1], ![0, 0, 1, 0, -1], ![0, 1, 0, -2, 1], ![0, 1, 0, 0, -1], ![1, -1, -2, 0, 2]]⟩

def canonicalOutput18602 : ExponentCode := normalNode9177

theorem canonicalSound18602 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18602.moment H = canonicalOutput18602.moment H :=
  canonical_of_padded canonicalInput18602 canonicalOutput18602 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, OAI.MUB6.Certificate.PairSemantics.permutation188⟩ (by decide +kernel) hH

def canonicalInput18603 : ExponentCode := ⟨3, 5, ![![-1, -1, 1, 2, -1], ![0, 2, -2, -1, 1], ![1, -1, 1, -1, 0]]⟩

def canonicalOutput18603 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node1141⟩

theorem canonicalSound18603 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18603.moment H = canonicalOutput18603.moment H :=
  canonical_of_padded canonicalInput18603 canonicalOutput18603 (by decide) (by decide)
    ⟨true, true, canonicalPermutation55, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput18604 : ExponentCode := ⟨3, 5, ![![-1, -1, 1, 2, -1], ![0, 2, -2, 1, -1], ![1, -1, 1, -3, 2]]⟩

def canonicalOutput18604 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node539⟩

theorem canonicalSound18604 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18604.moment H = canonicalOutput18604.moment H :=
  canonical_of_padded canonicalInput18604 canonicalOutput18604 (by decide) (by decide)
    ⟨true, true, canonicalPermutation53, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18605 : ExponentCode := ⟨3, 5, ![![-1, -1, 1, 2, -1], ![0, 2, 1, -2, -1], ![1, -1, -2, 0, 2]]⟩

def canonicalOutput18605 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node626⟩

theorem canonicalSound18605 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18605.moment H = canonicalOutput18605.moment H :=
  canonical_of_padded canonicalInput18605 canonicalOutput18605 (by decide) (by decide)
    ⟨true, false, canonicalPermutation58, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput18606 : ExponentCode := ⟨3, 5, ![![-1, -1, 1, 2, -1], ![0, 2, 1, -1, -2], ![1, -1, -2, -1, 3]]⟩

def canonicalOutput18606 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node535⟩

theorem canonicalSound18606 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18606.moment H = canonicalOutput18606.moment H :=
  canonical_of_padded canonicalInput18606 canonicalOutput18606 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput18607 : ExponentCode := ⟨3, 5, ![![-1, -1, 1, 2, -1], ![0, 3, -2, 0, -1], ![1, -2, 1, -2, 2]]⟩

def canonicalOutput18607 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node356⟩

theorem canonicalSound18607 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18607.moment H = canonicalOutput18607.moment H :=
  canonical_of_padded canonicalInput18607 canonicalOutput18607 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation173, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput18608 : ExponentCode := ⟨3, 5, ![![-1, -1, 1, 2, -1], ![1, -2, 1, -1, 1], ![0, 3, -2, -1, 0]]⟩

def canonicalOutput18608 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node374⟩

theorem canonicalSound18608 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18608.moment H = canonicalOutput18608.moment H :=
  canonical_of_padded canonicalInput18608 canonicalOutput18608 (by decide) (by decide)
    ⟨true, true, canonicalPermutation39, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput18609 : ExponentCode := ⟨3, 5, ![![-1, -1, 1, 2, -1], ![1, -1, -2, -1, 3], ![0, 2, 1, -1, -2]]⟩

def canonicalOutput18609 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node535⟩

theorem canonicalSound18609 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18609.moment H = canonicalOutput18609.moment H :=
  canonical_of_padded canonicalInput18609 canonicalOutput18609 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput18610 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 2, -1], ![1, -1, -1, -1, 2], ![0, 1, -1, -1, 1], ![0, 1, 1, 0, -2]]⟩

def canonicalOutput18610 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2207⟩

theorem canonicalSound18610 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18610.moment H = canonicalOutput18610.moment H :=
  canonical_of_padded canonicalInput18610 canonicalOutput18610 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput18611 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 2, -1], ![1, -1, 0, -1, 1], ![0, 1, -2, 0, 1], ![0, 1, 1, -1, -1]]⟩

def canonicalOutput18611 : ExponentCode := normalNode4304

theorem canonicalSound18611 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18611.moment H = canonicalOutput18611.moment H :=
  canonical_of_padded canonicalInput18611 canonicalOutput18611 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation178, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput18612 : ExponentCode := ⟨3, 5, ![![-1, -1, 1, 2, -1], ![1, -1, 1, -2, 1], ![0, 2, -2, 0, 0]]⟩

def canonicalOutput18612 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node704⟩

theorem canonicalSound18612 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18612.moment H = canonicalOutput18612.moment H :=
  canonical_of_padded canonicalInput18612 canonicalOutput18612 (by decide) (by decide)
    ⟨true, false, canonicalPermutation36, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput18613 : ExponentCode := ⟨3, 5, ![![-1, -1, 1, 2, -1], ![1, -1, 1, 0, -1], ![0, 2, -2, -2, 2]]⟩

def canonicalOutput18613 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node1131⟩

theorem canonicalSound18613 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18613.moment H = canonicalOutput18613.moment H :=
  canonical_of_padded canonicalInput18613 canonicalOutput18613 (by decide) (by decide)
    ⟨true, false, canonicalPermutation37, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput18614 : ExponentCode := ⟨3, 5, ![![-1, -1, 1, 2, -1], ![1, -1, 2, -1, -1], ![0, 2, -3, -1, 2]]⟩

def canonicalOutput18614 : ExponentCode := normalNode2999

theorem canonicalSound18614 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18614.moment H = canonicalOutput18614.moment H :=
  canonical_of_padded canonicalInput18614 canonicalOutput18614 (by decide) (by decide)
    ⟨true, true, canonicalPermutation42, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput18615 : ExponentCode := ⟨3, 5, ![![-1, -1, 1, 2, -1], ![2, -1, 1, 0, -2], ![-1, 2, -2, -2, 3]]⟩

def canonicalOutput18615 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node526⟩

theorem canonicalSound18615 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18615.moment H = canonicalOutput18615.moment H :=
  canonical_of_padded canonicalInput18615 canonicalOutput18615 (by decide) (by decide)
    ⟨true, false, canonicalPermutation13, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput18616 : ExponentCode := ⟨5, 3, ![![-1, -1, 2], ![-2, 4, -2], ![1, -3, 2], ![1, 0, -1], ![1, 0, -1]]⟩

def canonicalOutput18616 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node425⟩

theorem canonicalSound18616 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18616.moment H = canonicalOutput18616.moment H :=
  canonical_of_padded canonicalInput18616 canonicalOutput18616 (by decide) (by decide)
    ⟨false, false, canonicalPermutation78, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput18617 : ExponentCode := ⟨5, 3, ![![-1, -1, 2], ![-1, -3, 4], ![0, 4, -4], ![1, 0, -1], ![1, 0, -1]]⟩

def canonicalOutput18617 : ExponentCode := normalNode6257

theorem canonicalSound18617 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18617.moment H = canonicalOutput18617.moment H :=
  canonical_of_padded canonicalInput18617 canonicalOutput18617 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18618 : ExponentCode := ⟨5, 3, ![![-1, -1, 2], ![-1, -2, 3], ![0, 5, -5], ![1, -1, 0], ![1, -1, 0]]⟩

def canonicalOutput18618 : ExponentCode := normalNode7131

theorem canonicalSound18618 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18618.moment H = canonicalOutput18618.moment H :=
  canonical_of_padded canonicalInput18618 canonicalOutput18618 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18619 : ExponentCode := ⟨4, 3, ![![-1, -1, 2], ![-1, -2, 3], ![1, -1, 0], ![1, 4, -5]]⟩

def canonicalOutput18619 : ExponentCode := normalNode5980

theorem canonicalSound18619 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18619.moment H = canonicalOutput18619.moment H :=
  canonical_of_padded canonicalInput18619 canonicalOutput18619 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18620 : ExponentCode := ⟨5, 3, ![![-1, -1, 2], ![-1, -1, 2], ![0, 5, -5], ![1, -1, 0], ![1, -2, 1]]⟩

def canonicalOutput18620 : ExponentCode := normalNode9516

theorem canonicalSound18620 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18620.moment H = canonicalOutput18620.moment H :=
  canonical_of_padded canonicalInput18620 canonicalOutput18620 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18621 : ExponentCode := ⟨4, 3, ![![-1, -1, 2], ![-1, -1, 2], ![0, 5, -5], ![2, -3, 1]]⟩

def canonicalOutput18621 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code702

theorem canonicalSound18621 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18621.moment H = canonicalOutput18621.moment H :=
  canonical_of_padded canonicalInput18621 canonicalOutput18621 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput18622 : ExponentCode := ⟨4, 3, ![![-1, -1, 2], ![-1, -1, 2], ![1, -2, 1], ![1, 4, -5]]⟩

def canonicalOutput18622 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node234⟩

theorem canonicalSound18622 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18622.moment H = canonicalOutput18622.moment H :=
  canonical_of_padded canonicalInput18622 canonicalOutput18622 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18623 : ExponentCode := ⟨5, 3, ![![-1, -1, 2], ![-1, 2, -1], ![0, -2, 2], ![1, -1, 0], ![1, 2, -3]]⟩

def canonicalOutput18623 : ExponentCode := normalNode7135

theorem canonicalSound18623 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18623.moment H = canonicalOutput18623.moment H :=
  canonical_of_padded canonicalInput18623 canonicalOutput18623 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
