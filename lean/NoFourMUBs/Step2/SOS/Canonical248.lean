import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes001
import NoFourMUBs.Step2.SOS.NormalizationNodes004
import NoFourMUBs.Step2.SOS.NormalizationNodes005
import NoFourMUBs.Step2.SOS.NormalizationNodes006
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes26
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes38
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes40
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes42
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes44
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput15872 : ExponentCode := ⟨6, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 0, 1], ![0, 1, -1, 0, 0], ![-1, -1, 0, 2, 0], ![1, 1, 0, -2, 0], ![1, 0, 2, 0, -3]]⟩

def canonicalOutput15872 : ExponentCode := normalNode1466

theorem canonicalSound15872 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15872.moment H = canonicalOutput15872.moment H :=
  canonical_of_padded canonicalInput15872 canonicalOutput15872 (by decide) (by decide)
    ⟨false, true, canonicalPermutation122, OAI.MUB6.Certificate.PairSemantics.permutation176⟩ (by decide +kernel) hH

def canonicalInput15873 : ExponentCode := ⟨6, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 0, 1], ![0, 1, -1, 0, 0], ![-1, -1, 0, 2, 0], ![1, 1, 0, 0, -2], ![1, 0, 2, -2, -1]]⟩

def canonicalOutput15873 : ExponentCode := normalNode1612

theorem canonicalSound15873 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15873.moment H = canonicalOutput15873.moment H :=
  canonical_of_padded canonicalInput15873 canonicalOutput15873 (by decide) (by decide)
    ⟨false, true, canonicalPermutation122, OAI.MUB6.Certificate.PairSemantics.permutation176⟩ (by decide +kernel) hH

def canonicalInput15874 : ExponentCode := ⟨6, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 0, 1], ![0, 1, -1, 0, 0], ![-1, 0, 0, 2, -1], ![0, -1, 1, -1, 1], ![2, 1, 1, -1, -3]]⟩

def canonicalOutput15874 : ExponentCode := normalNode1139

theorem canonicalSound15874 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15874.moment H = canonicalOutput15874.moment H :=
  canonical_of_padded canonicalInput15874 canonicalOutput15874 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation362, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15875 : ExponentCode := ⟨6, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 0, 1], ![0, 1, -1, 0, 0], ![-1, 0, 0, 2, -1], ![0, 1, 1, 0, -2], ![2, -1, 1, -2, 0]]⟩

def canonicalOutput15875 : ExponentCode := normalNode2864

theorem canonicalSound15875 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15875.moment H = canonicalOutput15875.moment H :=
  canonical_of_padded canonicalInput15875 canonicalOutput15875 (by decide) (by decide)
    ⟨false, true, canonicalPermutation85, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15876 : ExponentCode := ⟨6, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 0, 1], ![0, 1, -1, 0, 0], ![-1, 0, 0, 2, -1], ![1, 1, 0, 0, -2], ![1, -1, 2, -2, 0]]⟩

def canonicalOutput15876 : ExponentCode := normalNode2852

theorem canonicalSound15876 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15876.moment H = canonicalOutput15876.moment H :=
  canonical_of_padded canonicalInput15876 canonicalOutput15876 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation309, canonicalPermutation72⟩ (by decide +kernel) hH

def canonicalInput15877 : ExponentCode := ⟨6, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 0, 1], ![0, 1, -1, 0, 0], ![-1, 0, 1, 1, -1], ![0, 1, 0, 1, -2], ![2, -1, 1, -2, 0]]⟩

def canonicalOutput15877 : ExponentCode := normalNode2866

theorem canonicalSound15877 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15877.moment H = canonicalOutput15877.moment H :=
  canonical_of_padded canonicalInput15877 canonicalOutput15877 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation188⟩ (by decide +kernel) hH

def canonicalInput15878 : ExponentCode := ⟨6, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 0, 1], ![0, 1, -1, 0, 0], ![0, -1, 1, -1, 1], ![-1, 0, 1, 2, -2], ![2, 1, 0, -1, -2]]⟩

def canonicalOutput15878 : ExponentCode := normalNode1517

theorem canonicalSound15878 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15878.moment H = canonicalOutput15878.moment H :=
  canonical_of_padded canonicalInput15878 canonicalOutput15878 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation360, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15879 : ExponentCode := ⟨6, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 0, 1], ![0, 1, -1, 0, 0], ![0, -1, 1, -1, 1], ![2, 0, 0, -1, -1], ![-1, 1, 1, 2, -3]]⟩

def canonicalOutput15879 : ExponentCode := normalNode1141

theorem canonicalSound15879 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15879.moment H = canonicalOutput15879.moment H :=
  canonical_of_padded canonicalInput15879 canonicalOutput15879 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation358, OAI.MUB6.Certificate.PairSemantics.permutation188⟩ (by decide +kernel) hH

def canonicalInput15880 : ExponentCode := ⟨6, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 0, 1], ![0, 1, -1, 0, 0], ![0, -1, 2, -1, 0], ![2, 0, 0, -1, -1], ![-1, 1, 0, 2, -2]]⟩

def canonicalOutput15880 : ExponentCode := normalNode1524

theorem canonicalSound15880 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15880.moment H = canonicalOutput15880.moment H :=
  canonical_of_padded canonicalInput15880 canonicalOutput15880 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation358, OAI.MUB6.Certificate.PairSemantics.permutation188⟩ (by decide +kernel) hH

def canonicalInput15881 : ExponentCode := ⟨6, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 0, 1], ![0, 1, -1, 0, 0], ![0, 0, 2, -2, 0], ![2, -1, 0, 0, -1], ![-1, 1, 0, 2, -2]]⟩

def canonicalOutput15881 : ExponentCode := normalNode1519

theorem canonicalSound15881 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15881.moment H = canonicalOutput15881.moment H :=
  canonical_of_padded canonicalInput15881 canonicalOutput15881 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation361, OAI.MUB6.Certificate.PairSemantics.permutation188⟩ (by decide +kernel) hH

def canonicalInput15882 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 0, 1], ![0, 1, 0, 1, -2], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput15882 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2449⟩

theorem canonicalSound15882 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15882.moment H = canonicalOutput15882.moment H :=
  canonical_of_padded canonicalInput15882 canonicalOutput15882 (by decide) (by decide)
    ⟨true, true, canonicalPermutation59, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput15883 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 1, 0], ![0, -1, 1, 1, -1], ![0, 2, -1, -1, 0], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput15883 : ExponentCode := normalNode8194

theorem canonicalSound15883 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15883.moment H = canonicalOutput15883.moment H :=
  canonical_of_padded canonicalInput15883 canonicalOutput15883 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15884 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 1, 0], ![0, -1, 2, -1, 0], ![0, 1, -1, 0, 0], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput15884 : ExponentCode := normalNode8288

theorem canonicalSound15884 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15884.moment H = canonicalOutput15884.moment H :=
  canonical_of_padded canonicalInput15884 canonicalOutput15884 (by decide) (by decide)
    ⟨true, false, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation190⟩ (by decide +kernel) hH

def canonicalInput15885 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 1, 0], ![0, -1, 2, -1, 0], ![0, 1, 0, 0, -1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput15885 : ExponentCode := normalNode10036

theorem canonicalSound15885 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15885.moment H = canonicalOutput15885.moment H :=
  canonical_of_padded canonicalInput15885 canonicalOutput15885 (by decide) (by decide)
    ⟨false, false, canonicalPermutation25, OAI.MUB6.Certificate.PairSemantics.permutation182⟩ (by decide +kernel) hH

def canonicalInput15886 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 1, 0], ![0, -1, 2, -1, 0], ![0, 2, -1, 0, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput15886 : ExponentCode := normalNode10038

theorem canonicalSound15886 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15886.moment H = canonicalOutput15886.moment H :=
  canonical_of_padded canonicalInput15886 canonicalOutput15886 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput15887 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 1, 0], ![0, -1, 2, 1, -2], ![0, 1, -1, 0, 0], ![1, 1, 0, -2, 0]]⟩

def canonicalOutput15887 : ExponentCode := normalNode8377

theorem canonicalSound15887 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15887.moment H = canonicalOutput15887.moment H :=
  canonical_of_padded canonicalInput15887 canonicalOutput15887 (by decide) (by decide)
    ⟨true, false, canonicalPermutation18, OAI.MUB6.Certificate.PairSemantics.permutation173⟩ (by decide +kernel) hH

def canonicalInput15888 : ExponentCode := ⟨6, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 1, 0], ![0, 0, -1, 1, 0], ![-1, -1, 1, 0, 1], ![0, 1, 1, -2, 0], ![2, 1, 0, 0, -3]]⟩

def canonicalOutput15888 : ExponentCode := normalNode1448

theorem canonicalSound15888 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15888.moment H = canonicalOutput15888.moment H :=
  canonical_of_padded canonicalInput15888 canonicalOutput15888 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation401, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15889 : ExponentCode := ⟨6, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 1, 0], ![0, 0, -1, 1, 0], ![-1, 2, 0, 0, -1], ![0, 0, 2, -2, 0], ![2, -1, 0, 0, -1]]⟩

def canonicalOutput15889 : ExponentCode := normalNode3665

theorem canonicalSound15889 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15889.moment H = canonicalOutput15889.moment H :=
  canonical_of_padded canonicalInput15889 canonicalOutput15889 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation303, OAI.MUB6.Certificate.PairSemantics.permutation177⟩ (by decide +kernel) hH

def canonicalInput15890 : ExponentCode := ⟨6, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 1, 0], ![0, 0, -1, 1, 0], ![0, 0, 1, -2, 1], ![2, -1, 0, 0, -1], ![-1, 2, 1, 0, -2]]⟩

def canonicalOutput15890 : ExponentCode := normalNode1569

theorem canonicalSound15890 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15890.moment H = canonicalOutput15890.moment H :=
  canonical_of_padded canonicalInput15890 canonicalOutput15890 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation380, OAI.MUB6.Certificate.PairSemantics.permutation171⟩ (by decide +kernel) hH

def canonicalInput15891 : ExponentCode := ⟨6, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 1, 0], ![0, 0, 0, 1, -1], ![-1, 0, 2, -1, 0], ![0, 2, -1, -1, 0], ![2, -1, 0, 0, -1]]⟩

def canonicalOutput15891 : ExponentCode := normalNode3676

theorem canonicalSound15891 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15891.moment H = canonicalOutput15891.moment H :=
  canonical_of_padded canonicalInput15891 canonicalOutput15891 (by decide) (by decide)
    ⟨false, true, canonicalPermutation42, canonicalPermutation20⟩ (by decide +kernel) hH

def canonicalInput15892 : ExponentCode := ⟨6, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 1, 0], ![0, 0, 0, 1, -1], ![-1, 2, 0, 0, -1], ![0, 0, 2, -2, 0], ![2, -1, -1, 0, 0]]⟩

def canonicalOutput15892 : ExponentCode := normalNode3664

theorem canonicalSound15892 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15892.moment H = canonicalOutput15892.moment H :=
  canonical_of_padded canonicalInput15892 canonicalOutput15892 (by decide) (by decide)
    ⟨false, true, canonicalPermutation123, canonicalPermutation73⟩ (by decide +kernel) hH

def canonicalInput15893 : ExponentCode := ⟨6, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 1, 0], ![0, 0, 0, 1, -1], ![-1, 2, 0, 0, -1], ![1, -1, -1, -1, 2], ![1, 0, 2, -1, -2]]⟩

def canonicalOutput15893 : ExponentCode := normalNode1587

theorem canonicalSound15893 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15893.moment H = canonicalOutput15893.moment H :=
  canonical_of_padded canonicalInput15893 canonicalOutput15893 (by decide) (by decide)
    ⟨false, true, canonicalPermutation103, OAI.MUB6.Certificate.PairSemantics.permutation176⟩ (by decide +kernel) hH

def canonicalInput15894 : ExponentCode := ⟨6, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 1, 0], ![0, 0, 0, 1, -1], ![0, 0, -1, -1, 2], ![-1, 2, 1, 0, -2], ![2, -1, 1, -1, -1]]⟩

def canonicalOutput15894 : ExponentCode := normalNode1578

theorem canonicalSound15894 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15894.moment H = canonicalOutput15894.moment H :=
  canonical_of_padded canonicalInput15894 canonicalOutput15894 (by decide) (by decide)
    ⟨false, true, canonicalPermutation117, OAI.MUB6.Certificate.PairSemantics.permutation171⟩ (by decide +kernel) hH

def canonicalInput15895 : ExponentCode := ⟨6, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 1, 0], ![0, 0, 0, 1, -1], ![0, 0, -1, -1, 2], ![2, -1, 0, 0, -1], ![-1, 2, 2, -1, -2]]⟩

def canonicalOutput15895 : ExponentCode := normalNode480

theorem canonicalSound15895 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15895.moment H = canonicalOutput15895.moment H :=
  canonical_of_padded canonicalInput15895 canonicalOutput15895 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation360, OAI.MUB6.Certificate.PairSemantics.permutation171⟩ (by decide +kernel) hH

def canonicalInput15896 : ExponentCode := ⟨6, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 1, 0], ![0, 0, 0, 1, -1], ![0, 0, 2, -1, -1], ![2, -1, 0, 0, -1], ![-1, 2, -1, -1, 1]]⟩

def canonicalOutput15896 : ExponentCode := normalNode3669

theorem canonicalSound15896 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15896.moment H = canonicalOutput15896.moment H :=
  canonical_of_padded canonicalInput15896 canonicalOutput15896 (by decide) (by decide)
    ⟨false, true, canonicalPermutation124, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput15897 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 1, 0], ![0, 0, 0, 1, -1], ![0, 1, 2, -2, -1], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput15897 : ExponentCode := normalNode8352

theorem canonicalSound15897 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15897.moment H = canonicalOutput15897.moment H :=
  canonical_of_padded canonicalInput15897 canonicalOutput15897 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation182, canonicalPermutation48⟩ (by decide +kernel) hH

def canonicalInput15898 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 1, 0], ![0, 0, 1, -1, 0], ![0, 2, 0, 0, -2], ![1, -1, 0, 0, 0]]⟩

def canonicalOutput15898 : ExponentCode := normalNode10415

theorem canonicalSound15898 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15898.moment H = canonicalOutput15898.moment H :=
  canonical_of_padded canonicalInput15898 canonicalOutput15898 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput15899 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 1, 0], ![0, 0, 1, -1, 0], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput15899 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2851⟩

theorem canonicalSound15899 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15899.moment H = canonicalOutput15899.moment H :=
  canonical_of_padded canonicalInput15899 canonicalOutput15899 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation181, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput15900 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 1, 0], ![0, 0, 1, 0, -1], ![0, 1, -1, 0, 0], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput15900 : ExponentCode := normalNode8420

theorem canonicalSound15900 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15900.moment H = canonicalOutput15900.moment H :=
  canonical_of_padded canonicalInput15900 canonicalOutput15900 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation167⟩ (by decide +kernel) hH

def canonicalInput15901 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 1, 0], ![0, 0, 1, 0, -1], ![0, 2, -1, -1, 0], ![1, -1, 1, 0, -1]]⟩

def canonicalOutput15901 : ExponentCode := normalNode10073

theorem canonicalSound15901 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15901.moment H = canonicalOutput15901.moment H :=
  canonical_of_padded canonicalInput15901 canonicalOutput15901 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation184, OAI.MUB6.Certificate.PairSemantics.permutation184⟩ (by decide +kernel) hH

def canonicalInput15902 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 1, 0], ![0, 0, 1, 0, -1], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput15902 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2734⟩

theorem canonicalSound15902 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15902.moment H = canonicalOutput15902.moment H :=
  canonical_of_padded canonicalInput15902 canonicalOutput15902 (by decide) (by decide)
    ⟨true, false, canonicalPermutation31, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput15903 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 1, 0], ![0, 0, 1, 1, -2], ![1, 1, 0, -2, 0]]⟩

def canonicalOutput15903 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2609⟩

theorem canonicalSound15903 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15903.moment H = canonicalOutput15903.moment H :=
  canonical_of_padded canonicalInput15903 canonicalOutput15903 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation182, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput15904 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 1, 0], ![0, 0, 1, 2, -3], ![0, 2, 0, -3, 1], ![1, -1, 0, 0, 0]]⟩

def canonicalOutput15904 : ExponentCode := normalNode10055

theorem canonicalSound15904 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15904.moment H = canonicalOutput15904.moment H :=
  canonical_of_padded canonicalInput15904 canonicalOutput15904 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15905 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 1, 0], ![0, 0, 2, -2, 0], ![0, 0, -1, 1, 0], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput15905 : ExponentCode := normalNode8284

theorem canonicalSound15905 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15905.moment H = canonicalOutput15905.moment H :=
  canonical_of_padded canonicalInput15905 canonicalOutput15905 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput15906 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 1, 0], ![0, 0, 2, -2, 0], ![0, 0, 0, 1, -1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput15906 : ExponentCode := normalNode8285

theorem canonicalSound15906 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15906.moment H = canonicalOutput15906.moment H :=
  canonical_of_padded canonicalInput15906 canonicalOutput15906 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput15907 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 1, 0], ![0, 0, 2, -2, 0], ![0, 1, -1, 0, 0], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput15907 : ExponentCode := normalNode8287

theorem canonicalSound15907 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15907.moment H = canonicalOutput15907.moment H :=
  canonical_of_padded canonicalInput15907 canonicalOutput15907 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput15908 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 1, 0], ![0, 0, 2, -2, 0], ![0, 1, -1, 1, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput15908 : ExponentCode := normalNode8288

theorem canonicalSound15908 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15908.moment H = canonicalOutput15908.moment H :=
  canonical_of_padded canonicalInput15908 canonicalOutput15908 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation167⟩ (by decide +kernel) hH

def canonicalInput15909 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 1, 0], ![0, 0, 2, -2, 0], ![0, 1, 0, 0, -1], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput15909 : ExponentCode := normalNode8288

theorem canonicalSound15909 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15909.moment H = canonicalOutput15909.moment H :=
  canonical_of_padded canonicalInput15909 canonicalOutput15909 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput15910 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 1, 0], ![0, 0, 2, -2, 0], ![0, 2, -1, 0, -1], ![1, -1, 0, 1, -1]]⟩

def canonicalOutput15910 : ExponentCode := normalNode8112

theorem canonicalSound15910 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15910.moment H = canonicalOutput15910.moment H :=
  canonical_of_padded canonicalInput15910 canonicalOutput15910 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation181, OAI.MUB6.Certificate.PairSemantics.permutation174⟩ (by decide +kernel) hH

def canonicalInput15911 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 1, 0], ![0, 0, 2, 0, -2], ![0, 0, -1, 1, 0], ![1, 1, 0, -2, 0]]⟩

def canonicalOutput15911 : ExponentCode := normalNode8289

theorem canonicalSound15911 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15911.moment H = canonicalOutput15911.moment H :=
  canonical_of_padded canonicalInput15911 canonicalOutput15911 (by decide) (by decide)
    ⟨false, true, canonicalPermutation33, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput15912 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 1, 0], ![0, 0, 2, 0, -2], ![0, 1, -1, 0, 0], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput15912 : ExponentCode := normalNode8431

theorem canonicalSound15912 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15912.moment H = canonicalOutput15912.moment H :=
  canonical_of_padded canonicalInput15912 canonicalOutput15912 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation167⟩ (by decide +kernel) hH

def canonicalInput15913 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 1, 0], ![0, 0, 2, 0, -2], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput15913 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2613⟩

theorem canonicalSound15913 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15913.moment H = canonicalOutput15913.moment H :=
  canonical_of_padded canonicalInput15913 canonicalOutput15913 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation181, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput15914 : ExponentCode := ⟨6, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 1, 0], ![0, 1, -1, 0, 0], ![-1, -1, 0, 1, 1], ![0, 0, 2, -2, 0], ![2, 1, 0, 0, -3]]⟩

def canonicalOutput15914 : ExponentCode := normalNode1469

theorem canonicalSound15914 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15914.moment H = canonicalOutput15914.moment H :=
  canonical_of_padded canonicalInput15914 canonicalOutput15914 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation362, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput15915 : ExponentCode := ⟨6, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 1, 0], ![0, 1, -1, 0, 0], ![-1, -1, 0, 1, 1], ![0, 1, 1, -2, 0], ![2, 0, 1, 0, -3]]⟩

def canonicalOutput15915 : ExponentCode := normalNode1464

theorem canonicalSound15915 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15915.moment H = canonicalOutput15915.moment H :=
  canonical_of_padded canonicalInput15915 canonicalOutput15915 (by decide) (by decide)
    ⟨false, true, canonicalPermutation85, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15916 : ExponentCode := ⟨6, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 1, 0], ![0, 1, -1, 0, 0], ![-1, 0, 1, 1, -1], ![0, 1, 1, -2, 0], ![2, -1, 0, 0, -1]]⟩

def canonicalOutput15916 : ExponentCode := normalNode3696

theorem canonicalSound15916 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15916.moment H = canonicalOutput15916.moment H :=
  canonical_of_padded canonicalInput15916 canonicalOutput15916 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation342, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput15917 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 1, 0], ![0, 1, 0, -1, 0], ![0, 1, 0, 0, -1], ![1, -1, 1, 0, -1]]⟩

def canonicalOutput15917 : ExponentCode := normalNode8739

theorem canonicalSound15917 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15917.moment H = canonicalOutput15917.moment H :=
  canonical_of_padded canonicalInput15917 canonicalOutput15917 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput15918 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 1, 0], ![0, 1, 0, -1, 0], ![0, 1, 1, 0, -2], ![1, -1, 0, 0, 0]]⟩

def canonicalOutput15918 : ExponentCode := normalNode10402

theorem canonicalSound15918 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15918.moment H = canonicalOutput15918.moment H :=
  canonical_of_padded canonicalInput15918 canonicalOutput15918 (by decide) (by decide)
    ⟨false, true, canonicalPermutation76, canonicalPermutation42⟩ (by decide +kernel) hH

def canonicalInput15919 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 1, 0], ![0, 1, 0, -1, 0], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput15919 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2784⟩

theorem canonicalSound15919 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15919.moment H = canonicalOutput15919.moment H :=
  canonical_of_padded canonicalInput15919 canonicalOutput15919 (by decide) (by decide)
    ⟨true, false, canonicalPermutation18, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput15920 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 1, 0], ![0, 1, 0, 0, -1], ![0, 0, 2, -1, -1], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput15920 : ExponentCode := normalNode8387

theorem canonicalSound15920 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15920.moment H = canonicalOutput15920.moment H :=
  canonical_of_padded canonicalInput15920 canonicalOutput15920 (by decide) (by decide)
    ⟨false, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation167⟩ (by decide +kernel) hH

def canonicalInput15921 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 1, 0], ![0, 1, 0, 0, -1], ![0, 1, 2, -2, -1], ![1, -1, -1, 1, 0]]⟩

def canonicalOutput15921 : ExponentCode := normalNode10071

theorem canonicalSound15921 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15921.moment H = canonicalOutput15921.moment H :=
  canonical_of_padded canonicalInput15921 canonicalOutput15921 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation181, canonicalPermutation48⟩ (by decide +kernel) hH

def canonicalInput15922 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 1, 0], ![0, 1, 0, 0, -1], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput15922 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2724⟩

theorem canonicalSound15922 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15922.moment H = canonicalOutput15922.moment H :=
  canonical_of_padded canonicalInput15922 canonicalOutput15922 (by decide) (by decide)
    ⟨true, false, canonicalPermutation43, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput15923 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 1, 0], ![0, 1, 0, 1, -2], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput15923 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2583⟩

theorem canonicalSound15923 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15923.moment H = canonicalOutput15923.moment H :=
  canonical_of_padded canonicalInput15923 canonicalOutput15923 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation187, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput15924 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 1, 0], ![0, 1, 0, 2, -3], ![1, 0, 1, -3, 1]]⟩

def canonicalOutput15924 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2698⟩

theorem canonicalSound15924 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15924.moment H = canonicalOutput15924.moment H :=
  canonical_of_padded canonicalInput15924 canonicalOutput15924 (by decide) (by decide)
    ⟨true, true, canonicalPermutation75, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15925 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 1, 0], ![0, 1, 1, -2, 0], ![0, 1, 0, 1, -2], ![1, -1, 0, 0, 0]]⟩

def canonicalOutput15925 : ExponentCode := normalNode10052

theorem canonicalSound15925 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15925.moment H = canonicalOutput15925.moment H :=
  canonical_of_padded canonicalInput15925 canonicalOutput15925 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15926 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 1, 0], ![0, 1, 1, -2, 0], ![0, 1, 1, 0, -2], ![1, -1, -1, 1, 0]]⟩

def canonicalOutput15926 : ExponentCode := normalNode8157

theorem canonicalSound15926 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15926.moment H = canonicalOutput15926.moment H :=
  canonical_of_padded canonicalInput15926 canonicalOutput15926 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation185, canonicalPermutation37⟩ (by decide +kernel) hH

def canonicalInput15927 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 1, 0], ![0, 1, 1, -1, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput15927 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2724⟩

theorem canonicalSound15927 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15927.moment H = canonicalOutput15927.moment H :=
  canonical_of_padded canonicalInput15927 canonicalOutput15927 (by decide) (by decide)
    ⟨true, false, canonicalPermutation33, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput15928 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 1, 0], ![0, 2, 1, -2, -1], ![1, -1, 0, 1, -1]]⟩

def canonicalOutput15928 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2585⟩

theorem canonicalSound15928 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15928.moment H = canonicalOutput15928.moment H :=
  canonical_of_padded canonicalInput15928 canonicalOutput15928 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation185, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput15929 : ExponentCode := ⟨6, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 1, 0], ![1, -1, 0, 0, 0], ![-1, 1, -1, 1, 0], ![0, 0, 2, -3, 1], ![1, 1, 0, 1, -3]]⟩

def canonicalOutput15929 : ExponentCode := normalNode3644

theorem canonicalSound15929 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15929.moment H = canonicalOutput15929.moment H :=
  canonical_of_padded canonicalInput15929 canonicalOutput15929 (by decide) (by decide)
    ⟨false, true, canonicalPermutation67, OAI.MUB6.Certificate.PairSemantics.permutation177⟩ (by decide +kernel) hH

def canonicalInput15930 : ExponentCode := ⟨6, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 1, 0], ![1, -1, 0, 0, 0], ![-1, 1, -1, 1, 0], ![0, 0, 2, 1, -3], ![1, 1, 0, -3, 1]]⟩

def canonicalOutput15930 : ExponentCode := normalNode3645

theorem canonicalSound15930 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15930.moment H = canonicalOutput15930.moment H :=
  canonical_of_padded canonicalInput15930 canonicalOutput15930 (by decide) (by decide)
    ⟨false, true, canonicalPermutation67, OAI.MUB6.Certificate.PairSemantics.permutation176⟩ (by decide +kernel) hH

def canonicalInput15931 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 2, -1], ![0, 0, 1, -2, 1], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput15931 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1752⟩

theorem canonicalSound15931 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15931.moment H = canonicalOutput15931.moment H :=
  canonical_of_padded canonicalInput15931 canonicalOutput15931 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput15932 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 2, -1], ![0, 0, 1, -1, 0], ![0, 1, 0, 0, -1], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput15932 : ExponentCode := normalNode8387

theorem canonicalSound15932 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15932.moment H = canonicalOutput15932.moment H :=
  canonical_of_padded canonicalInput15932 canonicalOutput15932 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput15933 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 2, -1], ![0, 0, 1, -1, 0], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput15933 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2587⟩

theorem canonicalSound15933 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15933.moment H = canonicalOutput15933.moment H :=
  canonical_of_padded canonicalInput15933 canonicalOutput15933 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation195, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput15934 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 2, -1], ![0, 0, 1, 0, -1], ![1, 1, 0, -2, 0]]⟩

def canonicalOutput15934 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2609⟩

theorem canonicalSound15934 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15934.moment H = canonicalOutput15934.moment H :=
  canonical_of_padded canonicalInput15934 canonicalOutput15934 (by decide) (by decide)
    ⟨true, false, canonicalPermutation31, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput15935 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 2, -1], ![0, 0, 1, 1, -2], ![1, 1, 0, -3, 1]]⟩

def canonicalOutput15935 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1674⟩

theorem canonicalSound15935 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15935.moment H = canonicalOutput15935.moment H :=
  canonical_of_padded canonicalInput15935 canonicalOutput15935 (by decide) (by decide)
    ⟨true, true, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
