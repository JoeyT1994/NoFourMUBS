import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes002
import NoFourMUBs.Step2.SOS.NormalizationNodes004
import NoFourMUBs.Step2.SOS.NormalizationNodes005
import NoFourMUBs.Step2.SOS.NormalizationNodes006
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes012
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes018
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes45
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes48
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes49
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes50
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes51
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes52
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput31424 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, 0, -1, -1], ![-1, -1, -1, 3], ![-1, -1, 2, 0]]⟩

def canonicalOutput31424 : ExponentCode := normalNode4332

theorem canonicalSound31424 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31424.moment H = canonicalOutput31424.moment H :=
  canonical_of_padded canonicalInput31424 canonicalOutput31424 (by decide) (by decide)
    ⟨false, true, canonicalPermutation145, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31425 : ExponentCode := ⟨4, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 2, -3], ![0, -2, -2, 4]]⟩

def canonicalOutput31425 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node149⟩

theorem canonicalSound31425 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31425.moment H = canonicalOutput31425.moment H :=
  canonical_of_padded canonicalInput31425 canonicalOutput31425 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31426 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, -1, 1], ![1, 0, 0, -1], ![0, 1, 2, -3], ![-2, -1, -1, 4]]⟩

def canonicalOutput31426 : ExponentCode := normalNode1382

theorem canonicalSound31426 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31426.moment H = canonicalOutput31426.moment H :=
  canonical_of_padded canonicalInput31426 canonicalOutput31426 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation312, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31427 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-2, 0, 0, 2], ![0, -1, 2, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput31427 : ExponentCode := normalNode4645

theorem canonicalSound31427 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31427.moment H = canonicalOutput31427.moment H :=
  canonical_of_padded canonicalInput31427 canonicalOutput31427 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation255, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput31428 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-1, -1, 0, 2], ![-1, 0, 2, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput31428 : ExponentCode := normalNode5618

theorem canonicalSound31428 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31428.moment H = canonicalOutput31428.moment H :=
  canonical_of_padded canonicalInput31428 canonicalOutput31428 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation255, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput31429 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-1, -1, 0, 2], ![-1, 1, -1, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput31429 : ExponentCode := normalNode8798

theorem canonicalSound31429 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31429.moment H = canonicalOutput31429.moment H :=
  canonical_of_padded canonicalInput31429 canonicalOutput31429 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation316, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput31430 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-1, 0, -1, 2], ![-1, 2, -1, 0], ![1, -2, 2, -1]]⟩

def canonicalOutput31430 : ExponentCode := normalNode5385

theorem canonicalSound31430 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31430.moment H = canonicalOutput31430.moment H :=
  canonical_of_padded canonicalInput31430 canonicalOutput31430 (by decide) (by decide)
    ⟨false, true, canonicalPermutation302, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput31431 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-1, 0, 2, -1], ![1, 1, -1, -1], ![-1, -1, -1, 3]]⟩

def canonicalOutput31431 : ExponentCode := normalNode7739

theorem canonicalSound31431 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31431.moment H = canonicalOutput31431.moment H :=
  canonical_of_padded canonicalInput31431 canonicalOutput31431 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31432 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-1, 1, 1, -1], ![1, -2, 1, 0], ![-1, 1, -2, 2]]⟩

def canonicalOutput31432 : ExponentCode := normalNode5081

theorem canonicalSound31432 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31432.moment H = canonicalOutput31432.moment H :=
  canonical_of_padded canonicalInput31432 canonicalOutput31432 (by decide) (by decide)
    ⟨false, true, canonicalPermutation109, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput31433 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![0, -1, 0, 1], ![0, 0, -3, 3], ![-1, 1, 3, -3]]⟩

def canonicalOutput31433 : ExponentCode := normalNode10973

theorem canonicalSound31433 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31433.moment H = canonicalOutput31433.moment H :=
  canonical_of_padded canonicalInput31433 canonicalOutput31433 (by decide) (by decide)
    ⟨false, false, canonicalPermutation301, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31434 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![0, -1, 2, -1], ![1, 1, -1, -1], ![-2, 0, -1, 3]]⟩

def canonicalOutput31434 : ExponentCode := normalNode3504

theorem canonicalSound31434 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31434.moment H = canonicalOutput31434.moment H :=
  canonical_of_padded canonicalInput31434 canonicalOutput31434 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31435 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-1, 0, -3, 4], ![-1, 1, 3, -3]]⟩

def canonicalOutput31435 : ExponentCode := normalNode9637

theorem canonicalSound31435 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31435.moment H = canonicalOutput31435.moment H :=
  canonical_of_padded canonicalInput31435 canonicalOutput31435 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31436 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-1, 0, -2, 3], ![-1, 1, 2, -2]]⟩

def canonicalOutput31436 : ExponentCode := normalNode9825

theorem canonicalSound31436 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31436.moment H = canonicalOutput31436.moment H :=
  canonical_of_padded canonicalInput31436 canonicalOutput31436 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31437 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-1, 0, 3, -2], ![-1, 1, -3, 3]]⟩

def canonicalOutput31437 : ExponentCode := normalNode9833

theorem canonicalSound31437 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31437.moment H = canonicalOutput31437.moment H :=
  canonical_of_padded canonicalInput31437 canonicalOutput31437 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31438 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, -1, 0, 0], ![0, 0, -3, 3], ![-2, 1, 3, -2]]⟩

def canonicalOutput31438 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3239⟩

theorem canonicalSound31438 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31438.moment H = canonicalOutput31438.moment H :=
  canonical_of_padded canonicalInput31438 canonicalOutput31438 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation326, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31439 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, -1, 0], ![0, -1, -2, 3], ![-2, 1, 3, -2]]⟩

def canonicalOutput31439 : ExponentCode := normalNode4911

theorem canonicalSound31439 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31439.moment H = canonicalOutput31439.moment H :=
  canonical_of_padded canonicalInput31439 canonicalOutput31439 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31440 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, -1, 0], ![0, -1, 3, -2], ![-2, 1, -2, 3]]⟩

def canonicalOutput31440 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3303⟩

theorem canonicalSound31440 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31440.moment H = canonicalOutput31440.moment H :=
  canonical_of_padded canonicalInput31440 canonicalOutput31440 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31441 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, -1, 0], ![0, 1, 2, -3], ![-2, -1, -1, 4]]⟩

def canonicalOutput31441 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node2937⟩

theorem canonicalSound31441 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31441.moment H = canonicalOutput31441.moment H :=
  canonical_of_padded canonicalInput31441 canonicalOutput31441 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation312, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31442 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-2, 1, 2, -1], ![0, -1, -2, 3]]⟩

def canonicalOutput31442 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3252⟩

theorem canonicalSound31442 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31442.moment H = canonicalOutput31442.moment H :=
  canonical_of_padded canonicalInput31442 canonicalOutput31442 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31443 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, -2, 2, 1], ![-1, 2, -2, 1]]⟩

def canonicalOutput31443 : ExponentCode := normalNode10490

theorem canonicalSound31443 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31443.moment H = canonicalOutput31443.moment H :=
  canonical_of_padded canonicalInput31443 canonicalOutput31443 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput31444 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, -1, 3, -1], ![-1, 1, -3, 3]]⟩

def canonicalOutput31444 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3366⟩

theorem canonicalSound31444 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31444.moment H = canonicalOutput31444.moment H :=
  canonical_of_padded canonicalInput31444 canonicalOutput31444 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation285, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput31445 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, 1, 2, -2], ![-1, -1, -2, 4]]⟩

def canonicalOutput31445 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3346⟩

theorem canonicalSound31445 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31445.moment H = canonicalOutput31445.moment H :=
  canonical_of_padded canonicalInput31445 canonicalOutput31445 (by decide) (by decide)
    ⟨false, false, canonicalPermutation292, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput31446 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, 0, -1], ![0, 1, 1, -2], ![-2, -1, -1, 4]]⟩

def canonicalOutput31446 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node2921⟩

theorem canonicalSound31446 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31446.moment H = canonicalOutput31446.moment H :=
  canonical_of_padded canonicalInput31446 canonicalOutput31446 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation335, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput31447 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, 0, -1], ![0, 1, 2, -3], ![-2, -1, -2, 5]]⟩

def canonicalOutput31447 : ExponentCode := normalNode1087

theorem canonicalSound31447 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31447.moment H = canonicalOutput31447.moment H :=
  canonical_of_padded canonicalInput31447 canonicalOutput31447 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation312, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31448 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 1, -2, 0], ![-2, 0, -1, 3], ![0, -1, 3, -2]]⟩

def canonicalOutput31448 : ExponentCode := normalNode4691

theorem canonicalSound31448 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31448.moment H = canonicalOutput31448.moment H :=
  canonical_of_padded canonicalInput31448 canonicalOutput31448 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31449 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 1, -2, 0], ![-1, -1, -1, 3], ![-1, 0, 3, -2]]⟩

def canonicalOutput31449 : ExponentCode := normalNode8801

theorem canonicalSound31449 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31449.moment H = canonicalOutput31449.moment H :=
  canonical_of_padded canonicalInput31449 canonicalOutput31449 (by decide) (by decide)
    ⟨false, true, canonicalPermutation323, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput31450 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 1, -1, -1], ![-2, 0, 3, -1], ![0, -1, -2, 3]]⟩

def canonicalOutput31450 : ExponentCode := normalNode3526

theorem canonicalSound31450 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31450.moment H = canonicalOutput31450.moment H :=
  canonical_of_padded canonicalInput31450 canonicalOutput31450 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31451 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 1, -1, -1], ![-1, -1, 3, -1], ![-1, 0, -2, 3]]⟩

def canonicalOutput31451 : ExponentCode := normalNode7751

theorem canonicalSound31451 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31451.moment H = canonicalOutput31451.moment H :=
  canonical_of_padded canonicalInput31451 canonicalOutput31451 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31452 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-2, 0, 0, 2], ![0, -2, 2, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput31452 : ExponentCode := normalNode3798

theorem canonicalSound31452 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31452.moment H = canonicalOutput31452.moment H :=
  canonical_of_padded canonicalInput31452 canonicalOutput31452 (by decide) (by decide)
    ⟨false, false, canonicalPermutation130, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput31453 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-2, 0, 1, 1], ![0, -2, 1, 1], ![1, 1, -1, -1]]⟩

def canonicalOutput31453 : ExponentCode := normalNode4201

theorem canonicalSound31453 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31453.moment H = canonicalOutput31453.moment H :=
  canonical_of_padded canonicalInput31453 canonicalOutput31453 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31454 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-2, 0, 1, 1], ![0, 2, -1, -1], ![1, -3, 1, 1]]⟩

def canonicalOutput31454 : ExponentCode := normalNode5326

theorem canonicalSound31454 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31454.moment H = canonicalOutput31454.moment H :=
  canonical_of_padded canonicalInput31454 canonicalOutput31454 (by decide) (by decide)
    ⟨false, false, canonicalPermutation291, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput31455 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-2, 0, 2, 0], ![0, -2, 0, 2], ![1, 1, -1, -1]]⟩

def canonicalOutput31455 : ExponentCode := normalNode3798

theorem canonicalSound31455 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31455.moment H = canonicalOutput31455.moment H :=
  canonical_of_padded canonicalInput31455 canonicalOutput31455 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31456 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-1, -1, 0, 2], ![-1, -1, 1, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput31456 : ExponentCode := normalNode8777

theorem canonicalSound31456 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31456.moment H = canonicalOutput31456.moment H :=
  canonical_of_padded canonicalInput31456 canonicalOutput31456 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31457 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-1, -1, 0, 2], ![-1, -1, 2, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput31457 : ExponentCode := normalNode5638

theorem canonicalSound31457 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31457.moment H = canonicalOutput31457.moment H :=
  canonical_of_padded canonicalInput31457 canonicalOutput31457 (by decide) (by decide)
    ⟨false, true, canonicalPermutation302, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput31458 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-1, -1, 2, 0], ![1, 1, 0, -2], ![-1, -1, -1, 3]]⟩

def canonicalOutput31458 : ExponentCode := normalNode7655

theorem canonicalSound31458 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31458.moment H = canonicalOutput31458.moment H :=
  canonical_of_padded canonicalInput31458 canonicalOutput31458 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31459 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-1, 0, -1, 2], ![1, 1, 0, -2], ![-1, -2, 2, 1]]⟩

def canonicalOutput31459 : ExponentCode := normalNode2535

theorem canonicalSound31459 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31459.moment H = canonicalOutput31459.moment H :=
  canonical_of_padded canonicalInput31459 canonicalOutput31459 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation375, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput31460 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-1, 0, 2, -1], ![-1, 2, -1, 0], ![1, -3, 0, 2]]⟩

def canonicalOutput31460 : ExponentCode := normalNode1773

theorem canonicalSound31460 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31460.moment H = canonicalOutput31460.moment H :=
  canonical_of_padded canonicalInput31460 canonicalOutput31460 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation361, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput31461 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-1, 0, 2, -1], ![1, 1, -1, -1], ![-1, -2, 0, 3]]⟩

def canonicalOutput31461 : ExponentCode := normalNode1833

theorem canonicalSound31461 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31461.moment H = canonicalOutput31461.moment H :=
  canonical_of_padded canonicalInput31461 canonicalOutput31461 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation375, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput31462 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-1, 1, 1, -1], ![1, -1, 1, -1], ![-1, -1, -1, 3]]⟩

def canonicalOutput31462 : ExponentCode := normalNode7811

theorem canonicalSound31462 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31462.moment H = canonicalOutput31462.moment H :=
  canonical_of_padded canonicalInput31462 canonicalOutput31462 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation374, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31463 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![0, -2, 1, 1], ![1, 0, 1, -2], ![-2, 1, -1, 2]]⟩

def canonicalOutput31463 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3215⟩

theorem canonicalSound31463 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31463.moment H = canonicalOutput31463.moment H :=
  canonical_of_padded canonicalInput31463 canonicalOutput31463 (by decide) (by decide)
    ⟨false, false, canonicalPermutation389, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput31464 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![0, -1, -1, 2], ![1, -2, 1, 0], ![-2, 2, 1, -1]]⟩

def canonicalOutput31464 : ExponentCode := normalNode2453

theorem canonicalSound31464 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31464.moment H = canonicalOutput31464.moment H :=
  canonical_of_padded canonicalInput31464 canonicalOutput31464 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation310, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput31465 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![0, -1, 2, -1], ![1, -2, 0, 1], ![-2, 2, -1, 1]]⟩

def canonicalOutput31465 : ExponentCode := normalNode5080

theorem canonicalSound31465 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31465.moment H = canonicalOutput31465.moment H :=
  canonical_of_padded canonicalInput31465 canonicalOutput31465 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation320, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput31466 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![0, -1, 2, -1], ![1, 1, -1, -1], ![-2, -1, 0, 3]]⟩

def canonicalOutput31466 : ExponentCode := normalNode1833

theorem canonicalSound31466 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31466.moment H = canonicalOutput31466.moment H :=
  canonical_of_padded canonicalInput31466 canonicalOutput31466 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31467 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![0, 2, -1, -1], ![1, -2, 1, 0], ![-2, -1, 1, 2]]⟩

def canonicalOutput31467 : ExponentCode := normalNode5837

theorem canonicalSound31467 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31467.moment H = canonicalOutput31467.moment H :=
  canonical_of_padded canonicalInput31467 canonicalOutput31467 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation403, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput31468 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-1, -2, 0, 3], ![-1, 1, 2, -2]]⟩

def canonicalOutput31468 : ExponentCode := normalNode2024

theorem canonicalSound31468 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31468.moment H = canonicalOutput31468.moment H :=
  canonical_of_padded canonicalInput31468 canonicalOutput31468 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation267, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput31469 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-2, 1, 2, -1], ![0, -2, -1, 3]]⟩

def canonicalOutput31469 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3144⟩

theorem canonicalSound31469 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31469.moment H = canonicalOutput31469.moment H :=
  canonical_of_padded canonicalInput31469 canonicalOutput31469 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation317, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput31470 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-1, 1, 2, -2], ![-1, -2, -1, 4]]⟩

def canonicalOutput31470 : ExponentCode := normalNode1381

theorem canonicalSound31470 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31470.moment H = canonicalOutput31470.moment H :=
  canonical_of_padded canonicalInput31470 canonicalOutput31470 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation317, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput31471 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 0, 0, -1], ![0, -2, 3, -1], ![-2, 1, -2, 3]]⟩

def canonicalOutput31471 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3132⟩

theorem canonicalSound31471 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31471.moment H = canonicalOutput31471.moment H :=
  canonical_of_padded canonicalInput31471 canonicalOutput31471 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation273, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput31472 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![1, 0, 0, -1], ![-1, -1, 0, 2], ![-1, -1, 3, -1], ![1, 1, -3, 1]]⟩

def canonicalOutput31472 : ExponentCode := normalNode7653

theorem canonicalSound31472 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31472.moment H = canonicalOutput31472.moment H :=
  canonical_of_padded canonicalInput31472 canonicalOutput31472 (by decide) (by decide)
    ⟨false, false, canonicalPermutation130, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput31473 : ExponentCode := ⟨4, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![-1, 1, 2, -2], ![1, -2, -3, 4]]⟩

def canonicalOutput31473 : ExponentCode := normalNode7455

theorem canonicalSound31473 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31473.moment H = canonicalOutput31473.moment H :=
  canonical_of_padded canonicalInput31473 canonicalOutput31473 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31474 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 1, -1, 0], ![-2, 0, 0, 2], ![0, -2, 3, -1], ![2, 0, -3, 1]]⟩

def canonicalOutput31474 : ExponentCode := normalNode3345

theorem canonicalSound31474 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31474.moment H = canonicalOutput31474.moment H :=
  canonical_of_padded canonicalInput31474 canonicalOutput31474 (by decide) (by decide)
    ⟨false, false, canonicalPermutation331, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput31475 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 1, -1, 0], ![-1, -1, 0, 2], ![-1, -1, 3, -1], ![2, 0, -3, 1]]⟩

def canonicalOutput31475 : ExponentCode := normalNode3411

theorem canonicalSound31475 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31475.moment H = canonicalOutput31475.moment H :=
  canonical_of_padded canonicalInput31475 canonicalOutput31475 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation357, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31476 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-2, 0, -1, 3], ![1, -2, 2, -1]]⟩

def canonicalOutput31476 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3144⟩

theorem canonicalSound31476 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31476.moment H = canonicalOutput31476.moment H :=
  canonical_of_padded canonicalInput31476 canonicalOutput31476 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation265, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31477 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-2, 0, 3, -1], ![1, -2, -2, 3]]⟩

def canonicalOutput31477 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3132⟩

theorem canonicalSound31477 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31477.moment H = canonicalOutput31477.moment H :=
  canonical_of_padded canonicalInput31477 canonicalOutput31477 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation259, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31478 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 0, -3, 2], ![-2, -2, 3, 1]]⟩

def canonicalOutput31478 : ExponentCode := normalNode617

theorem canonicalSound31478 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31478.moment H = canonicalOutput31478.moment H :=
  canonical_of_padded canonicalInput31478 canonicalOutput31478 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31479 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 1, -1, 0], ![2, 0, -2, 0], ![-2, 0, -1, 3], ![0, -2, 3, -1]]⟩

def canonicalOutput31479 : ExponentCode := normalNode3382

theorem canonicalSound31479 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31479.moment H = canonicalOutput31479.moment H :=
  canonical_of_padded canonicalInput31479 canonicalOutput31479 (by decide) (by decide)
    ⟨false, false, canonicalPermutation300, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput31480 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 1, -1, 0], ![2, 0, -2, 0], ![-1, -1, -1, 3], ![-1, -1, 3, -1]]⟩

def canonicalOutput31480 : ExponentCode := normalNode3855

theorem canonicalSound31480 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31480.moment H = canonicalOutput31480.moment H :=
  canonical_of_padded canonicalInput31480 canonicalOutput31480 (by decide) (by decide)
    ⟨false, true, canonicalPermutation146, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31481 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-2, 0, -1, 3], ![0, -2, 3, -1], ![2, 0, -3, 1]]⟩

def canonicalOutput31481 : ExponentCode := normalNode3383

theorem canonicalSound31481 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31481.moment H = canonicalOutput31481.moment H :=
  canonical_of_padded canonicalInput31481 canonicalOutput31481 (by decide) (by decide)
    ⟨false, false, canonicalPermutation331, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput31482 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-2, 0, 0, 2], ![0, -2, 2, 0], ![2, 0, -3, 1]]⟩

def canonicalOutput31482 : ExponentCode := normalNode3436

theorem canonicalSound31482 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31482.moment H = canonicalOutput31482.moment H :=
  canonical_of_padded canonicalInput31482 canonicalOutput31482 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation338, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31483 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-2, 0, 0, 2], ![0, -2, 3, -1], ![2, 0, -4, 2]]⟩

def canonicalOutput31483 : ExponentCode := normalNode3179

theorem canonicalSound31483 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31483.moment H = canonicalOutput31483.moment H :=
  canonical_of_padded canonicalInput31483 canonicalOutput31483 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation338, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31484 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-1, -1, -1, 3], ![-1, -1, 3, -1], ![2, 0, -3, 1]]⟩

def canonicalOutput31484 : ExponentCode := normalNode3437

theorem canonicalSound31484 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31484.moment H = canonicalOutput31484.moment H :=
  canonical_of_padded canonicalInput31484 canonicalOutput31484 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation337, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31485 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-1, -1, 0, 2], ![-1, -1, 2, 0], ![2, 0, -3, 1]]⟩

def canonicalOutput31485 : ExponentCode := normalNode3438

theorem canonicalSound31485 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31485.moment H = canonicalOutput31485.moment H :=
  canonical_of_padded canonicalInput31485 canonicalOutput31485 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation337, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31486 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-1, -1, 0, 2], ![-1, -1, 3, -1], ![2, 0, -4, 2]]⟩

def canonicalOutput31486 : ExponentCode := normalNode3180

theorem canonicalSound31486 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31486.moment H = canonicalOutput31486.moment H :=
  canonical_of_padded canonicalInput31486 canonicalOutput31486 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation337, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31487 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -2, 1], ![-2, 0, -1, 3], ![1, -2, 2, -1]]⟩

def canonicalOutput31487 : ExponentCode := normalNode3604

theorem canonicalSound31487 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31487.moment H = canonicalOutput31487.moment H :=
  canonical_of_padded canonicalInput31487 canonicalOutput31487 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation259, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
