import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes06
import NoFourMUBs.Step2.SOS.MomentCodes08
import NoFourMUBs.Step2.SOS.MomentCodes12
import NoFourMUBs.Step2.SOS.MomentCodes13
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.MomentCodes15
import NoFourMUBs.Step2.SOS.NormalizationNodes002
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes033
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes24
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput8000 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 2, 0], ![0, -2, 1, 0, 1], ![1, 0, 1, -1, -1], ![1, 2, -2, -1, 0]]⟩

def canonicalOutput8000 : ExponentCode := normalNode3790

theorem canonicalSound8000 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8000.moment H = canonicalOutput8000.moment H :=
  canonical_of_padded canonicalInput8000 canonicalOutput8000 (by decide) (by decide)
    ⟨true, false, canonicalPermutation78, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8001 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 2, 0], ![0, -2, 1, 1, 0], ![0, 0, 1, -2, 1], ![2, 2, -2, -1, -1]]⟩

def canonicalOutput8001 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1832⟩

theorem canonicalSound8001 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8001.moment H = canonicalOutput8001.moment H :=
  canonical_of_padded canonicalInput8001 canonicalOutput8001 (by decide) (by decide)
    ⟨true, true, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8002 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 2, 0], ![0, -2, 1, 1, 0], ![0, 1, 1, -3, 1], ![2, 1, -2, 0, -1]]⟩

def canonicalOutput8002 : ExponentCode := normalNode1842

theorem canonicalSound8002 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8002.moment H = canonicalOutput8002.moment H :=
  canonical_of_padded canonicalInput8002 canonicalOutput8002 (by decide) (by decide)
    ⟨true, true, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput8003 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 2, 0], ![0, -2, 1, 1, 0], ![1, 0, 1, -3, 1], ![1, 2, -2, 0, -1]]⟩

def canonicalOutput8003 : ExponentCode := normalNode1839

theorem canonicalSound8003 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8003.moment H = canonicalOutput8003.moment H :=
  canonical_of_padded canonicalInput8003 canonicalOutput8003 (by decide) (by decide)
    ⟨true, true, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput8004 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 2, 0], ![0, -2, 1, 1, 0], ![1, 1, -2, -1, 1], ![1, 1, 1, -2, -1]]⟩

def canonicalOutput8004 : ExponentCode := normalNode2538

theorem canonicalSound8004 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8004.moment H = canonicalOutput8004.moment H :=
  canonical_of_padded canonicalInput8004 canonicalOutput8004 (by decide) (by decide)
    ⟨true, true, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8005 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 2, 0], ![0, -2, 1, 1, 0], ![1, 1, -2, 1, -1], ![1, 1, 1, -4, 1]]⟩

def canonicalOutput8005 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1567⟩

theorem canonicalSound8005 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8005.moment H = canonicalOutput8005.moment H :=
  canonical_of_padded canonicalInput8005 canonicalOutput8005 (by decide) (by decide)
    ⟨true, true, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8006 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 2, 0], ![0, -2, 1, 1, 0], ![1, 1, 1, -1, -2], ![1, 1, -2, -2, 2]]⟩

def canonicalOutput8006 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code540

theorem canonicalSound8006 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8006.moment H = canonicalOutput8006.moment H :=
  canonical_of_padded canonicalInput8006 canonicalOutput8006 (by decide) (by decide)
    ⟨true, true, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8007 : ExponentCode := ⟨3, 5, ![![-2, 0, 0, 2, 0], ![0, -2, 2, -1, 1], ![2, 2, -2, -1, -1]]⟩

def canonicalOutput8007 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node642⟩

theorem canonicalSound8007 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8007.moment H = canonicalOutput8007.moment H :=
  canonical_of_padded canonicalInput8007 canonicalOutput8007 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8008 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 2, 0], ![0, -2, 2, 0, 0], ![0, 1, -2, -1, 2], ![2, 1, 0, -1, -2]]⟩

def canonicalOutput8008 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code845

theorem canonicalSound8008 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8008.moment H = canonicalOutput8008.moment H :=
  canonical_of_padded canonicalInput8008 canonicalOutput8008 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8009 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 2, 0], ![0, -2, 2, 0, 0], ![0, 1, -2, 0, 1], ![2, 1, 0, -2, -1]]⟩

def canonicalOutput8009 : ExponentCode := normalNode3751

theorem canonicalSound8009 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8009.moment H = canonicalOutput8009.moment H :=
  canonical_of_padded canonicalInput8009 canonicalOutput8009 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8010 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 2, 0], ![0, -2, 2, 0, 0], ![0, 1, -1, -1, 1], ![2, 1, -1, -1, -1]]⟩

def canonicalOutput8010 : ExponentCode := normalNode3753

theorem canonicalSound8010 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8010.moment H = canonicalOutput8010.moment H :=
  canonical_of_padded canonicalInput8010 canonicalOutput8010 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8011 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 2, 0], ![0, -2, 2, 0, 0], ![0, 1, 0, -2, 1], ![2, 1, -2, 0, -1]]⟩

def canonicalOutput8011 : ExponentCode := normalNode3756

theorem canonicalSound8011 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8011.moment H = canonicalOutput8011.moment H :=
  canonical_of_padded canonicalInput8011 canonicalOutput8011 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8012 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 2, 0], ![0, -2, 2, 0, 0], ![1, 0, -2, -1, 2], ![1, 2, 0, -1, -2]]⟩

def canonicalOutput8012 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code846

theorem canonicalSound8012 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8012.moment H = canonicalOutput8012.moment H :=
  canonical_of_padded canonicalInput8012 canonicalOutput8012 (by decide) (by decide)
    ⟨true, false, canonicalPermutation39, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8013 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 2, 0], ![0, -2, 2, 0, 0], ![1, 0, -2, 0, 1], ![1, 2, 0, -2, -1]]⟩

def canonicalOutput8013 : ExponentCode := normalNode3756

theorem canonicalSound8013 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8013.moment H = canonicalOutput8013.moment H :=
  canonical_of_padded canonicalInput8013 canonicalOutput8013 (by decide) (by decide)
    ⟨true, false, canonicalPermutation39, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8014 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 2, 0], ![0, -2, 2, 0, 0], ![1, 0, -1, -1, 1], ![1, 2, -1, -1, -1]]⟩

def canonicalOutput8014 : ExponentCode := normalNode3753

theorem canonicalSound8014 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8014.moment H = canonicalOutput8014.moment H :=
  canonical_of_padded canonicalInput8014 canonicalOutput8014 (by decide) (by decide)
    ⟨true, false, canonicalPermutation39, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8015 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 2, 0], ![0, -2, 2, 0, 0], ![1, 0, 0, -2, 1], ![1, 2, -2, 0, -1]]⟩

def canonicalOutput8015 : ExponentCode := normalNode3751

theorem canonicalSound8015 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8015.moment H = canonicalOutput8015.moment H :=
  canonical_of_padded canonicalInput8015 canonicalOutput8015 (by decide) (by decide)
    ⟨true, false, canonicalPermutation39, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8016 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 2, 0], ![0, -2, 2, 0, 0], ![1, 1, -2, 1, -1], ![1, 1, 0, -3, 1]]⟩

def canonicalOutput8016 : ExponentCode := normalNode3356

theorem canonicalSound8016 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8016.moment H = canonicalOutput8016.moment H :=
  canonical_of_padded canonicalInput8016 canonicalOutput8016 (by decide) (by decide)
    ⟨true, true, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8017 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 2, 0], ![0, -2, 2, 0, 0], ![1, 1, -1, 0, -1], ![1, 1, -1, -2, 1]]⟩

def canonicalOutput8017 : ExponentCode := normalNode3753

theorem canonicalSound8017 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8017.moment H = canonicalOutput8017.moment H :=
  canonical_of_padded canonicalInput8017 canonicalOutput8017 (by decide) (by decide)
    ⟨true, true, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8018 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 2, 0], ![0, -2, 2, 0, 0], ![3, -1, 0, -1, -1], ![-1, 3, -2, -1, 1]]⟩

def canonicalOutput8018 : ExponentCode := normalNode3381

theorem canonicalSound8018 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8018.moment H = canonicalOutput8018.moment H :=
  canonical_of_padded canonicalInput8018 canonicalOutput8018 (by decide) (by decide)
    ⟨true, false, canonicalPermutation39, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8019 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 2, 0], ![0, -1, -1, -1, 3], ![1, -1, 2, -1, -1], ![1, 2, -1, 0, -2]]⟩

def canonicalOutput8019 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code944

theorem canonicalSound8019 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8019.moment H = canonicalOutput8019.moment H :=
  canonical_of_padded canonicalInput8019 canonicalOutput8019 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation189, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput8020 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 2, 0], ![0, -1, -1, 0, 2], ![0, 1, 0, 0, -1], ![1, 0, 0, -2, 1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput8020 : ExponentCode := normalNode8259

theorem canonicalSound8020 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8020.moment H = canonicalOutput8020.moment H :=
  canonical_of_padded canonicalInput8020 canonicalOutput8020 (by decide) (by decide)
    ⟨false, false, canonicalPermutation45, canonicalPermutation32⟩ (by decide +kernel) hH

def canonicalInput8021 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 2, 0], ![0, -1, -1, 1, 1], ![0, -1, 2, -1, 0], ![2, 2, -1, -2, -1]]⟩

def canonicalOutput8021 : ExponentCode := normalNode2390

theorem canonicalSound8021 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8021.moment H = canonicalOutput8021.moment H :=
  canonical_of_padded canonicalInput8021 canonicalOutput8021 (by decide) (by decide)
    ⟨true, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8022 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 2, 0], ![0, -1, -1, 1, 1], ![1, -1, 2, -2, 0], ![1, 2, -1, -1, -1]]⟩

def canonicalOutput8022 : ExponentCode := normalNode2493

theorem canonicalSound8022 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8022.moment H = canonicalOutput8022.moment H :=
  canonical_of_padded canonicalInput8022 canonicalOutput8022 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation196, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput8023 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 2, 0], ![0, -1, -1, 1, 1], ![1, -1, 2, 0, -2], ![1, 2, -1, -3, 1]]⟩

def canonicalOutput8023 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code416

theorem canonicalSound8023 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8023.moment H = canonicalOutput8023.moment H :=
  canonical_of_padded canonicalInput8023 canonicalOutput8023 (by decide) (by decide)
    ⟨true, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8024 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 2, 0], ![0, -1, -1, 2, 0], ![0, -1, 2, -2, 1], ![2, 2, -1, -2, -1]]⟩

def canonicalOutput8024 : ExponentCode := normalNode863

theorem canonicalSound8024 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8024.moment H = canonicalOutput8024.moment H :=
  canonical_of_padded canonicalInput8024 canonicalOutput8024 (by decide) (by decide)
    ⟨true, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8025 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 2, 0], ![0, -1, -1, 2, 0], ![1, -1, 2, -1, -1], ![1, 2, -1, -3, 1]]⟩

def canonicalOutput8025 : ExponentCode := normalNode655

theorem canonicalSound8025 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8025.moment H = canonicalOutput8025.moment H :=
  canonical_of_padded canonicalInput8025 canonicalOutput8025 (by decide) (by decide)
    ⟨true, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8026 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 2, 0], ![0, -1, 0, -1, 2], ![0, -1, 2, -1, 0], ![1, 1, -2, 0, 0], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput8026 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code819

theorem canonicalSound8026 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8026.moment H = canonicalOutput8026.moment H :=
  canonical_of_padded canonicalInput8026 canonicalOutput8026 (by decide) (by decide)
    ⟨true, false, canonicalPermutation26, OAI.MUB6.Certificate.PairSemantics.permutation195⟩ (by decide +kernel) hH

def canonicalInput8027 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 2, 0], ![0, -1, 1, -1, 1], ![-1, 3, -2, 0, 0], ![3, -2, 1, -1, -1]]⟩

def canonicalOutput8027 : ExponentCode := normalNode3533

theorem canonicalSound8027 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8027.moment H = canonicalOutput8027.moment H :=
  canonical_of_padded canonicalInput8027 canonicalOutput8027 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8028 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 2, 0], ![0, -1, 1, -1, 1], ![0, 1, -2, 0, 1], ![1, 0, 0, -1, 0], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput8028 : ExponentCode := normalNode8112

theorem canonicalSound8028 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8028.moment H = canonicalOutput8028.moment H :=
  canonical_of_padded canonicalInput8028 canonicalOutput8028 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation196⟩ (by decide +kernel) hH

def canonicalInput8029 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 2, 0], ![0, -1, 1, -1, 1], ![0, 1, -2, 0, 1], ![1, 0, 0, 0, -1], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput8029 : ExponentCode := normalNode8111

theorem canonicalSound8029 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8029.moment H = canonicalOutput8029.moment H :=
  canonical_of_padded canonicalInput8029 canonicalOutput8029 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation196⟩ (by decide +kernel) hH

def canonicalInput8030 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 2, 0], ![0, -1, 1, -1, 1], ![0, 1, 0, 0, -1], ![1, 0, -2, 0, 1], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput8030 : ExponentCode := normalNode8530

theorem canonicalSound8030 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8030.moment H = canonicalOutput8030.moment H :=
  canonical_of_padded canonicalInput8030 canonicalOutput8030 (by decide) (by decide)
    ⟨false, false, canonicalPermutation37, OAI.MUB6.Certificate.PairSemantics.permutation173⟩ (by decide +kernel) hH

def canonicalInput8031 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 2, 0], ![0, -1, 1, -1, 1], ![0, 1, 1, -1, -1], ![1, 0, -2, 0, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput8031 : ExponentCode := normalNode8372

theorem canonicalSound8031 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8031.moment H = canonicalOutput8031.moment H :=
  canonical_of_padded canonicalInput8031 canonicalOutput8031 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation153, canonicalPermutation56⟩ (by decide +kernel) hH

def canonicalInput8032 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 2, 0], ![0, -1, 1, -1, 1], ![0, 2, -2, -1, 1], ![2, -1, 1, 0, -2]]⟩

def canonicalOutput8032 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code883

theorem canonicalSound8032 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8032.moment H = canonicalOutput8032.moment H :=
  canonical_of_padded canonicalInput8032 canonicalOutput8032 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8033 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 2, 0], ![0, -1, 1, -1, 1], ![0, 3, -2, 0, -1], ![2, -2, 1, -1, 0]]⟩

def canonicalOutput8033 : ExponentCode := normalNode4010

theorem canonicalSound8033 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8033.moment H = canonicalOutput8033.moment H :=
  canonical_of_padded canonicalInput8033 canonicalOutput8033 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8034 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 2, 0], ![0, -1, 1, -1, 1], ![1, -1, 1, 0, -1], ![1, 2, -2, -1, 0]]⟩

def canonicalOutput8034 : ExponentCode := normalNode4286

theorem canonicalSound8034 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8034.moment H = canonicalOutput8034.moment H :=
  canonical_of_padded canonicalInput8034 canonicalOutput8034 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8035 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 2, 0], ![0, -1, 2, -1, 0], ![0, 1, 0, -1, 0], ![1, -1, -1, 0, 1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput8035 : ExponentCode := normalNode8372

theorem canonicalSound8035 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8035.moment H = canonicalOutput8035.moment H :=
  canonical_of_padded canonicalInput8035 canonicalOutput8035 (by decide) (by decide)
    ⟨true, false, canonicalPermutation58, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput8036 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 2, 0], ![0, -1, 2, -1, 0], ![0, 1, 0, 0, -1], ![1, -1, -1, -1, 2], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput8036 : ExponentCode := normalNode8169

theorem canonicalSound8036 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8036.moment H = canonicalOutput8036.moment H :=
  canonical_of_padded canonicalInput8036 canonicalOutput8036 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, OAI.MUB6.Certificate.PairSemantics.permutation181⟩ (by decide +kernel) hH

def canonicalInput8037 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 2, 0], ![0, -1, 2, -1, 0], ![0, 2, -1, 0, -1], ![2, -1, -1, -1, 1]]⟩

def canonicalOutput8037 : ExponentCode := normalNode3873

theorem canonicalSound8037 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8037.moment H = canonicalOutput8037.moment H :=
  canonical_of_padded canonicalInput8037 canonicalOutput8037 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput8038 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 2, 0], ![0, -1, 2, -1, 0], ![0, 2, 0, -1, -1], ![2, -1, -2, 0, 1]]⟩

def canonicalOutput8038 : ExponentCode := normalNode3888

theorem canonicalSound8038 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8038.moment H = canonicalOutput8038.moment H :=
  canonical_of_padded canonicalInput8038 canonicalOutput8038 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput8039 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 2, 0], ![0, -1, 2, -1, 0], ![1, -1, -1, -1, 2], ![1, 2, -1, 0, -2]]⟩

def canonicalOutput8039 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code966

theorem canonicalSound8039 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8039.moment H = canonicalOutput8039.moment H :=
  canonical_of_padded canonicalInput8039 canonicalOutput8039 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8040 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 2, 0], ![0, -1, 2, -1, 0], ![1, -1, -1, 0, 1], ![1, 2, -1, -1, -1]]⟩

def canonicalOutput8040 : ExponentCode := normalNode4269

theorem canonicalSound8040 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8040.moment H = canonicalOutput8040.moment H :=
  canonical_of_padded canonicalInput8040 canonicalOutput8040 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8041 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 2, 0], ![0, -1, 2, -1, 0], ![1, 2, -1, 0, -2], ![1, -1, -1, -1, 2]]⟩

def canonicalOutput8041 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code966

theorem canonicalSound8041 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8041.moment H = canonicalOutput8041.moment H :=
  canonical_of_padded canonicalInput8041 canonicalOutput8041 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput8042 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 2, 0], ![0, -1, 2, 0, -1], ![-1, 2, -1, 0, 0], ![3, -1, -1, -2, 1]]⟩

def canonicalOutput8042 : ExponentCode := normalNode1827

theorem canonicalSound8042 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8042.moment H = canonicalOutput8042.moment H :=
  canonical_of_padded canonicalInput8042 canonicalOutput8042 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput8043 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 2, 0], ![0, -1, 2, 0, -1], ![0, -1, -1, -1, 3], ![2, 2, -1, -1, -2]]⟩

def canonicalOutput8043 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code875

theorem canonicalSound8043 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8043.moment H = canonicalOutput8043.moment H :=
  canonical_of_padded canonicalInput8043 canonicalOutput8043 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8044 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 2, 0], ![0, -1, 2, 0, -1], ![0, 2, -1, 0, -1], ![2, -1, -1, -2, 2]]⟩

def canonicalOutput8044 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code848

theorem canonicalSound8044 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8044.moment H = canonicalOutput8044.moment H :=
  canonical_of_padded canonicalInput8044 canonicalOutput8044 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8045 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 2, 0], ![0, -1, 2, 0, -1], ![1, -1, -2, 1, 1], ![1, 2, 0, -3, 0]]⟩

def canonicalOutput8045 : ExponentCode := normalNode3367

theorem canonicalSound8045 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8045.moment H = canonicalOutput8045.moment H :=
  canonical_of_padded canonicalInput8045 canonicalOutput8045 (by decide) (by decide)
    ⟨true, true, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8046 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 2, 0], ![0, -1, 2, 0, -1], ![1, -1, -1, -1, 2], ![1, 2, -1, -1, -1]]⟩

def canonicalOutput8046 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code943

theorem canonicalSound8046 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8046.moment H = canonicalOutput8046.moment H :=
  canonical_of_padded canonicalInput8046 canonicalOutput8046 (by decide) (by decide)
    ⟨true, true, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8047 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 2, 0], ![0, -1, 2, 0, -1], ![1, -1, -1, 0, 1], ![1, 2, -1, -2, 0]]⟩

def canonicalOutput8047 : ExponentCode := normalNode3773

theorem canonicalSound8047 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8047.moment H = canonicalOutput8047.moment H :=
  canonical_of_padded canonicalInput8047 canonicalOutput8047 (by decide) (by decide)
    ⟨true, true, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8048 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 2, 0], ![0, -1, 2, 0, -1], ![1, -1, 0, -1, 1], ![1, 2, -2, -1, 0]]⟩

def canonicalOutput8048 : ExponentCode := normalNode3790

theorem canonicalSound8048 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8048.moment H = canonicalOutput8048.moment H :=
  canonical_of_padded canonicalInput8048 canonicalOutput8048 (by decide) (by decide)
    ⟨true, true, canonicalPermutation36, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8049 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 2, 0], ![0, 0, -2, 0, 2], ![0, 1, 0, 0, -1], ![1, -1, 1, -1, 0], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput8049 : ExponentCode := normalNode8142

theorem canonicalSound8049 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8049.moment H = canonicalOutput8049.moment H :=
  canonical_of_padded canonicalInput8049 canonicalOutput8049 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, canonicalPermutation26⟩ (by decide +kernel) hH

def canonicalInput8050 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 2, 0], ![0, 0, -2, 0, 2], ![0, 1, 0, 0, -1], ![1, -1, 2, -1, -1], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput8050 : ExponentCode := normalNode10458

theorem canonicalSound8050 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8050.moment H = canonicalOutput8050.moment H :=
  canonical_of_padded canonicalInput8050 canonicalOutput8050 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation166, canonicalPermutation77⟩ (by decide +kernel) hH

def canonicalInput8051 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 2, 0], ![0, 0, -2, 0, 2], ![0, 1, 1, 0, -2], ![1, -1, 1, -1, 0], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput8051 : ExponentCode := normalNode8121

theorem canonicalSound8051 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8051.moment H = canonicalOutput8051.moment H :=
  canonical_of_padded canonicalInput8051 canonicalOutput8051 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation160, canonicalPermutation56⟩ (by decide +kernel) hH

def canonicalInput8052 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 2, 0], ![0, 0, 1, -2, 1], ![0, 2, -2, 1, -1], ![2, -2, 1, -1, 0]]⟩

def canonicalOutput8052 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2036⟩

theorem canonicalSound8052 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8052.moment H = canonicalOutput8052.moment H :=
  canonical_of_padded canonicalInput8052 canonicalOutput8052 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8053 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 2, 0], ![0, 1, 1, -2, 0], ![1, -2, 1, -1, 1], ![1, 1, -2, 1, -1]]⟩

def canonicalOutput8053 : ExponentCode := normalNode4461

theorem canonicalSound8053 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8053.moment H = canonicalOutput8053.moment H :=
  canonical_of_padded canonicalInput8053 canonicalOutput8053 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput8054 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 2, 0], ![0, 1, 1, -1, -1], ![0, -2, 1, -1, 2], ![2, 1, -2, 0, -1]]⟩

def canonicalOutput8054 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code883

theorem canonicalSound8054 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8054.moment H = canonicalOutput8054.moment H :=
  canonical_of_padded canonicalInput8054 canonicalOutput8054 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8055 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 2, 0], ![0, 1, 1, -1, -1], ![1, -2, 1, 0, 0], ![1, 1, -2, -1, 1]]⟩

def canonicalOutput8055 : ExponentCode := normalNode4269

theorem canonicalSound8055 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8055.moment H = canonicalOutput8055.moment H :=
  canonical_of_padded canonicalInput8055 canonicalOutput8055 (by decide) (by decide)
    ⟨true, true, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput8056 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 2, 0], ![0, 1, 1, 0, -2], ![0, -2, 1, -1, 2], ![2, 1, -2, -1, 0]]⟩

def canonicalOutput8056 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code859

theorem canonicalSound8056 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8056.moment H = canonicalOutput8056.moment H :=
  canonical_of_padded canonicalInput8056 canonicalOutput8056 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8057 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 2, 0], ![1, -2, 0, 0, 1], ![-1, 1, 2, -2, 0], ![2, 1, -2, 0, -1]]⟩

def canonicalOutput8057 : ExponentCode := normalNode3939

theorem canonicalSound8057 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8057.moment H = canonicalOutput8057.moment H :=
  canonical_of_padded canonicalInput8057 canonicalOutput8057 (by decide) (by decide)
    ⟨true, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput8058 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 2, 0], ![1, -2, 0, 0, 1], ![0, 2, -2, 1, -1], ![1, 0, 2, -3, 0]]⟩

def canonicalOutput8058 : ExponentCode := normalNode3475

theorem canonicalSound8058 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8058.moment H = canonicalOutput8058.moment H :=
  canonical_of_padded canonicalInput8058 canonicalOutput8058 (by decide) (by decide)
    ⟨true, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8059 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 2, 0], ![1, -2, 1, 0, 0], ![-2, 1, 1, -1, 1], ![3, 1, -2, -1, -1]]⟩

def canonicalOutput8059 : ExponentCode := normalNode4260

theorem canonicalSound8059 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8059.moment H = canonicalOutput8059.moment H :=
  canonical_of_padded canonicalInput8059 canonicalOutput8059 (by decide) (by decide)
    ⟨true, true, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8060 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 2, 0], ![1, -2, 1, 0, 0], ![-1, 1, 1, -2, 1], ![2, 1, -2, 0, -1]]⟩

def canonicalOutput8060 : ExponentCode := normalNode3982

theorem canonicalSound8060 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8060.moment H = canonicalOutput8060.moment H :=
  canonical_of_padded canonicalInput8060 canonicalOutput8060 (by decide) (by decide)
    ⟨true, true, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput8061 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 2, 0], ![1, -2, 1, 0, 0], ![0, 1, -2, -1, 2], ![1, 1, 1, -1, -2]]⟩

def canonicalOutput8061 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code966

theorem canonicalSound8061 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8061.moment H = canonicalOutput8061.moment H :=
  canonical_of_padded canonicalInput8061 canonicalOutput8061 (by decide) (by decide)
    ⟨true, true, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput8062 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 2, 0], ![1, -2, 1, 0, 0], ![0, 2, -2, 1, -1], ![1, 0, 1, -3, 1]]⟩

def canonicalOutput8062 : ExponentCode := normalNode3509

theorem canonicalSound8062 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8062.moment H = canonicalOutput8062.moment H :=
  canonical_of_padded canonicalInput8062 canonicalOutput8062 (by decide) (by decide)
    ⟨true, true, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8063 : ExponentCode := ⟨3, 5, ![![-2, 0, 0, 2, 0], ![1, -2, 2, 0, -1], ![1, 2, -2, -2, 1]]⟩

def canonicalOutput8063 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node642⟩

theorem canonicalSound8063 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8063.moment H = canonicalOutput8063.moment H :=
  canonical_of_padded canonicalInput8063 canonicalOutput8063 (by decide) (by decide)
    ⟨true, true, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
