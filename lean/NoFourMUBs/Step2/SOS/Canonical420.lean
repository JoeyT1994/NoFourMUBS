import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes002
import NoFourMUBs.Step2.SOS.NormalizationNodes006
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes033
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes39
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations
import OAI.Analysis.MutuallyUnbiased.PairTargets.ExtraPermutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput26880 : ExponentCode := ⟨4, 4, ![![0, -1, 1, 0], ![0, 1, -4, 3], ![0, 1, 0, -1], ![0, -1, 3, -2]]⟩

def canonicalOutput26880 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node243⟩

theorem canonicalSound26880 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26880.moment H = canonicalOutput26880.moment H :=
  canonical_of_padded canonicalInput26880 canonicalOutput26880 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26881 : ExponentCode := ⟨4, 4, ![![0, -1, 1, 0], ![0, 1, -4, 3], ![0, 1, 1, -2], ![0, -1, 2, -1]]⟩

def canonicalOutput26881 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node246⟩

theorem canonicalSound26881 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26881.moment H = canonicalOutput26881.moment H :=
  canonical_of_padded canonicalInput26881 canonicalOutput26881 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26882 : ExponentCode := ⟨4, 4, ![![0, -1, 1, 0], ![0, 1, -4, 3], ![0, 1, 2, -3], ![0, -1, 1, 0]]⟩

def canonicalOutput26882 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node248⟩

theorem canonicalSound26882 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26882.moment H = canonicalOutput26882.moment H :=
  canonical_of_padded canonicalInput26882 canonicalOutput26882 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26883 : ExponentCode := ⟨4, 4, ![![0, -1, 1, 0], ![0, 1, -4, 3], ![0, 1, 3, -4], ![0, -1, 0, 1]]⟩

def canonicalOutput26883 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node249⟩

theorem canonicalSound26883 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26883.moment H = canonicalOutput26883.moment H :=
  canonical_of_padded canonicalInput26883 canonicalOutput26883 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26884 : ExponentCode := ⟨4, 4, ![![0, -1, 1, 0], ![0, 1, -3, 2], ![-1, 1, 0, 0], ![1, -1, 2, -2]]⟩

def canonicalOutput26884 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1220⟩

theorem canonicalSound26884 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26884.moment H = canonicalOutput26884.moment H :=
  canonical_of_padded canonicalInput26884 canonicalOutput26884 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput26885 : ExponentCode := ⟨4, 4, ![![0, -1, 1, 0], ![0, 1, -3, 2], ![-1, 1, 3, -3], ![1, -1, -1, 1]]⟩

def canonicalOutput26885 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1128⟩

theorem canonicalSound26885 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26885.moment H = canonicalOutput26885.moment H :=
  canonical_of_padded canonicalInput26885 canonicalOutput26885 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput26886 : ExponentCode := ⟨4, 4, ![![0, -1, 1, 0], ![0, 1, -3, 2], ![0, 1, 0, -1], ![0, -1, 2, -1]]⟩

def canonicalOutput26886 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node181⟩

theorem canonicalSound26886 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26886.moment H = canonicalOutput26886.moment H :=
  canonical_of_padded canonicalInput26886 canonicalOutput26886 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput26887 : ExponentCode := ⟨4, 4, ![![0, -1, 1, 0], ![0, 1, -3, 2], ![0, 1, 3, -4], ![0, -1, -1, 2]]⟩

def canonicalOutput26887 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node247⟩

theorem canonicalSound26887 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26887.moment H = canonicalOutput26887.moment H :=
  canonical_of_padded canonicalInput26887 canonicalOutput26887 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26888 : ExponentCode := ⟨4, 4, ![![0, -1, 1, 0], ![0, 1, -1, 0], ![-1, 1, 2, -2], ![1, -1, -2, 2]]⟩

def canonicalOutput26888 : ExponentCode := normalNode11069

theorem canonicalSound26888 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26888.moment H = canonicalOutput26888.moment H :=
  canonical_of_padded canonicalInput26888 canonicalOutput26888 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput26889 : ExponentCode := ⟨3, 4, ![![0, -1, 1, 0], ![0, 1, -1, 0], ![0, 0, 0, 0]]⟩

def canonicalOutput26889 : ExponentCode := ⟨2, 2, OAI.MUB6.Certificate.PairSemantics.node5⟩

theorem canonicalSound26889 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26889.moment H = canonicalOutput26889.moment H :=
  canonical_of_padded canonicalInput26889 canonicalOutput26889 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput26890 : ExponentCode := ⟨4, 4, ![![0, -1, 1, 0], ![0, 1, -1, 0], ![0, 1, 2, -3], ![0, -1, -2, 3]]⟩

def canonicalOutput26890 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node259⟩

theorem canonicalSound26890 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26890.moment H = canonicalOutput26890.moment H :=
  canonical_of_padded canonicalInput26890 canonicalOutput26890 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26891 : ExponentCode := ⟨4, 4, ![![0, -1, 1, 0], ![0, 1, 0, -1], ![-1, 1, 1, -1], ![1, -1, -2, 2]]⟩

def canonicalOutput26891 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1260⟩

theorem canonicalSound26891 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26891.moment H = canonicalOutput26891.moment H :=
  canonical_of_padded canonicalInput26891 canonicalOutput26891 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput26892 : ExponentCode := ⟨4, 4, ![![0, -1, 1, 0], ![0, 1, 0, -1], ![-1, 1, 2, -2], ![1, -1, -3, 3]]⟩

def canonicalOutput26892 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1217⟩

theorem canonicalSound26892 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26892.moment H = canonicalOutput26892.moment H :=
  canonical_of_padded canonicalInput26892 canonicalOutput26892 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput26893 : ExponentCode := ⟨4, 4, ![![0, -1, 1, 0], ![0, 1, 0, -1], ![0, 1, 1, -2], ![0, -1, -2, 3]]⟩

def canonicalOutput26893 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node181⟩

theorem canonicalSound26893 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26893.moment H = canonicalOutput26893.moment H :=
  canonical_of_padded canonicalInput26893 canonicalOutput26893 (by decide) (by decide)
    ⟨false, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput26894 : ExponentCode := ⟨4, 4, ![![0, -1, 1, 0], ![0, 1, 0, -1], ![0, 1, 2, -3], ![0, -1, -3, 4]]⟩

def canonicalOutput26894 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node243⟩

theorem canonicalSound26894 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26894.moment H = canonicalOutput26894.moment H :=
  canonical_of_padded canonicalInput26894 canonicalOutput26894 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26895 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, 1, 0, -1], ![1, -2, 0, 1], ![1, 0, 0, -1], ![-1, 1, 2, -2], ![-1, 1, -3, 3]]⟩

def canonicalOutput26895 : ExponentCode := normalNode6081

theorem canonicalSound26895 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26895.moment H = canonicalOutput26895.moment H :=
  canonical_of_padded canonicalInput26895 canonicalOutput26895 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation398, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput26896 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-1, 1, 2, -2], ![-1, 1, -3, 3]]⟩

def canonicalOutput26896 : ExponentCode := normalNode6082

theorem canonicalSound26896 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26896.moment H = canonicalOutput26896.moment H :=
  canonical_of_padded canonicalInput26896 canonicalOutput26896 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation398, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput26897 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, 0, 2, -1], ![-1, 1, -3, 3]]⟩

def canonicalOutput26897 : ExponentCode := normalNode10207

theorem canonicalSound26897 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26897.moment H = canonicalOutput26897.moment H :=
  canonical_of_padded canonicalInput26897 canonicalOutput26897 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26898 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, 1, 2, -2], ![-1, 0, -3, 4]]⟩

def canonicalOutput26898 : ExponentCode := normalNode9633

theorem canonicalSound26898 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26898.moment H = canonicalOutput26898.moment H :=
  canonical_of_padded canonicalInput26898 canonicalOutput26898 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26899 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, 1, 0, -1], ![1, 0, 0, -1], ![-2, 0, 0, 2], ![0, 2, -3, 1], ![1, -2, 2, -1]]⟩

def canonicalOutput26899 : ExponentCode := normalNode3703

theorem canonicalSound26899 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26899.moment H = canonicalOutput26899.moment H :=
  canonical_of_padded canonicalInput26899 canonicalOutput26899 (by decide) (by decide)
    ⟨false, false, canonicalPermutation285, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput26900 : ExponentCode := ⟨4, 4, ![![0, -1, 1, 0], ![0, 1, 1, -2], ![-1, 1, 1, -1], ![1, -1, -3, 3]]⟩

def canonicalOutput26900 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node972⟩

theorem canonicalSound26900 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26900.moment H = canonicalOutput26900.moment H :=
  canonical_of_padded canonicalInput26900 canonicalOutput26900 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26901 : ExponentCode := ⟨4, 4, ![![0, -1, 1, 0], ![0, 1, 1, -2], ![0, 1, 1, -2], ![0, -1, -3, 4]]⟩

def canonicalOutput26901 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node244⟩

theorem canonicalSound26901 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26901.moment H = canonicalOutput26901.moment H :=
  canonical_of_padded canonicalInput26901 canonicalOutput26901 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26902 : ExponentCode := ⟨3, 4, ![![0, -1, 1, 0], ![1, -3, 3, -1], ![-1, 4, -4, 1]]⟩

def canonicalOutput26902 : ExponentCode := normalNode6289

theorem canonicalSound26902 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26902.moment H = canonicalOutput26902.moment H :=
  canonical_of_padded canonicalInput26902 canonicalOutput26902 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26903 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![1, -1, 0, 0], ![0, 0, 0, 0], ![-1, 2, -1, 0], ![0, 0, -3, 3], ![0, 0, 3, -3]]⟩

def canonicalOutput26903 : ExponentCode := normalNode11155

theorem canonicalSound26903 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26903.moment H = canonicalOutput26903.moment H :=
  canonical_of_padded canonicalInput26903 canonicalOutput26903 (by decide) (by decide)
    ⟨false, true, canonicalPermutation330, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26904 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-2, 2, -1, 1], ![0, 0, -3, 3], ![0, 0, 3, -3]]⟩

def canonicalOutput26904 : ExponentCode := normalNode5869

theorem canonicalSound26904 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26904.moment H = canonicalOutput26904.moment H :=
  canonical_of_padded canonicalInput26904 canonicalOutput26904 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation245, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26905 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, 0, 2, -1], ![-1, -1, -1, 3], ![0, 3, -2, -1]]⟩

def canonicalOutput26905 : ExponentCode := normalNode7736

theorem canonicalSound26905 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26905.moment H = canonicalOutput26905.moment H :=
  canonical_of_padded canonicalInput26905 canonicalOutput26905 (by decide) (by decide)
    ⟨false, false, canonicalPermutation331, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26906 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, 0, 2, -1], ![-1, 3, -1, -1], ![0, -1, -2, 3]]⟩

def canonicalOutput26906 : ExponentCode := normalNode7658

theorem canonicalSound26906 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26906.moment H = canonicalOutput26906.moment H :=
  canonical_of_padded canonicalInput26906 canonicalOutput26906 (by decide) (by decide)
    ⟨false, false, canonicalPermutation192, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput26907 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, 2, -1, 0], ![-1, 0, -3, 4], ![0, 0, 3, -3]]⟩

def canonicalOutput26907 : ExponentCode := normalNode5399

theorem canonicalSound26907 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26907.moment H = canonicalOutput26907.moment H :=
  canonical_of_padded canonicalInput26907 canonicalOutput26907 (by decide) (by decide)
    ⟨false, true, canonicalPermutation132, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput26908 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, 2, -1, 0], ![0, 0, -3, 3], ![-1, 0, 3, -2]]⟩

def canonicalOutput26908 : ExponentCode := normalNode5372

theorem canonicalSound26908 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26908.moment H = canonicalOutput26908.moment H :=
  canonical_of_padded canonicalInput26908 canonicalOutput26908 (by decide) (by decide)
    ⟨false, true, canonicalPermutation133, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput26909 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![1, -1, 0, 0], ![1, 0, 0, -1], ![0, -1, 2, -1], ![0, 2, -1, -1], ![-2, 1, -2, 3]]⟩

def canonicalOutput26909 : ExponentCode := normalNode540

theorem canonicalSound26909 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26909.moment H = canonicalOutput26909.moment H :=
  canonical_of_padded canonicalInput26909 canonicalOutput26909 (by decide) (by decide)
    ⟨false, false, canonicalPermutation300, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput26910 : ExponentCode := ⟨3, 4, ![![0, -1, 1, 0], ![1, -1, 3, -3], ![-1, 2, -4, 3]]⟩

def canonicalOutput26910 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node251⟩

theorem canonicalSound26910 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26910.moment H = canonicalOutput26910.moment H :=
  canonical_of_padded canonicalInput26910 canonicalOutput26910 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26911 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-1, -1, 2, 0], ![-1, -1, -1, 3], ![0, 3, -1, -2]]⟩

def canonicalOutput26911 : ExponentCode := normalNode7652

theorem canonicalSound26911 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26911.moment H = canonicalOutput26911.moment H :=
  canonical_of_padded canonicalInput26911 canonicalOutput26911 (by decide) (by decide)
    ⟨false, false, canonicalPermutation331, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26912 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-1, -1, 2, 0], ![-1, 3, 0, -2], ![0, -1, -2, 3]]⟩

def canonicalOutput26912 : ExponentCode := normalNode6666

theorem canonicalSound26912 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26912.moment H = canonicalOutput26912.moment H :=
  canonical_of_padded canonicalInput26912 canonicalOutput26912 (by decide) (by decide)
    ⟨false, false, canonicalPermutation192, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput26913 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![1, 0, -1, 0], ![1, 0, 0, -1], ![0, -1, 2, -1], ![-2, -1, 0, 3], ![0, 3, -2, -1]]⟩

def canonicalOutput26913 : ExponentCode := normalNode1742

theorem canonicalSound26913 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26913.moment H = canonicalOutput26913.moment H :=
  canonical_of_padded canonicalInput26913 canonicalOutput26913 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation274, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26914 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![1, 0, -1, 0], ![1, 0, 0, -1], ![0, -1, 2, -1], ![-1, -1, -1, 3], ![-1, 3, -1, -1]]⟩

def canonicalOutput26914 : ExponentCode := normalNode7682

theorem canonicalSound26914 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26914.moment H = canonicalOutput26914.moment H :=
  canonical_of_padded canonicalInput26914 canonicalOutput26914 (by decide) (by decide)
    ⟨false, false, canonicalPermutation83, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput26915 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![1, 0, 0, -1], ![1, 0, 0, -1], ![0, -2, 2, 0], ![-2, 0, -1, 3], ![0, 3, -2, -1]]⟩

def canonicalOutput26915 : ExponentCode := normalNode1660

theorem canonicalSound26915 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26915.moment H = canonicalOutput26915.moment H :=
  canonical_of_padded canonicalInput26915 canonicalOutput26915 (by decide) (by decide)
    ⟨false, false, canonicalPermutation83, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput26916 : ExponentCode := ⟨3, 4, ![![0, -1, 1, 0], ![2, -1, 2, -3], ![-2, 2, -3, 3]]⟩

def canonicalOutput26916 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node265⟩

theorem canonicalSound26916 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26916.moment H = canonicalOutput26916.moment H :=
  canonical_of_padded canonicalInput26916 canonicalOutput26916 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26917 : ExponentCode := ⟨3, 4, ![![0, -1, 1, 0], ![3, -1, 1, -3], ![-3, 2, -2, 3]]⟩

def canonicalOutput26917 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node277⟩

theorem canonicalSound26917 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26917.moment H = canonicalOutput26917.moment H :=
  canonical_of_padded canonicalInput26917 canonicalOutput26917 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26918 : ExponentCode := ⟨5, 5, ![![0, -1, 1, 0, 0], ![-1, 0, 0, 2, -1], ![0, 0, 1, 0, -1], ![0, 2, -1, 0, -1], ![1, -1, -1, -2, 3]]⟩

def canonicalOutput26918 : ExponentCode := normalNode8589

theorem canonicalSound26918 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26918.moment H = canonicalOutput26918.moment H :=
  canonical_of_padded canonicalInput26918 canonicalOutput26918 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation178, OAI.MUB6.Certificate.PairSemantics.permutation176⟩ (by decide +kernel) hH

def canonicalInput26919 : ExponentCode := ⟨5, 5, ![![0, -1, 1, 0, 0], ![-1, 0, 0, 2, -1], ![0, 1, 0, 0, -1], ![0, 1, 1, -1, -1], ![1, -1, -2, -1, 3]]⟩

def canonicalOutput26919 : ExponentCode := normalNode10010

theorem canonicalSound26919 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26919.moment H = canonicalOutput26919.moment H :=
  canonical_of_padded canonicalInput26919 canonicalOutput26919 (by decide) (by decide)
    ⟨true, false, canonicalPermutation21, OAI.MUB6.Certificate.PairSemantics.permutation176⟩ (by decide +kernel) hH

def canonicalInput26920 : ExponentCode := ⟨4, 5, ![![0, -1, 1, 0, 0], ![-1, 0, 0, 2, -1], ![0, 1, 0, 0, -1], ![1, 0, -1, -2, 2]]⟩

def canonicalOutput26920 : ExponentCode := normalNode10331

theorem canonicalSound26920 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26920.moment H = canonicalOutput26920.moment H :=
  canonical_of_padded canonicalInput26920 canonicalOutput26920 (by decide) (by decide)
    ⟨true, false, canonicalPermutation21, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput26921 : ExponentCode := ⟨5, 5, ![![0, -1, 1, 0, 0], ![-1, 0, 1, -3, 3], ![0, 0, 0, 3, -3], ![0, 2, -2, 0, 0], ![1, -1, 0, 0, 0]]⟩

def canonicalOutput26921 : ExponentCode := normalNode9564

theorem canonicalSound26921 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26921.moment H = canonicalOutput26921.moment H :=
  canonical_of_padded canonicalInput26921 canonicalOutput26921 (by decide) (by decide)
    ⟨true, false, canonicalPermutation24, canonicalPermutation21⟩ (by decide +kernel) hH

def canonicalInput26922 : ExponentCode := ⟨5, 5, ![![0, -1, 1, 0, 0], ![-1, 0, 1, 1, -1], ![0, 1, -1, 1, -1], ![0, 1, 0, 0, -1], ![1, -1, -1, -2, 3]]⟩

def canonicalOutput26922 : ExponentCode := normalNode10009

theorem canonicalSound26922 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26922.moment H = canonicalOutput26922.moment H :=
  canonical_of_padded canonicalInput26922 canonicalOutput26922 (by decide) (by decide)
    ⟨true, false, canonicalPermutation21, canonicalPermutation34⟩ (by decide +kernel) hH

def canonicalInput26923 : ExponentCode := ⟨6, 5, ![![0, -1, 1, 0, 0], ![0, -1, 1, 0, 0], ![1, 0, -1, 0, 0], ![-1, 2, -1, 0, 0], ![0, 0, 0, -3, 3], ![0, 0, 0, 3, -3]]⟩

def canonicalOutput26923 : ExponentCode := normalNode9566

theorem canonicalSound26923 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26923.moment H = canonicalOutput26923.moment H :=
  canonical_of_padded canonicalInput26923 canonicalOutput26923 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput26924 : ExponentCode := ⟨5, 5, ![![0, -1, 1, 0, 0], ![0, 0, 0, -3, 3], ![-1, 0, 1, 3, -3], ![0, 2, -2, 0, 0], ![1, -1, 0, 0, 0]]⟩

def canonicalOutput26924 : ExponentCode := normalNode9564

theorem canonicalSound26924 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26924.moment H = canonicalOutput26924.moment H :=
  canonical_of_padded canonicalInput26924 canonicalOutput26924 (by decide) (by decide)
    ⟨true, false, canonicalPermutation29, OAI.MUB6.Certificate.PairSemantics.permutation198⟩ (by decide +kernel) hH

def canonicalInput26925 : ExponentCode := ⟨5, 5, ![![0, -1, 1, 0, 0], ![0, 0, 0, -3, 3], ![0, 0, 0, 3, -3], ![-1, 2, -1, 0, 0], ![1, -1, 0, 0, 0]]⟩

def canonicalOutput26925 : ExponentCode := normalNode9567

theorem canonicalSound26925 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26925.moment H = canonicalOutput26925.moment H :=
  canonical_of_padded canonicalInput26925 canonicalOutput26925 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation188, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput26926 : ExponentCode := ⟨5, 5, ![![0, -1, 1, 0, 0], ![0, 0, 0, -3, 3], ![0, 0, 0, 3, -3], ![0, 2, -2, 0, 0], ![0, -1, 1, 0, 0]]⟩

def canonicalOutput26926 : ExponentCode := normalNode5962

theorem canonicalSound26926 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26926.moment H = canonicalOutput26926.moment H :=
  canonical_of_padded canonicalInput26926 canonicalOutput26926 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation188, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput26927 : ExponentCode := ⟨5, 5, ![![0, -1, 1, 0, 0], ![0, 0, 0, 1, -1], ![-1, 0, 1, 1, -1], ![0, 2, -1, 0, -1], ![1, -1, -1, -2, 3]]⟩

def canonicalOutput26927 : ExponentCode := normalNode9996

theorem canonicalSound26927 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26927.moment H = canonicalOutput26927.moment H :=
  canonical_of_padded canonicalInput26927 canonicalOutput26927 (by decide) (by decide)
    ⟨true, false, canonicalPermutation54, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput26928 : ExponentCode := ⟨5, 5, ![![0, -1, 1, 0, 0], ![0, 0, 0, 1, -1], ![-1, 1, 0, 1, -1], ![0, 1, 1, -1, -1], ![1, -1, -2, -1, 3]]⟩

def canonicalOutput26928 : ExponentCode := normalNode10007

theorem canonicalSound26928 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26928.moment H = canonicalOutput26928.moment H :=
  canonical_of_padded canonicalInput26928 canonicalOutput26928 (by decide) (by decide)
    ⟨true, false, canonicalPermutation54, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput26929 : ExponentCode := ⟨5, 5, ![![0, -1, 1, 0, 0], ![0, 0, 0, 1, -1], ![0, 0, 1, 0, -1], ![-1, 2, -1, 1, -1], ![1, -1, -1, -2, 3]]⟩

def canonicalOutput26929 : ExponentCode := normalNode8042

theorem canonicalSound26929 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26929.moment H = canonicalOutput26929.moment H :=
  canonical_of_padded canonicalInput26929 canonicalOutput26929 (by decide) (by decide)
    ⟨true, false, canonicalPermutation68, canonicalPermutation50⟩ (by decide +kernel) hH

def canonicalInput26930 : ExponentCode := ⟨5, 5, ![![0, -1, 1, 0, 0], ![0, 0, 0, 1, -1], ![0, 0, 1, 0, -1], ![0, 2, -1, 0, -1], ![0, -1, -1, -1, 3]]⟩

def canonicalOutput26930 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2532⟩

theorem canonicalSound26930 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26930.moment H = canonicalOutput26930.moment H :=
  canonical_of_padded canonicalInput26930 canonicalOutput26930 (by decide) (by decide)
    ⟨false, false, canonicalPermutation14, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput26931 : ExponentCode := ⟨5, 5, ![![0, -1, 1, 0, 0], ![0, 0, 0, 1, -1], ![0, 1, 0, 0, -1], ![-1, 1, 1, 0, -1], ![1, -1, -2, -1, 3]]⟩

def canonicalOutput26931 : ExponentCode := normalNode8058

theorem canonicalSound26931 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26931.moment H = canonicalOutput26931.moment H :=
  canonical_of_padded canonicalInput26931 canonicalOutput26931 (by decide) (by decide)
    ⟨true, false, canonicalPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation169⟩ (by decide +kernel) hH

def canonicalInput26932 : ExponentCode := ⟨5, 5, ![![0, -1, 1, 0, 0], ![0, 0, 0, 1, -1], ![0, 1, 0, 0, -1], ![0, 1, 1, -1, -1], ![0, -1, -2, 0, 3]]⟩

def canonicalOutput26932 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2767⟩

theorem canonicalSound26932 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26932.moment H = canonicalOutput26932.moment H :=
  canonical_of_padded canonicalInput26932 canonicalOutput26932 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation170, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput26933 : ExponentCode := ⟨4, 5, ![![0, -1, 1, 0, 0], ![0, 0, 0, 2, -2], ![-1, 1, 0, 0, 0], ![1, 0, -1, -2, 2]]⟩

def canonicalOutput26933 : ExponentCode := normalNode10686

theorem canonicalSound26933 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26933.moment H = canonicalOutput26933.moment H :=
  canonical_of_padded canonicalInput26933 canonicalOutput26933 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput26934 : ExponentCode := ⟨4, 5, ![![0, -1, 1, 0, 0], ![0, 0, 0, 2, -2], ![0, 0, 1, -3, 2], ![0, 1, -2, 1, 0]]⟩

def canonicalOutput26934 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1296⟩

theorem canonicalSound26934 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26934.moment H = canonicalOutput26934.moment H :=
  canonical_of_padded canonicalInput26934 canonicalOutput26934 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput26935 : ExponentCode := ⟨4, 5, ![![0, -1, 1, 0, 0], ![0, 0, 0, 2, -2], ![0, 1, 0, 0, -1], ![0, 0, -1, -2, 3]]⟩

def canonicalOutput26935 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1221⟩

theorem canonicalSound26935 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26935.moment H = canonicalOutput26935.moment H :=
  canonical_of_padded canonicalInput26935 canonicalOutput26935 (by decide) (by decide)
    ⟨false, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput26936 : ExponentCode := ⟨5, 5, ![![0, -1, 1, 0, 0], ![0, 0, 1, 0, -1], ![-1, 1, -1, 2, -1], ![0, 1, 0, 0, -1], ![1, -1, -1, -2, 3]]⟩

def canonicalOutput26936 : ExponentCode := normalNode8056

theorem canonicalSound26936 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26936.moment H = canonicalOutput26936.moment H :=
  canonical_of_padded canonicalInput26936 canonicalOutput26936 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation198, canonicalPermutation45⟩ (by decide +kernel) hH

def canonicalInput26937 : ExponentCode := ⟨5, 5, ![![0, -1, 1, 0, 0], ![0, 0, 1, 0, -1], ![0, 1, -1, 1, -1], ![-1, 1, 0, 1, -1], ![1, -1, -1, -2, 3]]⟩

def canonicalOutput26937 : ExponentCode := normalNode8659

theorem canonicalSound26937 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26937.moment H = canonicalOutput26937.moment H :=
  canonical_of_padded canonicalInput26937 canonicalOutput26937 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation178, OAI.MUB6.Certificate.PairSemantics.permutation167⟩ (by decide +kernel) hH

def canonicalInput26938 : ExponentCode := ⟨5, 5, ![![0, -1, 1, 0, 0], ![0, 0, 1, 0, -1], ![0, 1, -1, 1, -1], ![0, 1, 0, 0, -1], ![0, -1, -1, -1, 3]]⟩

def canonicalOutput26938 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2531⟩

theorem canonicalSound26938 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26938.moment H = canonicalOutput26938.moment H :=
  canonical_of_padded canonicalInput26938 canonicalOutput26938 (by decide) (by decide)
    ⟨false, false, canonicalPermutation31, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput26939 : ExponentCode := ⟨6, 5, ![![0, -1, 1, 0, 0], ![1, -1, 0, 0, 0], ![0, 0, 0, 0, 0], ![-1, 2, -1, 0, 0], ![0, 0, 0, -3, 3], ![0, 0, 0, 3, -3]]⟩

def canonicalOutput26939 : ExponentCode := normalNode9567

theorem canonicalSound26939 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26939.moment H = canonicalOutput26939.moment H :=
  canonical_of_padded canonicalInput26939 canonicalOutput26939 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation231, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput26940 : ExponentCode := ⟨6, 5, ![![0, -1, 1, 0, 0], ![1, -1, 0, 0, 0], ![1, 0, -1, 0, 0], ![-2, 2, 0, 0, 0], ![0, 0, 0, -3, 3], ![0, 0, 0, 3, -3]]⟩

def canonicalOutput26940 : ExponentCode := normalNode10866

theorem canonicalSound26940 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26940.moment H = canonicalOutput26940.moment H :=
  canonical_of_padded canonicalInput26940 canonicalOutput26940 (by decide) (by decide)
    ⟨false, false, canonicalPermutation248, canonicalPermutation50⟩ (by decide +kernel) hH

def canonicalInput26941 : ExponentCode := ⟨6, 5, ![![0, -1, 1, 0, 0], ![1, -1, 0, 0, 0], ![1, 0, -1, 0, 0], ![-1, 2, -1, 0, 0], ![-1, 0, 1, -3, 3], ![0, 0, 0, 3, -3]]⟩

def canonicalOutput26941 : ExponentCode := normalNode5642

theorem canonicalSound26941 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26941.moment H = canonicalOutput26941.moment H :=
  canonical_of_padded canonicalInput26941 canonicalOutput26941 (by decide) (by decide)
    ⟨false, true, canonicalPermutation60, OAI.MUB6.Certificate.PairSemantics.permutation170⟩ (by decide +kernel) hH

def canonicalInput26942 : ExponentCode := ⟨6, 5, ![![0, -1, 1, 0, 0], ![1, -1, 0, 0, 0], ![1, 0, -1, 0, 0], ![-1, 2, -1, 0, 0], ![0, 0, 0, -3, 3], ![-1, 0, 1, 3, -3]]⟩

def canonicalOutput26942 : ExponentCode := normalNode5642

theorem canonicalSound26942 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26942.moment H = canonicalOutput26942.moment H :=
  canonical_of_padded canonicalInput26942 canonicalOutput26942 (by decide) (by decide)
    ⟨false, true, canonicalPermutation332, OAI.MUB6.Certificate.PairSemantics.permutation169⟩ (by decide +kernel) hH

def canonicalInput26943 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-3, 1, 2, 0, 0, 0], ![3, 0, -3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput26943 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node58⟩

theorem canonicalSound26943 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26943.moment H = canonicalOutput26943.moment H :=
  canonical_of_padded canonicalInput26943 canonicalOutput26943 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
