import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes23
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes25
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes30
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes38
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes40
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes42
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput16000 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 0, 1, -1], ![0, 0, 2, -1, -1], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput16000 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2609⟩

theorem canonicalSound16000 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16000.moment H = canonicalOutput16000.moment H :=
  canonical_of_padded canonicalInput16000 canonicalOutput16000 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput16001 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 0, 1, -1], ![0, 0, 2, 0, -2], ![1, 1, -2, -1, 1]]⟩

def canonicalOutput16001 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2455⟩

theorem canonicalSound16001 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16001.moment H = canonicalOutput16001.moment H :=
  canonical_of_padded canonicalInput16001 canonicalOutput16001 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput16002 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 0, 1, -1], ![0, 1, -1, -1, 1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput16002 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2449⟩

theorem canonicalSound16002 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16002.moment H = canonicalOutput16002.moment H :=
  canonical_of_padded canonicalInput16002 canonicalOutput16002 (by decide) (by decide)
    ⟨true, false, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput16003 : ExponentCode := ⟨6, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 0, 1, -1], ![0, 1, -1, 0, 0], ![-1, 1, -1, 1, 0], ![0, 0, 2, -2, 0], ![2, -1, 0, 0, -1]]⟩

def canonicalOutput16003 : ExponentCode := normalNode3663

theorem canonicalSound16003 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16003.moment H = canonicalOutput16003.moment H :=
  canonical_of_padded canonicalInput16003 canonicalOutput16003 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation298, OAI.MUB6.Certificate.PairSemantics.permutation177⟩ (by decide +kernel) hH

def canonicalInput16004 : ExponentCode := ⟨6, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 0, 1, -1], ![0, 1, -1, 0, 0], ![-1, 1, 1, 0, -1], ![1, -1, -1, 1, 0], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput16004 : ExponentCode := normalNode3691

theorem canonicalSound16004 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16004.moment H = canonicalOutput16004.moment H :=
  canonical_of_padded canonicalInput16004 canonicalOutput16004 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation383, canonicalPermutation75⟩ (by decide +kernel) hH

def canonicalInput16005 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 0, 1, -1], ![0, 1, -1, 0, 0], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput16005 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2725⟩

theorem canonicalSound16005 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16005.moment H = canonicalOutput16005.moment H :=
  canonical_of_padded canonicalInput16005 canonicalOutput16005 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation200, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput16006 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 0, 1, -1], ![0, 1, -1, 1, -1], ![0, 1, 0, -1, 0], ![1, -1, 1, -1, 0]]⟩

def canonicalOutput16006 : ExponentCode := normalNode8741

theorem canonicalSound16006 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16006.moment H = canonicalOutput16006.moment H :=
  canonical_of_padded canonicalInput16006 canonicalOutput16006 (by decide) (by decide)
    ⟨false, true, canonicalPermutation74, canonicalPermutation18⟩ (by decide +kernel) hH

def canonicalInput16007 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 0, 1, -1], ![0, 1, -1, 1, -1], ![0, 1, 2, -2, -1], ![1, -1, -1, 0, 1]]⟩

def canonicalOutput16007 : ExponentCode := normalNode8193

theorem canonicalSound16007 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16007.moment H = canonicalOutput16007.moment H :=
  canonical_of_padded canonicalInput16007 canonicalOutput16007 (by decide) (by decide)
    ⟨true, true, canonicalPermutation72, canonicalPermutation48⟩ (by decide +kernel) hH

def canonicalInput16008 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 0, 1, -1], ![0, 1, -1, 1, -1], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput16008 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2582⟩

theorem canonicalSound16008 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16008.moment H = canonicalOutput16008.moment H :=
  canonical_of_padded canonicalInput16008 canonicalOutput16008 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation200, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput16009 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 0, 1, -1], ![0, 1, 0, -2, 1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput16009 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1047⟩

theorem canonicalSound16009 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16009.moment H = canonicalOutput16009.moment H :=
  canonical_of_padded canonicalInput16009 canonicalOutput16009 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation176⟩ (by decide +kernel) hH

def canonicalInput16010 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 0, 1, -1], ![0, 1, 0, -1, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput16010 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1048⟩

theorem canonicalSound16010 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16010.moment H = canonicalOutput16010.moment H :=
  canonical_of_padded canonicalInput16010 canonicalOutput16010 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation176⟩ (by decide +kernel) hH

def canonicalInput16011 : ExponentCode := ⟨6, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 0, 1, -1], ![0, 1, 0, 0, -1], ![-1, 0, 2, -1, 0], ![0, 1, -2, 1, 0], ![2, -1, 0, -1, 0]]⟩

def canonicalOutput16011 : ExponentCode := normalNode3673

theorem canonicalSound16011 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16011.moment H = canonicalOutput16011.moment H :=
  canonical_of_padded canonicalInput16011 canonicalOutput16011 (by decide) (by decide)
    ⟨false, true, canonicalPermutation125, canonicalPermutation17⟩ (by decide +kernel) hH

def canonicalInput16012 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 0, 1, -1], ![0, 1, 0, 0, -1], ![0, 0, 2, -1, -1], ![1, 0, -2, 0, 1]]⟩

def canonicalOutput16012 : ExponentCode := normalNode8388

theorem canonicalSound16012 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16012.moment H = canonicalOutput16012.moment H :=
  canonical_of_padded canonicalInput16012 canonicalOutput16012 (by decide) (by decide)
    ⟨false, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation167⟩ (by decide +kernel) hH

def canonicalInput16013 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 0, 1, -1], ![0, 1, 0, 0, -1], ![0, 1, 1, -2, 0], ![1, -1, -1, 1, 0]]⟩

def canonicalOutput16013 : ExponentCode := normalNode8363

theorem canonicalSound16013 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16013.moment H = canonicalOutput16013.moment H :=
  canonical_of_padded canonicalInput16013 canonicalOutput16013 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation200, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput16014 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 0, 1, -1], ![0, 1, 0, 0, -1], ![0, 1, 1, -1, -1], ![1, -1, -1, 0, 1]]⟩

def canonicalOutput16014 : ExponentCode := normalNode10420

theorem canonicalSound16014 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16014.moment H = canonicalOutput16014.moment H :=
  canonical_of_padded canonicalInput16014 canonicalOutput16014 (by decide) (by decide)
    ⟨false, false, canonicalPermutation6, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput16015 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 0, 1, -1], ![0, 1, 0, 0, -1], ![0, 1, 2, -2, -1], ![1, -1, -2, 1, 1]]⟩

def canonicalOutput16015 : ExponentCode := normalNode9536

theorem canonicalSound16015 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16015.moment H = canonicalOutput16015.moment H :=
  canonical_of_padded canonicalInput16015 canonicalOutput16015 (by decide) (by decide)
    ⟨true, false, canonicalPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation169⟩ (by decide +kernel) hH

def canonicalInput16016 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 0, 1, -1], ![0, 1, 0, 0, -1], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput16016 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1048⟩

theorem canonicalSound16016 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16016.moment H = canonicalOutput16016.moment H :=
  canonical_of_padded canonicalInput16016 canonicalOutput16016 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation50⟩ (by decide +kernel) hH

def canonicalInput16017 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 0, 1, -1], ![0, 1, 0, 1, -2], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput16017 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1047⟩

theorem canonicalSound16017 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16017.moment H = canonicalOutput16017.moment H :=
  canonical_of_padded canonicalInput16017 canonicalOutput16017 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation50⟩ (by decide +kernel) hH

def canonicalInput16018 : ExponentCode := ⟨6, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 0, 1, -1], ![1, -1, 0, 0, 0], ![-1, 2, 0, 0, -1], ![0, 0, 2, -2, 0], ![1, 0, -2, 1, 0]]⟩

def canonicalOutput16018 : ExponentCode := normalNode3660

theorem canonicalSound16018 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16018.moment H = canonicalOutput16018.moment H :=
  canonical_of_padded canonicalInput16018 canonicalOutput16018 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation264, OAI.MUB6.Certificate.PairSemantics.permutation181⟩ (by decide +kernel) hH

def canonicalInput16019 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 0, 2, -2], ![0, 0, 0, -2, 2], ![0, 1, 0, 0, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput16019 : ExponentCode := normalNode9060

theorem canonicalSound16019 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16019.moment H = canonicalOutput16019.moment H :=
  canonical_of_padded canonicalInput16019 canonicalOutput16019 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation176⟩ (by decide +kernel) hH

def canonicalInput16020 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 0, 2, -2], ![0, 0, 0, -2, 2], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput16020 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1027⟩

theorem canonicalSound16020 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16020.moment H = canonicalOutput16020.moment H :=
  canonical_of_padded canonicalInput16020 canonicalOutput16020 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation176⟩ (by decide +kernel) hH

def canonicalInput16021 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 0, 2, -2], ![0, 0, 0, -1, 1], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput16021 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1040⟩

theorem canonicalSound16021 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16021.moment H = canonicalOutput16021.moment H :=
  canonical_of_padded canonicalInput16021 canonicalOutput16021 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation176⟩ (by decide +kernel) hH

def canonicalInput16022 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 0, 2, -2], ![0, 0, 0, 0, 0], ![1, 1, 0, -2, 0]]⟩

def canonicalOutput16022 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node207⟩

theorem canonicalSound16022 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16022.moment H = canonicalOutput16022.moment H :=
  canonical_of_padded canonicalInput16022 canonicalOutput16022 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation181, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput16023 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 0, 2, -2], ![0, 0, 1, -2, 1], ![0, 1, 0, 0, -1], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput16023 : ExponentCode := normalNode8427

theorem canonicalSound16023 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16023.moment H = canonicalOutput16023.moment H :=
  canonical_of_padded canonicalInput16023 canonicalOutput16023 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput16024 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 0, 2, -2], ![0, 0, 1, -2, 1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput16024 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1749⟩

theorem canonicalSound16024 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16024.moment H = canonicalOutput16024.moment H :=
  canonical_of_padded canonicalInput16024 canonicalOutput16024 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation200, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput16025 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 0, 2, -2], ![0, 0, 1, -1, 0], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput16025 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2613⟩

theorem canonicalSound16025 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16025.moment H = canonicalOutput16025.moment H :=
  canonical_of_padded canonicalInput16025 canonicalOutput16025 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation195, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput16026 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 0, 2, -2], ![0, 0, 1, 0, -1], ![1, 1, -1, -2, 1]]⟩

def canonicalOutput16026 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2455⟩

theorem canonicalSound16026 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16026.moment H = canonicalOutput16026.moment H :=
  canonical_of_padded canonicalInput16026 canonicalOutput16026 (by decide) (by decide)
    ⟨true, false, canonicalPermutation31, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput16027 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 0, 2, -2], ![0, 0, 2, -3, 1], ![1, 1, -2, 1, -1]]⟩

def canonicalOutput16027 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1960⟩

theorem canonicalSound16027 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16027.moment H = canonicalOutput16027.moment H :=
  canonical_of_padded canonicalInput16027 canonicalOutput16027 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation192, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16028 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 0, 2, -2], ![0, 0, 2, -1, -1], ![1, 1, -2, -1, 1]]⟩

def canonicalOutput16028 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1846⟩

theorem canonicalSound16028 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16028.moment H = canonicalOutput16028.moment H :=
  canonical_of_padded canonicalInput16028 canonicalOutput16028 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput16029 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 0, 2, -2], ![0, 1, -1, -2, 2], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput16029 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1518⟩

theorem canonicalSound16029 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16029.moment H = canonicalOutput16029.moment H :=
  canonical_of_padded canonicalInput16029 canonicalOutput16029 (by decide) (by decide)
    ⟨true, false, canonicalPermutation54, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput16030 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 0, 2, -2], ![0, 1, -1, -1, 1], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput16030 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1786⟩

theorem canonicalSound16030 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16030.moment H = canonicalOutput16030.moment H :=
  canonical_of_padded canonicalInput16030 canonicalOutput16030 (by decide) (by decide)
    ⟨true, false, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput16031 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 0, 2, -2], ![0, 1, -1, 0, 0], ![0, 1, 1, -2, 0], ![1, -1, 0, 0, 0]]⟩

def canonicalOutput16031 : ExponentCode := normalNode10092

theorem canonicalSound16031 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16031.moment H = canonicalOutput16031.moment H :=
  canonical_of_padded canonicalInput16031 canonicalOutput16031 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16032 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 0, 2, -2], ![0, 1, -1, 0, 0], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput16032 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2745⟩

theorem canonicalSound16032 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16032.moment H = canonicalOutput16032.moment H :=
  canonical_of_padded canonicalInput16032 canonicalOutput16032 (by decide) (by decide)
    ⟨true, false, canonicalPermutation27, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput16033 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 0, 2, -2], ![0, 1, 0, -2, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput16033 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1053⟩

theorem canonicalSound16033 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16033.moment H = canonicalOutput16033.moment H :=
  canonical_of_padded canonicalInput16033 canonicalOutput16033 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation176⟩ (by decide +kernel) hH

def canonicalInput16034 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 0, 2, -2], ![0, 1, 0, -1, 0], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput16034 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1054⟩

theorem canonicalSound16034 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16034.moment H = canonicalOutput16034.moment H :=
  canonical_of_padded canonicalInput16034 canonicalOutput16034 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation176⟩ (by decide +kernel) hH

def canonicalInput16035 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 0, 2, -2], ![0, 1, 0, 0, -1], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput16035 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1053⟩

theorem canonicalSound16035 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16035.moment H = canonicalOutput16035.moment H :=
  canonical_of_padded canonicalInput16035 canonicalOutput16035 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation50⟩ (by decide +kernel) hH

def canonicalInput16036 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 0, 2, -2], ![0, 1, 1, -2, 0], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput16036 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2745⟩

theorem canonicalSound16036 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16036.moment H = canonicalOutput16036.moment H :=
  canonical_of_padded canonicalInput16036 canonicalOutput16036 (by decide) (by decide)
    ⟨true, false, canonicalPermutation17, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput16037 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 0, 2, -2], ![0, 1, 1, 0, -2], ![1, 0, -1, -2, 2]]⟩

def canonicalOutput16037 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1518⟩

theorem canonicalSound16037 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16037.moment H = canonicalOutput16037.moment H :=
  canonical_of_padded canonicalInput16037 canonicalOutput16037 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput16038 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 0, 2, -2], ![0, 1, 2, -2, -1], ![1, 0, -2, 0, 1]]⟩

def canonicalOutput16038 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1845⟩

theorem canonicalSound16038 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16038.moment H = canonicalOutput16038.moment H :=
  canonical_of_padded canonicalInput16038 canonicalOutput16038 (by decide) (by decide)
    ⟨true, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput16039 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 0, 2, -2], ![0, 2, -1, -1, 0], ![1, -1, 1, -1, 0]]⟩

def canonicalOutput16039 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2015⟩

theorem canonicalSound16039 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16039.moment H = canonicalOutput16039.moment H :=
  canonical_of_padded canonicalInput16039 canonicalOutput16039 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation200, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput16040 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 0, 2, -2], ![1, 0, 1, -3, 1], ![0, 1, -1, 1, -1]]⟩

def canonicalOutput16040 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1631⟩

theorem canonicalSound16040 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16040.moment H = canonicalOutput16040.moment H :=
  canonical_of_padded canonicalInput16040 canonicalOutput16040 (by decide) (by decide)
    ⟨true, true, canonicalPermutation72, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput16041 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 0, 3, -3], ![0, 0, 1, -1, 0], ![1, 1, -1, -2, 1]]⟩

def canonicalOutput16041 : ExponentCode := normalNode9911

theorem canonicalSound16041 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16041.moment H = canonicalOutput16041.moment H :=
  canonical_of_padded canonicalInput16041 canonicalOutput16041 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation182, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput16042 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 1, -2, 1], ![0, 0, 1, 1, -2], ![1, 1, -2, 1, -1]]⟩

def canonicalOutput16042 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1837⟩

theorem canonicalSound16042 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16042.moment H = canonicalOutput16042.moment H :=
  canonical_of_padded canonicalInput16042 canonicalOutput16042 (by decide) (by decide)
    ⟨true, true, canonicalPermutation30, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput16043 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 1, -2, 1], ![0, 1, -2, 2, -1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput16043 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1838⟩

theorem canonicalSound16043 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16043.moment H = canonicalOutput16043.moment H :=
  canonical_of_padded canonicalInput16043 canonicalOutput16043 (by decide) (by decide)
    ⟨true, true, canonicalPermutation30, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput16044 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 1, -2, 1], ![0, 1, -2, 3, -2], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput16044 : ExponentCode := normalNode1981

theorem canonicalSound16044 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16044.moment H = canonicalOutput16044.moment H :=
  canonical_of_padded canonicalInput16044 canonicalOutput16044 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation187, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput16045 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 1, -2, 1], ![0, 1, -1, 0, 0], ![1, 0, 0, 2, -3]]⟩

def canonicalOutput16045 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2810⟩

theorem canonicalSound16045 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16045.moment H = canonicalOutput16045.moment H :=
  canonical_of_padded canonicalInput16045 canonicalOutput16045 (by decide) (by decide)
    ⟨true, true, canonicalPermutation44, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput16046 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 1, -2, 1], ![0, 1, -1, 1, -1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput16046 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1751⟩

theorem canonicalSound16046 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16046.moment H = canonicalOutput16046.moment H :=
  canonical_of_padded canonicalInput16046 canonicalOutput16046 (by decide) (by decide)
    ⟨true, false, canonicalPermutation80, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput16047 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 1, -2, 1], ![0, 1, 0, 0, -1], ![1, 0, -1, 2, -2]]⟩

def canonicalOutput16047 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2814⟩

theorem canonicalSound16047 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16047.moment H = canonicalOutput16047.moment H :=
  canonical_of_padded canonicalInput16047 canonicalOutput16047 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation169, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput16048 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 1, -2, 1], ![0, 2, -2, 1, -1], ![1, -1, 1, 1, -2]]⟩

def canonicalOutput16048 : ExponentCode := normalNode2575

theorem canonicalSound16048 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16048.moment H = canonicalOutput16048.moment H :=
  canonical_of_padded canonicalInput16048 canonicalOutput16048 (by decide) (by decide)
    ⟨true, true, canonicalPermutation20, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput16049 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 1, -1, 0], ![0, -1, 1, 0, 0], ![0, 2, 0, 0, -2], ![1, 0, -2, 1, 0]]⟩

def canonicalOutput16049 : ExponentCode := normalNode8294

theorem canonicalSound16049 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16049.moment H = canonicalOutput16049.moment H :=
  canonical_of_padded canonicalInput16049 canonicalOutput16049 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput16050 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 1, -1, 0], ![0, 0, 0, 2, -2], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput16050 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2613⟩

theorem canonicalSound16050 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16050.moment H = canonicalOutput16050.moment H :=
  canonical_of_padded canonicalInput16050 canonicalOutput16050 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation195, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput16051 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 1, -1, 0], ![0, 0, 1, -1, 0], ![0, 1, 0, 1, -2], ![1, 0, -2, 1, 0]]⟩

def canonicalOutput16051 : ExponentCode := normalNode8285

theorem canonicalSound16051 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16051.moment H = canonicalOutput16051.moment H :=
  canonical_of_padded canonicalInput16051 canonicalOutput16051 (by decide) (by decide)
    ⟨true, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation169⟩ (by decide +kernel) hH

def canonicalInput16052 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 1, -1, 0], ![0, 0, 1, -1, 0], ![0, 2, 0, 0, -2], ![1, -1, -2, 2, 0]]⟩

def canonicalOutput16052 : ExponentCode := normalNode8228

theorem canonicalSound16052 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16052.moment H = canonicalOutput16052.moment H :=
  canonical_of_padded canonicalInput16052 canonicalOutput16052 (by decide) (by decide)
    ⟨true, true, canonicalPermutation73, OAI.MUB6.Certificate.PairSemantics.permutation171⟩ (by decide +kernel) hH

def canonicalInput16053 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 1, -1, 0], ![0, 0, 1, 1, -2], ![0, 1, -1, 0, 0], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput16053 : ExponentCode := normalNode8371

theorem canonicalSound16053 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16053.moment H = canonicalOutput16053.moment H :=
  canonical_of_padded canonicalInput16053 canonicalOutput16053 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput16054 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 1, -1, 0], ![0, 0, 1, 1, -2], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput16054 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2609⟩

theorem canonicalSound16054 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16054.moment H = canonicalOutput16054.moment H :=
  canonical_of_padded canonicalInput16054 canonicalOutput16054 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation177, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput16055 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 1, -1, 0], ![0, 1, -2, 0, 1], ![1, 0, 1, 1, -3]]⟩

def canonicalOutput16055 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2750⟩

theorem canonicalSound16055 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16055.moment H = canonicalOutput16055.moment H :=
  canonical_of_padded canonicalInput16055 canonicalOutput16055 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation182, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16056 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 1, -1, 0], ![0, 1, -2, 1, 0], ![0, 1, 0, 1, -2], ![1, -1, 1, -1, 0]]⟩

def canonicalOutput16056 : ExponentCode := normalNode8157

theorem canonicalSound16056 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16056.moment H = canonicalOutput16056.moment H :=
  canonical_of_padded canonicalInput16056 canonicalOutput16056 (by decide) (by decide)
    ⟨true, true, canonicalPermutation18, canonicalPermutation37⟩ (by decide +kernel) hH

def canonicalInput16057 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 1, -1, 0], ![0, 1, -2, 1, 0], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput16057 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2583⟩

theorem canonicalSound16057 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16057.moment H = canonicalOutput16057.moment H :=
  canonical_of_padded canonicalInput16057 canonicalOutput16057 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation177, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput16058 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 1, -1, 0], ![0, 1, -2, 2, -1], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput16058 : ExponentCode := normalNode8968

theorem canonicalSound16058 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16058.moment H = canonicalOutput16058.moment H :=
  canonical_of_padded canonicalInput16058 canonicalOutput16058 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation177, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput16059 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 1, -1, 0], ![0, 1, -1, 0, 0], ![0, 1, -1, 2, -2], ![1, -1, 1, -1, 0]]⟩

def canonicalOutput16059 : ExponentCode := normalNode10132

theorem canonicalSound16059 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16059.moment H = canonicalOutput16059.moment H :=
  canonical_of_padded canonicalInput16059 canonicalOutput16059 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation195, canonicalPermutation48⟩ (by decide +kernel) hH

def canonicalInput16060 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 1, -1, 0], ![0, 1, -1, 0, 0], ![0, 1, 0, 1, -2], ![1, -1, 0, 0, 0]]⟩

def canonicalOutput16060 : ExponentCode := normalNode10402

theorem canonicalSound16060 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16060.moment H = canonicalOutput16060.moment H :=
  canonical_of_padded canonicalInput16060 canonicalOutput16060 (by decide) (by decide)
    ⟨false, true, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation183⟩ (by decide +kernel) hH

def canonicalInput16061 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 1, -1, 0], ![0, 1, -1, 0, 0], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput16061 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2784⟩

theorem canonicalSound16061 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16061.moment H = canonicalOutput16061.moment H :=
  canonical_of_padded canonicalInput16061 canonicalOutput16061 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation185, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput16062 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 1, -1, 0], ![0, 1, -1, 1, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput16062 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2724⟩

theorem canonicalSound16062 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16062.moment H = canonicalOutput16062.moment H :=
  canonical_of_padded canonicalInput16062 canonicalOutput16062 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation201, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput16063 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 1, -1, 0], ![0, 1, -1, 2, -2], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput16063 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2598⟩

theorem canonicalSound16063 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16063.moment H = canonicalOutput16063.moment H :=
  canonical_of_padded canonicalInput16063 canonicalOutput16063 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation190, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
