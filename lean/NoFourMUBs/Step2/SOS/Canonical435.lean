import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes002
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes005
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes008
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes012
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes018
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput27840 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, 0, -1], ![-2, 1, 2, -1], ![1, -3, 1, 1]]⟩

def canonicalOutput27840 : ExponentCode := normalNode2479

theorem canonicalSound27840 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27840.moment H = canonicalOutput27840.moment H :=
  canonical_of_padded canonicalInput27840 canonicalOutput27840 (by decide) (by decide)
    ⟨false, false, canonicalPermutation119, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput27841 : ExponentCode := ⟨4, 4, ![![0, 0, -2, 2], ![0, 1, -1, 0], ![0, 1, 1, -2], ![0, -2, 2, 0]]⟩

def canonicalOutput27841 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node203⟩

theorem canonicalSound27841 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27841.moment H = canonicalOutput27841.moment H :=
  canonical_of_padded canonicalInput27841 canonicalOutput27841 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput27842 : ExponentCode := ⟨4, 4, ![![0, 0, -2, 2], ![0, 1, -1, 0], ![0, 1, 2, -3], ![0, -2, 1, 1]]⟩

def canonicalOutput27842 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node226⟩

theorem canonicalSound27842 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27842.moment H = canonicalOutput27842.moment H :=
  canonical_of_padded canonicalInput27842 canonicalOutput27842 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27843 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-2, 0, 0, 2], ![0, 1, 1, -2], ![1, -1, 2, -2]]⟩

def canonicalOutput27843 : ExponentCode := normalNode4030

theorem canonicalSound27843 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27843.moment H = canonicalOutput27843.moment H :=
  canonical_of_padded canonicalInput27843 canonicalOutput27843 (by decide) (by decide)
    ⟨false, false, canonicalPermutation287, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27844 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-2, 0, 1, 1], ![0, -1, 2, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput27844 : ExponentCode := normalNode4272

theorem canonicalSound27844 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27844.moment H = canonicalOutput27844.moment H :=
  canonical_of_padded canonicalInput27844 canonicalOutput27844 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27845 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-2, 0, 1, 1], ![0, 1, 1, -2], ![1, -1, 1, -1]]⟩

def canonicalOutput27845 : ExponentCode := normalNode4431

theorem canonicalSound27845 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27845.moment H = canonicalOutput27845.moment H :=
  canonical_of_padded canonicalInput27845 canonicalOutput27845 (by decide) (by decide)
    ⟨false, false, canonicalPermutation287, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27846 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-2, 0, 1, 1], ![1, -2, 1, 0], ![0, 2, 1, -3]]⟩

def canonicalOutput27846 : ExponentCode := normalNode4434

theorem canonicalSound27846 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27846.moment H = canonicalOutput27846.moment H :=
  canonical_of_padded canonicalInput27846 canonicalOutput27846 (by decide) (by decide)
    ⟨false, false, canonicalPermutation320, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27847 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-2, 0, 2, 0], ![0, -2, 1, 1], ![1, 2, 0, -3]]⟩

def canonicalOutput27847 : ExponentCode := normalNode3762

theorem canonicalSound27847 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27847.moment H = canonicalOutput27847.moment H :=
  canonical_of_padded canonicalInput27847 canonicalOutput27847 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27848 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-2, 0, 2, 0], ![1, -2, 0, 1], ![0, 2, 1, -3]]⟩

def canonicalOutput27848 : ExponentCode := normalNode3707

theorem canonicalSound27848 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27848.moment H = canonicalOutput27848.moment H :=
  canonical_of_padded canonicalInput27848 canonicalOutput27848 (by decide) (by decide)
    ⟨false, false, canonicalPermutation284, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput27849 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-2, 1, 0, 1], ![0, -1, 2, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput27849 : ExponentCode := normalNode5417

theorem canonicalSound27849 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27849.moment H = canonicalOutput27849.moment H :=
  canonical_of_padded canonicalInput27849 canonicalOutput27849 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27850 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-2, 1, 0, 1], ![0, 1, 1, -2], ![1, -2, 2, -1]]⟩

def canonicalOutput27850 : ExponentCode := normalNode4169

theorem canonicalSound27850 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27850.moment H = canonicalOutput27850.moment H :=
  canonical_of_padded canonicalInput27850 canonicalOutput27850 (by decide) (by decide)
    ⟨false, false, canonicalPermutation287, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput27851 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-2, 1, 0, 1], ![1, -2, 1, 0], ![0, 1, 2, -3]]⟩

def canonicalOutput27851 : ExponentCode := normalNode4170

theorem canonicalSound27851 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27851.moment H = canonicalOutput27851.moment H :=
  canonical_of_padded canonicalInput27851 canonicalOutput27851 (by decide) (by decide)
    ⟨false, false, canonicalPermutation155, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput27852 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-2, 1, 0, 1], ![1, 1, 0, -2], ![0, -2, 3, -1]]⟩

def canonicalOutput27852 : ExponentCode := normalNode4171

theorem canonicalSound27852 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27852.moment H = canonicalOutput27852.moment H :=
  canonical_of_padded canonicalInput27852 canonicalOutput27852 (by decide) (by decide)
    ⟨false, false, canonicalPermutation155, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput27853 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-2, 1, 1, 0], ![0, -2, 1, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput27853 : ExponentCode := normalNode4483

theorem canonicalSound27853 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27853.moment H = canonicalOutput27853.moment H :=
  canonical_of_padded canonicalInput27853 canonicalOutput27853 (by decide) (by decide)
    ⟨false, false, canonicalPermutation343, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput27854 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-2, 1, 1, 0], ![1, -2, 0, 1], ![0, 1, 2, -3]]⟩

def canonicalOutput27854 : ExponentCode := normalNode4147

theorem canonicalSound27854 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27854.moment H = canonicalOutput27854.moment H :=
  canonical_of_padded canonicalInput27854 canonicalOutput27854 (by decide) (by decide)
    ⟨false, false, canonicalPermutation284, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput27855 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-2, 2, 0, 0], ![1, -2, 0, 1], ![0, 0, 3, -3]]⟩

def canonicalOutput27855 : ExponentCode := normalNode3727

theorem canonicalSound27855 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27855.moment H = canonicalOutput27855.moment H :=
  canonical_of_padded canonicalInput27855 canonicalOutput27855 (by decide) (by decide)
    ⟨false, false, canonicalPermutation284, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput27856 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-1, -1, 0, 2], ![-1, 0, 2, -1], ![1, 1, 1, -3]]⟩

def canonicalOutput27856 : ExponentCode := normalNode7725

theorem canonicalSound27856 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27856.moment H = canonicalOutput27856.moment H :=
  canonical_of_padded canonicalInput27856 canonicalOutput27856 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation335, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput27857 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-1, -1, 0, 2], ![1, 1, 0, -2], ![-1, 0, 3, -2]]⟩

def canonicalOutput27857 : ExponentCode := normalNode8814

theorem canonicalSound27857 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27857.moment H = canonicalOutput27857.moment H :=
  canonical_of_padded canonicalInput27857 canonicalOutput27857 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation279, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput27858 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-1, -1, 1, 1], ![-1, -1, 2, 0], ![1, 2, 0, -3]]⟩

def canonicalOutput27858 : ExponentCode := normalNode6675

theorem canonicalSound27858 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27858.moment H = canonicalOutput27858.moment H :=
  canonical_of_padded canonicalInput27858 canonicalOutput27858 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation358, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27859 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-1, -1, 1, 1], ![-1, 0, 2, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput27859 : ExponentCode := normalNode8815

theorem canonicalSound27859 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27859.moment H = canonicalOutput27859.moment H :=
  canonical_of_padded canonicalInput27859 canonicalOutput27859 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation335, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput27860 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-1, -1, 1, 1], ![-1, 1, 1, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput27860 : ExponentCode := normalNode9328

theorem canonicalSound27860 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27860.moment H = canonicalOutput27860.moment H :=
  canonical_of_padded canonicalInput27860 canonicalOutput27860 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27861 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-1, -1, 1, 1], ![-1, 2, 0, -1], ![1, -1, 2, -2]]⟩

def canonicalOutput27861 : ExponentCode := normalNode6852

theorem canonicalSound27861 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27861.moment H = canonicalOutput27861.moment H :=
  canonical_of_padded canonicalInput27861 canonicalOutput27861 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation357, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput27862 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-1, -1, 1, 1], ![1, -1, 1, -1], ![-1, 2, 1, -2]]⟩

def canonicalOutput27862 : ExponentCode := normalNode6878

theorem canonicalSound27862 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27862.moment H = canonicalOutput27862.moment H :=
  canonical_of_padded canonicalInput27862 canonicalOutput27862 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation378, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput27863 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-1, 1, 1, -1], ![1, 1, 0, -2], ![-1, -2, 2, 1]]⟩

def canonicalOutput27863 : ExponentCode := normalNode6868

theorem canonicalSound27863 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27863.moment H = canonicalOutput27863.moment H :=
  canonical_of_padded canonicalInput27863 canonicalOutput27863 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27864 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-1, 2, 0, -1], ![1, 0, 1, -2], ![-1, -2, 2, 1]]⟩

def canonicalOutput27864 : ExponentCode := normalNode6901

theorem canonicalSound27864 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27864.moment H = canonicalOutput27864.moment H :=
  canonical_of_padded canonicalInput27864 canonicalOutput27864 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27865 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 1, -1, 0], ![1, -1, 0, 0], ![0, -2, 1, 1], ![1, 0, 1, -2], ![-2, 2, 1, -1]]⟩

def canonicalOutput27865 : ExponentCode := normalNode2707

theorem canonicalSound27865 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27865.moment H = canonicalOutput27865.moment H :=
  canonical_of_padded canonicalInput27865 canonicalOutput27865 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation344, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput27866 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 1, -1, 0], ![1, -1, 0, 0], ![0, 1, 1, -2], ![1, -2, 0, 1], ![-2, 1, 2, -1]]⟩

def canonicalOutput27866 : ExponentCode := normalNode2232

theorem canonicalSound27866 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27866.moment H = canonicalOutput27866.moment H :=
  canonical_of_padded canonicalInput27866 canonicalOutput27866 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation377, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput27867 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 1, -1, 0], ![1, -1, 0, 0], ![0, 1, 1, -2], ![1, 0, 1, -2], ![-2, -1, 1, 2]]⟩

def canonicalOutput27867 : ExponentCode := normalNode2603

theorem canonicalSound27867 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27867.moment H = canonicalOutput27867.moment H :=
  canonical_of_padded canonicalInput27867 canonicalOutput27867 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation310, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27868 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-2, 0, 1, 1], ![0, 1, 2, -3]]⟩

def canonicalOutput27868 : ExponentCode := normalNode4432

theorem canonicalSound27868 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27868.moment H = canonicalOutput27868.moment H :=
  canonical_of_padded canonicalInput27868 canonicalOutput27868 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation262, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27869 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-2, 1, -1, 2], ![0, 0, 4, -4]]⟩

def canonicalOutput27869 : ExponentCode := normalNode5170

theorem canonicalSound27869 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27869.moment H = canonicalOutput27869.moment H :=
  canonical_of_padded canonicalInput27869 canonicalOutput27869 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation275, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27870 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-2, -1, 1, 2], ![0, 1, 2, -3]]⟩

def canonicalOutput27870 : ExponentCode := normalNode2606

theorem canonicalSound27870 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27870.moment H = canonicalOutput27870.moment H :=
  canonical_of_padded canonicalInput27870 canonicalOutput27870 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation262, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27871 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, -2, 2, 1], ![-1, 2, 1, -2]]⟩

def canonicalOutput27871 : ExponentCode := normalNode6889

theorem canonicalSound27871 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27871.moment H = canonicalOutput27871.moment H :=
  canonical_of_padded canonicalInput27871 canonicalOutput27871 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation399, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput27872 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-2, 0, 1, 1], ![0, -2, 1, 1], ![1, 1, 2, -4]]⟩

def canonicalOutput27872 : ExponentCode := normalNode4192

theorem canonicalSound27872 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27872.moment H = canonicalOutput27872.moment H :=
  canonical_of_padded canonicalInput27872 canonicalOutput27872 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27873 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 1, -1, 0], ![1, 0, -1, 0], ![0, 1, 1, -2], ![-2, -1, 1, 2], ![1, -1, 2, -2]]⟩

def canonicalOutput27873 : ExponentCode := normalNode2604

theorem canonicalSound27873 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27873.moment H = canonicalOutput27873.moment H :=
  canonical_of_padded canonicalInput27873 canonicalOutput27873 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation261, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27874 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 1, -1, 0], ![1, 0, -1, 0], ![0, 1, 1, -2], ![1, 0, 1, -2], ![-2, -2, 2, 2]]⟩

def canonicalOutput27874 : ExponentCode := normalNode810

theorem canonicalSound27874 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27874.moment H = canonicalOutput27874.moment H :=
  canonical_of_padded canonicalInput27874 canonicalOutput27874 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation310, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27875 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 0, 0, -1], ![-2, 2, 1, -1], ![0, -3, 2, 1]]⟩

def canonicalOutput27875 : ExponentCode := normalNode2712

theorem canonicalSound27875 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27875.moment H = canonicalOutput27875.moment H :=
  canonical_of_padded canonicalInput27875 canonicalOutput27875 (by decide) (by decide)
    ⟨false, false, canonicalPermutation137, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput27876 : ExponentCode := ⟨4, 4, ![![0, 0, -2, 2], ![0, 1, 0, -1], ![-1, 1, 2, -2], ![1, -2, 0, 1]]⟩

def canonicalOutput27876 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1316⟩

theorem canonicalSound27876 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27876.moment H = canonicalOutput27876.moment H :=
  canonical_of_padded canonicalInput27876 canonicalOutput27876 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput27877 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-2, 0, 0, 2], ![0, -1, 2, -1], ![2, -1, 0, -1]]⟩

def canonicalOutput27877 : ExponentCode := normalNode3732

theorem canonicalSound27877 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27877.moment H = canonicalOutput27877.moment H :=
  canonical_of_padded canonicalInput27877 canonicalOutput27877 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation241, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput27878 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-2, 0, 0, 2], ![2, -1, -1, 0], ![0, -1, 3, -2]]⟩

def canonicalOutput27878 : ExponentCode := normalNode3997

theorem canonicalSound27878 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27878.moment H = canonicalOutput27878.moment H :=
  canonical_of_padded canonicalInput27878 canonicalOutput27878 (by decide) (by decide)
    ⟨false, false, canonicalPermutation142, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27879 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-2, 0, 1, 1], ![0, -2, 2, 0], ![2, 0, -1, -1]]⟩

def canonicalOutput27879 : ExponentCode := normalNode3763

theorem canonicalSound27879 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27879.moment H = canonicalOutput27879.moment H :=
  canonical_of_padded canonicalInput27879 canonicalOutput27879 (by decide) (by decide)
    ⟨false, false, canonicalPermutation331, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput27880 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-2, 0, 2, 0], ![0, -2, 1, 1], ![2, 0, -1, -1]]⟩

def canonicalOutput27880 : ExponentCode := normalNode3761

theorem canonicalSound27880 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27880.moment H = canonicalOutput27880.moment H :=
  canonical_of_padded canonicalInput27880 canonicalOutput27880 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27881 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-2, 0, 2, 0], ![0, -1, -1, 2], ![2, -1, 1, -2]]⟩

def canonicalOutput27881 : ExponentCode := normalNode4648

theorem canonicalSound27881 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27881.moment H = canonicalOutput27881.moment H :=
  canonical_of_padded canonicalInput27881 canonicalOutput27881 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27882 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-1, -1, 0, 2], ![2, -1, -1, 0], ![-1, 0, 3, -2]]⟩

def canonicalOutput27882 : ExponentCode := normalNode5629

theorem canonicalSound27882 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27882.moment H = canonicalOutput27882.moment H :=
  canonical_of_padded canonicalInput27882 canonicalOutput27882 (by decide) (by decide)
    ⟨false, true, canonicalPermutation164, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27883 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-1, -1, 1, 1], ![-1, -1, 2, 0], ![2, 0, -1, -1]]⟩

def canonicalOutput27883 : ExponentCode := normalNode4319

theorem canonicalSound27883 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27883.moment H = canonicalOutput27883.moment H :=
  canonical_of_padded canonicalInput27883 canonicalOutput27883 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation338, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27884 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-1, -1, 1, 1], ![-1, 0, -1, 2], ![2, -1, 2, -3]]⟩

def canonicalOutput27884 : ExponentCode := normalNode4813

theorem canonicalSound27884 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27884.moment H = canonicalOutput27884.moment H :=
  canonical_of_padded canonicalInput27884 canonicalOutput27884 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation338, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27885 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-1, 0, -1, 2], ![2, -2, 0, 0], ![-1, 0, 3, -2]]⟩

def canonicalOutput27885 : ExponentCode := normalNode5939

theorem canonicalSound27885 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27885.moment H = canonicalOutput27885.moment H :=
  canonical_of_padded canonicalInput27885 canonicalOutput27885 (by decide) (by decide)
    ⟨false, false, canonicalPermutation139, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput27886 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 1, 0, -1], ![0, 1, 0, -1], ![0, -2, 0, 2], ![2, 0, -1, -1], ![-2, 0, 3, -1]]⟩

def canonicalOutput27886 : ExponentCode := normalNode3814

theorem canonicalSound27886 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27886.moment H = canonicalOutput27886.moment H :=
  canonical_of_padded canonicalInput27886 canonicalOutput27886 (by decide) (by decide)
    ⟨false, false, canonicalPermutation171, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput27887 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-2, 0, -1, 3], ![1, -1, 3, -3]]⟩

def canonicalOutput27887 : ExponentCode := normalNode3559

theorem canonicalSound27887 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27887.moment H = canonicalOutput27887.moment H :=
  canonical_of_padded canonicalInput27887 canonicalOutput27887 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27888 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, -1, -2, 2], ![-2, 0, 4, -2]]⟩

def canonicalOutput27888 : ExponentCode := normalNode3298

theorem canonicalSound27888 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27888.moment H = canonicalOutput27888.moment H :=
  canonical_of_padded canonicalInput27888 canonicalOutput27888 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27889 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, -1, 0, 3], ![1, -1, 3, -3]]⟩

def canonicalOutput27889 : ExponentCode := normalNode1930

theorem canonicalSound27889 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27889.moment H = canonicalOutput27889.moment H :=
  canonical_of_padded canonicalInput27889 canonicalOutput27889 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation259, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27890 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, -1, 1, 2], ![1, -1, 2, -2]]⟩

def canonicalOutput27890 : ExponentCode := normalNode2609

theorem canonicalSound27890 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27890.moment H = canonicalOutput27890.moment H :=
  canonical_of_padded canonicalInput27890 canonicalOutput27890 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation259, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27891 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, 0, 0, 2], ![1, -2, 3, -2]]⟩

def canonicalOutput27891 : ExponentCode := normalNode4033

theorem canonicalSound27891 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27891.moment H = canonicalOutput27891.moment H :=
  canonical_of_padded canonicalInput27891 canonicalOutput27891 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation259, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27892 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, 0, 1, 1], ![1, -2, 2, -1]]⟩

def canonicalOutput27892 : ExponentCode := normalNode4438

theorem canonicalSound27892 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27892.moment H = canonicalOutput27892.moment H :=
  canonical_of_padded canonicalInput27892 canonicalOutput27892 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation259, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27893 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, 1, 2, -1], ![1, -3, 1, 1]]⟩

def canonicalOutput27893 : ExponentCode := normalNode2420

theorem canonicalSound27893 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27893.moment H = canonicalOutput27893.moment H :=
  canonical_of_padded canonicalInput27893 canonicalOutput27893 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation280, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput27894 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 2, -3], ![-2, -2, 1, 3]]⟩

def canonicalOutput27894 : ExponentCode := normalNode575

theorem canonicalSound27894 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27894.moment H = canonicalOutput27894.moment H :=
  canonical_of_padded canonicalInput27894 canonicalOutput27894 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation324, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput27895 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![-2, 0, -1, 3], ![1, -2, 3, -2]]⟩

def canonicalOutput27895 : ExponentCode := normalNode3558

theorem canonicalSound27895 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27895.moment H = canonicalOutput27895.moment H :=
  canonical_of_padded canonicalInput27895 canonicalOutput27895 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation259, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27896 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, -1, -2, 2], ![-2, -1, 4, -1]]⟩

def canonicalOutput27896 : ExponentCode := normalNode1395

theorem canonicalSound27896 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27896.moment H = canonicalOutput27896.moment H :=
  canonical_of_padded canonicalInput27896 canonicalOutput27896 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation309, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27897 : ExponentCode := ⟨4, 4, ![![0, 0, -2, 2], ![0, 1, 0, -1], ![0, 1, 1, -2], ![0, -2, 1, 1]]⟩

def canonicalOutput27897 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node210⟩

theorem canonicalSound27897 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27897.moment H = canonicalOutput27897.moment H :=
  canonical_of_padded canonicalInput27897 canonicalOutput27897 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput27898 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-1, 0, 2, -1], ![-1, -1, -1, 3], ![1, 1, 1, -3]]⟩

def canonicalOutput27898 : ExponentCode := normalNode7705

theorem canonicalSound27898 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27898.moment H = canonicalOutput27898.moment H :=
  canonical_of_padded canonicalInput27898 canonicalOutput27898 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation333, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput27899 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-1, 0, 2, -1], ![-1, 1, -2, 2], ![1, -1, 2, -2]]⟩

def canonicalOutput27899 : ExponentCode := normalNode10202

theorem canonicalSound27899 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27899.moment H = canonicalOutput27899.moment H :=
  canonical_of_padded canonicalInput27899 canonicalOutput27899 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation249, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27900 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-1, 1, 1, -1], ![-1, -1, -1, 3], ![1, 0, 2, -3]]⟩

def canonicalOutput27900 : ExponentCode := normalNode7789

theorem canonicalSound27900 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27900.moment H = canonicalOutput27900.moment H :=
  canonical_of_padded canonicalInput27900 canonicalOutput27900 (by decide) (by decide)
    ⟨false, false, canonicalPermutation191, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput27901 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-2, 0, -1, 3], ![0, 1, 3, -4]]⟩

def canonicalOutput27901 : ExponentCode := normalNode3561

theorem canonicalSound27901 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27901.moment H = canonicalOutput27901.moment H :=
  canonical_of_padded canonicalInput27901 canonicalOutput27901 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation262, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27902 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-2, -1, 0, 3], ![0, 1, 3, -4]]⟩

def canonicalOutput27902 : ExponentCode := normalNode1931

theorem canonicalSound27902 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27902.moment H = canonicalOutput27902.moment H :=
  canonical_of_padded canonicalInput27902 canonicalOutput27902 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation262, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27903 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-2, -1, 1, 2], ![0, 1, 2, -3]]⟩

def canonicalOutput27903 : ExponentCode := normalNode2610

theorem canonicalSound27903 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27903.moment H = canonicalOutput27903.moment H :=
  canonical_of_padded canonicalInput27903 canonicalOutput27903 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation262, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
