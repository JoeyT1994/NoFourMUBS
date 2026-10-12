import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes000
import NoFourMUBs.Step2.SOS.NormalizationNodes001
import NoFourMUBs.Step2.SOS.NormalizationNodes002
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes004
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes012
import NoFourMUBs.Step2.SOS.NormalizationNodes018
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput25792 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 1, 0], ![1, 0, 0, -1], ![0, 0, 0, 0], ![0, 0, -3, 3], ![-1, 2, 2, -3]]⟩

def canonicalOutput25792 : ExponentCode := normalNode10732

theorem canonicalSound25792 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25792.moment H = canonicalOutput25792.moment H :=
  canonical_of_padded canonicalInput25792 canonicalOutput25792 (by decide) (by decide)
    ⟨false, true, canonicalPermutation304, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25793 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 1, 0], ![1, 0, 0, -1], ![1, -1, 0, 0], ![-1, 1, 2, -2], ![-1, 2, -3, 2]]⟩

def canonicalOutput25793 : ExponentCode := normalNode6177

theorem canonicalSound25793 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25793.moment H = canonicalOutput25793.moment H :=
  canonical_of_padded canonicalInput25793 canonicalOutput25793 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput25794 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 1, 0], ![1, 0, 0, -1], ![1, 0, 0, -1], ![-2, 0, 3, -1], ![0, 2, -4, 2]]⟩

def canonicalOutput25794 : ExponentCode := normalNode3189

theorem canonicalSound25794 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25794.moment H = canonicalOutput25794.moment H :=
  canonical_of_padded canonicalInput25794 canonicalOutput25794 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation366, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput25795 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 1, 0], ![1, 0, 0, -1], ![1, 0, 0, -1], ![-1, 0, -3, 4], ![-1, 2, 2, -3]]⟩

def canonicalOutput25795 : ExponentCode := normalNode4817

theorem canonicalSound25795 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25795.moment H = canonicalOutput25795.moment H :=
  canonical_of_padded canonicalInput25795 canonicalOutput25795 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation367, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput25796 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 1, 0], ![1, 0, 0, -1], ![1, 0, 0, -1], ![-1, 0, 2, -1], ![-1, 2, -3, 2]]⟩

def canonicalOutput25796 : ExponentCode := normalNode4866

theorem canonicalSound25796 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25796.moment H = canonicalOutput25796.moment H :=
  canonical_of_padded canonicalInput25796 canonicalOutput25796 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation366, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput25797 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 1, 0], ![1, 0, 0, -1], ![1, 0, 0, -1], ![-1, 0, 3, -2], ![-1, 2, -4, 3]]⟩

def canonicalOutput25797 : ExponentCode := normalNode4731

theorem canonicalSound25797 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25797.moment H = canonicalOutput25797.moment H :=
  canonical_of_padded canonicalInput25797 canonicalOutput25797 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation366, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput25798 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 1, 0], ![1, 0, 0, -1], ![1, 0, 0, -1], ![-1, 1, 2, -2], ![-1, 1, -3, 3]]⟩

def canonicalOutput25798 : ExponentCode := normalNode10473

theorem canonicalSound25798 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25798.moment H = canonicalOutput25798.moment H :=
  canonical_of_padded canonicalInput25798 canonicalOutput25798 (by decide) (by decide)
    ⟨false, true, canonicalPermutation316, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25799 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 1, 0], ![1, 0, 0, -1], ![1, 0, 0, -1], ![0, 0, -3, 3], ![-2, 2, 2, -2]]⟩

def canonicalOutput25799 : ExponentCode := normalNode5773

theorem canonicalSound25799 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25799.moment H = canonicalOutput25799.moment H :=
  canonical_of_padded canonicalInput25799 canonicalOutput25799 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation367, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput25800 : ExponentCode := ⟨4, 4, ![![0, -1, 0, 1], ![0, -1, 2, -1], ![0, 0, -2, 2], ![0, 2, 0, -2]]⟩

def canonicalOutput25800 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node203⟩

theorem canonicalSound25800 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25800.moment H = canonicalOutput25800.moment H :=
  canonical_of_padded canonicalInput25800 canonicalOutput25800 (by decide) (by decide)
    ⟨false, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput25801 : ExponentCode := ⟨4, 4, ![![0, -1, 0, 1], ![0, -1, 3, -2], ![0, 0, -2, 2], ![0, 2, -1, -1]]⟩

def canonicalOutput25801 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node226⟩

theorem canonicalSound25801 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25801.moment H = canonicalOutput25801.moment H :=
  canonical_of_padded canonicalInput25801 canonicalOutput25801 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput25802 : ExponentCode := ⟨3, 4, ![![0, -1, 0, 1], ![0, -1, 4, -3], ![0, 2, -4, 2]]⟩

def canonicalOutput25802 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node59⟩

theorem canonicalSound25802 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25802.moment H = canonicalOutput25802.moment H :=
  canonical_of_padded canonicalInput25802 canonicalOutput25802 (by decide) (by decide)
    ⟨true, true, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput25803 : ExponentCode := ⟨5, 4, ![![0, -1, 0, 1], ![0, 0, -3, 3], ![-1, 1, 1, -1], ![0, 1, 0, -1], ![1, -1, 2, -2]]⟩

def canonicalOutput25803 : ExponentCode := normalNode11034

theorem canonicalSound25803 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25803.moment H = canonicalOutput25803.moment H :=
  canonical_of_padded canonicalInput25803 canonicalOutput25803 (by decide) (by decide)
    ⟨false, true, canonicalPermutation74, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25804 : ExponentCode := ⟨5, 4, ![![0, -1, 0, 1], ![0, 0, -3, 3], ![-1, 1, 1, -1], ![0, 1, 2, -3], ![1, -1, 0, 0]]⟩

def canonicalOutput25804 : ExponentCode := normalNode11136

theorem canonicalSound25804 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25804.moment H = canonicalOutput25804.moment H :=
  canonical_of_padded canonicalInput25804 canonicalOutput25804 (by decide) (by decide)
    ⟨false, true, canonicalPermutation74, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25805 : ExponentCode := ⟨5, 4, ![![0, -1, 0, 1], ![0, 0, -3, 3], ![-1, 1, 4, -4], ![0, 1, -1, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput25805 : ExponentCode := normalNode10934

theorem canonicalSound25805 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25805.moment H = canonicalOutput25805.moment H :=
  canonical_of_padded canonicalInput25805 canonicalOutput25805 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput25806 : ExponentCode := ⟨4, 4, ![![0, -1, 0, 1], ![0, 0, -3, 3], ![-1, 2, 2, -3], ![1, -1, 1, -1]]⟩

def canonicalOutput25806 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1072⟩

theorem canonicalSound25806 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25806.moment H = canonicalOutput25806.moment H :=
  canonical_of_padded canonicalInput25806 canonicalOutput25806 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput25807 : ExponentCode := ⟨4, 4, ![![0, -1, 0, 1], ![0, 0, -3, 3], ![-1, 2, 3, -4], ![1, -1, 0, 0]]⟩

def canonicalOutput25807 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1023⟩

theorem canonicalSound25807 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25807.moment H = canonicalOutput25807.moment H :=
  canonical_of_padded canonicalInput25807 canonicalOutput25807 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput25808 : ExponentCode := ⟨5, 4, ![![0, -1, 0, 1], ![0, 0, -3, 3], ![0, 0, 4, -4], ![-1, 2, -1, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput25808 : ExponentCode := normalNode11148

theorem canonicalSound25808 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25808.moment H = canonicalOutput25808.moment H :=
  canonical_of_padded canonicalInput25808 canonicalOutput25808 (by decide) (by decide)
    ⟨false, true, canonicalPermutation80, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25809 : ExponentCode := ⟨5, 4, ![![0, -1, 0, 1], ![0, 0, -3, 3], ![0, 0, 4, -4], ![0, 1, -1, 0], ![0, 0, 0, 0]]⟩

def canonicalOutput25809 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node290⟩

theorem canonicalSound25809 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25809.moment H = canonicalOutput25809.moment H :=
  canonical_of_padded canonicalInput25809 canonicalOutput25809 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25810 : ExponentCode := ⟨5, 4, ![![0, -1, 0, 1], ![0, 0, -3, 3], ![0, 1, 0, -1], ![-1, 1, 1, -1], ![1, -1, 2, -2]]⟩

def canonicalOutput25810 : ExponentCode := normalNode11034

theorem canonicalSound25810 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25810.moment H = canonicalOutput25810.moment H :=
  canonical_of_padded canonicalInput25810 canonicalOutput25810 (by decide) (by decide)
    ⟨false, true, canonicalPermutation80, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25811 : ExponentCode := ⟨5, 4, ![![0, -1, 0, 1], ![0, 0, -3, 3], ![0, 1, 0, -1], ![-1, 1, 3, -3], ![1, -1, 0, 0]]⟩

def canonicalOutput25811 : ExponentCode := normalNode11142

theorem canonicalSound25811 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25811.moment H = canonicalOutput25811.moment H :=
  canonical_of_padded canonicalInput25811 canonicalOutput25811 (by decide) (by decide)
    ⟨false, true, canonicalPermutation80, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25812 : ExponentCode := ⟨5, 4, ![![0, -1, 0, 1], ![0, 0, -3, 3], ![0, 1, 0, -1], ![0, 1, 0, -1], ![0, -1, 3, -2]]⟩

def canonicalOutput25812 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node1287⟩

theorem canonicalSound25812 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25812.moment H = canonicalOutput25812.moment H :=
  canonical_of_padded canonicalInput25812 canonicalOutput25812 (by decide) (by decide)
    ⟨false, true, canonicalPermutation35, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25813 : ExponentCode := ⟨5, 4, ![![0, -1, 0, 1], ![0, 0, -3, 3], ![0, 1, 0, -1], ![0, 1, 2, -3], ![0, -1, 1, 0]]⟩

def canonicalOutput25813 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node864⟩

theorem canonicalSound25813 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25813.moment H = canonicalOutput25813.moment H :=
  canonical_of_padded canonicalInput25813 canonicalOutput25813 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25814 : ExponentCode := ⟨4, 4, ![![0, -1, 0, 1], ![0, 0, -3, 3], ![0, 2, 1, -3], ![0, -1, 2, -1]]⟩

def canonicalOutput25814 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node187⟩

theorem canonicalSound25814 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25814.moment H = canonicalOutput25814.moment H :=
  canonical_of_padded canonicalInput25814 canonicalOutput25814 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25815 : ExponentCode := ⟨4, 4, ![![0, -1, 0, 1], ![0, 0, -3, 3], ![0, 2, 2, -4], ![0, -1, 1, 0]]⟩

def canonicalOutput25815 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node155⟩

theorem canonicalSound25815 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25815.moment H = canonicalOutput25815.moment H :=
  canonical_of_padded canonicalInput25815 canonicalOutput25815 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25816 : ExponentCode := ⟨4, 4, ![![0, -1, 0, 1], ![0, 0, -3, 3], ![0, 2, 3, -5], ![0, -1, 0, 1]]⟩

def canonicalOutput25816 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node129⟩

theorem canonicalSound25816 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25816.moment H = canonicalOutput25816.moment H :=
  canonical_of_padded canonicalInput25816 canonicalOutput25816 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25817 : ExponentCode := ⟨5, 4, ![![0, -1, 0, 1], ![0, 0, -2, 2], ![-1, 1, -1, 1], ![0, 1, 0, -1], ![1, -1, 3, -3]]⟩

def canonicalOutput25817 : ExponentCode := normalNode10967

theorem canonicalSound25817 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25817.moment H = canonicalOutput25817.moment H :=
  canonical_of_padded canonicalInput25817 canonicalOutput25817 (by decide) (by decide)
    ⟨false, true, canonicalPermutation74, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25818 : ExponentCode := ⟨4, 4, ![![0, -1, 0, 1], ![0, 0, -2, 2], ![-1, 2, -1, 0], ![1, -1, 3, -3]]⟩

def canonicalOutput25818 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node803⟩

theorem canonicalSound25818 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25818.moment H = canonicalOutput25818.moment H :=
  canonical_of_padded canonicalInput25818 canonicalOutput25818 (by decide) (by decide)
    ⟨true, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25819 : ExponentCode := ⟨4, 4, ![![0, -1, 0, 1], ![0, 0, -2, 2], ![-1, 2, 3, -4], ![1, -1, -1, 1]]⟩

def canonicalOutput25819 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node764⟩

theorem canonicalSound25819 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25819.moment H = canonicalOutput25819.moment H :=
  canonical_of_padded canonicalInput25819 canonicalOutput25819 (by decide) (by decide)
    ⟨true, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput25820 : ExponentCode := ⟨5, 4, ![![0, -1, 0, 1], ![0, 0, -2, 2], ![0, 1, -1, 0], ![-1, 1, 0, 0], ![1, -1, 3, -3]]⟩

def canonicalOutput25820 : ExponentCode := normalNode10979

theorem canonicalSound25820 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25820.moment H = canonicalOutput25820.moment H :=
  canonical_of_padded canonicalInput25820 canonicalOutput25820 (by decide) (by decide)
    ⟨false, true, canonicalPermutation80, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25821 : ExponentCode := ⟨5, 4, ![![0, -1, 0, 1], ![0, 0, -2, 2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![0, -1, 3, -2]]⟩

def canonicalOutput25821 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node869⟩

theorem canonicalSound25821 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25821.moment H = canonicalOutput25821.moment H :=
  canonical_of_padded canonicalInput25821 canonicalOutput25821 (by decide) (by decide)
    ⟨false, false, canonicalPermutation31, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput25822 : ExponentCode := ⟨4, 4, ![![0, -1, 0, 1], ![0, 0, -2, 2], ![0, 2, -1, -1], ![0, -1, 3, -2]]⟩

def canonicalOutput25822 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node226⟩

theorem canonicalSound25822 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25822.moment H = canonicalOutput25822.moment H :=
  canonical_of_padded canonicalInput25822 canonicalOutput25822 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput25823 : ExponentCode := ⟨4, 4, ![![0, -1, 0, 1], ![0, 0, -2, 2], ![0, 2, 2, -4], ![0, -1, 0, 1]]⟩

def canonicalOutput25823 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node145⟩

theorem canonicalSound25823 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25823.moment H = canonicalOutput25823.moment H :=
  canonical_of_padded canonicalInput25823 canonicalOutput25823 (by decide) (by decide)
    ⟨false, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput25824 : ExponentCode := ⟨4, 4, ![![0, -1, 0, 1], ![0, 0, -2, 2], ![0, 2, 3, -5], ![0, -1, -1, 2]]⟩

def canonicalOutput25824 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node127⟩

theorem canonicalSound25824 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25824.moment H = canonicalOutput25824.moment H :=
  canonical_of_padded canonicalInput25824 canonicalOutput25824 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25825 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![-1, 0, -1, 2], ![0, 0, -1, 1], ![-1, -1, 2, 0], ![2, 2, 1, -5]]⟩

def canonicalOutput25825 : ExponentCode := normalNode354

theorem canonicalSound25825 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25825.moment H = canonicalOutput25825.moment H :=
  canonical_of_padded canonicalInput25825 canonicalOutput25825 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation343, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25826 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![-1, 0, -1, 2], ![0, 0, -1, 1], ![-1, -1, 3, -1], ![2, 2, 0, -4]]⟩

def canonicalOutput25826 : ExponentCode := normalNode435

theorem canonicalSound25826 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25826.moment H = canonicalOutput25826.moment H :=
  canonical_of_padded canonicalInput25826 canonicalOutput25826 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation343, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25827 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![-1, 0, -1, 2], ![0, 0, -1, 1], ![-1, 2, 0, -1], ![2, -1, 3, -4]]⟩

def canonicalOutput25827 : ExponentCode := normalNode4765

theorem canonicalSound25827 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25827.moment H = canonicalOutput25827.moment H :=
  canonical_of_padded canonicalInput25827 canonicalOutput25827 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation344, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25828 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![-1, 0, -1, 2], ![0, 0, -1, 1], ![-1, 2, 1, -2], ![2, -1, 2, -3]]⟩

def canonicalOutput25828 : ExponentCode := normalNode4969

theorem canonicalSound25828 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25828.moment H = canonicalOutput25828.moment H :=
  canonical_of_padded canonicalInput25828 canonicalOutput25828 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation344, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25829 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![-1, 0, -1, 2], ![0, 1, -1, 0], ![-1, -1, 1, 1], ![2, 1, 2, -5]]⟩

def canonicalOutput25829 : ExponentCode := normalNode1020

theorem canonicalSound25829 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25829.moment H = canonicalOutput25829.moment H :=
  canonical_of_padded canonicalInput25829 canonicalOutput25829 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation377, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25830 : ExponentCode := ⟨5, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![-1, 0, -1, 2], ![0, 2, 3, -5], ![1, -1, -1, 1]]⟩

def canonicalOutput25830 : ExponentCode := normalNode10269

theorem canonicalSound25830 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25830.moment H = canonicalOutput25830.moment H :=
  canonical_of_padded canonicalInput25830 canonicalOutput25830 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25831 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![-1, 0, -1, 2], ![1, -1, 0, 0], ![-1, -1, 3, -1], ![1, 3, -1, -3]]⟩

def canonicalOutput25831 : ExponentCode := normalNode6046

theorem canonicalSound25831 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25831.moment H = canonicalOutput25831.moment H :=
  canonical_of_padded canonicalInput25831 canonicalOutput25831 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation377, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25832 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![-1, 0, -1, 2], ![1, -1, 0, 0], ![-1, 1, -1, 1], ![1, 1, 3, -5]]⟩

def canonicalOutput25832 : ExponentCode := normalNode7166

theorem canonicalSound25832 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25832.moment H = canonicalOutput25832.moment H :=
  canonical_of_padded canonicalInput25832 canonicalOutput25832 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation378, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25833 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![-1, 0, -1, 2], ![1, 0, -1, 0], ![-1, 3, 0, -2], ![1, -2, 3, -2]]⟩

def canonicalOutput25833 : ExponentCode := normalNode6170

theorem canonicalSound25833 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25833.moment H = canonicalOutput25833.moment H :=
  canonical_of_padded canonicalInput25833 canonicalOutput25833 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation374, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput25834 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![-1, 0, 1, 0], ![-1, -1, 2, 0], ![-1, 3, -1, -1], ![3, -1, -1, -1]]⟩

def canonicalOutput25834 : ExponentCode := normalNode7682

theorem canonicalSound25834 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25834.moment H = canonicalOutput25834.moment H :=
  canonical_of_padded canonicalInput25834 canonicalOutput25834 (by decide) (by decide)
    ⟨false, false, canonicalPermutation5, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput25835 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![-1, 0, 1, 0], ![0, -1, 2, -1], ![-2, 3, -1, 0], ![3, -1, -1, -1]]⟩

def canonicalOutput25835 : ExponentCode := normalNode7660

theorem canonicalSound25835 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25835.moment H = canonicalOutput25835.moment H :=
  canonical_of_padded canonicalInput25835 canonicalOutput25835 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation387, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput25836 : ExponentCode := ⟨5, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![-1, 0, 1, 0], ![0, 2, 2, -4], ![1, -1, -2, 2]]⟩

def canonicalOutput25836 : ExponentCode := normalNode10846

theorem canonicalSound25836 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25836.moment H = canonicalOutput25836.moment H :=
  canonical_of_padded canonicalInput25836 canonicalOutput25836 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25837 : ExponentCode := ⟨5, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![-1, 0, 2, -1], ![0, 2, 1, -3], ![1, -1, -2, 2]]⟩

def canonicalOutput25837 : ExponentCode := normalNode10898

theorem canonicalSound25837 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25837.moment H = canonicalOutput25837.moment H :=
  canonical_of_padded canonicalInput25837 canonicalOutput25837 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25838 : ExponentCode := ⟨5, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![-1, 0, 4, -3], ![0, 2, -3, 1], ![1, -1, 0, 0]]⟩

def canonicalOutput25838 : ExponentCode := normalNode9694

theorem canonicalSound25838 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25838.moment H = canonicalOutput25838.moment H :=
  canonical_of_padded canonicalInput25838 canonicalOutput25838 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput25839 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![-1, 1, -1, 1], ![-1, 2, 0, -1], ![-1, -1, 3, -1], ![3, -1, -1, -1]]⟩

def canonicalOutput25839 : ExponentCode := normalNode178

theorem canonicalSound25839 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25839.moment H = canonicalOutput25839.moment H :=
  canonical_of_padded canonicalInput25839 canonicalOutput25839 (by decide) (by decide)
    ⟨false, true, canonicalPermutation130, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput25840 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![-1, 1, -1, 1], ![-1, 2, 0, -1], ![-1, 0, 3, -2], ![3, -2, -1, 0]]⟩

def canonicalOutput25840 : ExponentCode := normalNode149

theorem canonicalSound25840 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25840.moment H = canonicalOutput25840.moment H :=
  canonical_of_padded canonicalInput25840 canonicalOutput25840 (by decide) (by decide)
    ⟨false, true, canonicalPermutation130, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput25841 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![-1, 1, -1, 1], ![0, 1, -1, 0], ![-1, -2, 2, 1], ![2, 1, 1, -4]]⟩

def canonicalOutput25841 : ExponentCode := normalNode1255

theorem canonicalSound25841 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25841.moment H = canonicalOutput25841.moment H :=
  canonical_of_padded canonicalInput25841 canonicalOutput25841 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation377, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25842 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![-1, 1, -1, 1], ![0, 1, -1, 0], ![-1, -1, 0, 2], ![2, 0, 3, -5]]⟩

def canonicalOutput25842 : ExponentCode := normalNode3055

theorem canonicalSound25842 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25842.moment H = canonicalOutput25842.moment H :=
  canonical_of_padded canonicalInput25842 canonicalOutput25842 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation377, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25843 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![-1, 1, -1, 1], ![0, 1, 0, -1], ![-1, 0, -1, 2], ![2, -1, 3, -4]]⟩

def canonicalOutput25843 : ExponentCode := normalNode4724

theorem canonicalSound25843 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25843.moment H = canonicalOutput25843.moment H :=
  canonical_of_padded canonicalInput25843 canonicalOutput25843 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation377, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25844 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![-1, 1, -1, 1], ![0, 1, 0, -1], ![2, -1, -2, 1], ![-1, 0, 4, -3]]⟩

def canonicalOutput25844 : ExponentCode := normalNode5088

theorem canonicalSound25844 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25844.moment H = canonicalOutput25844.moment H :=
  canonical_of_padded canonicalInput25844 canonicalOutput25844 (by decide) (by decide)
    ⟨false, true, canonicalPermutation89, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput25845 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![-1, 1, -1, 1], ![1, -2, 1, 0], ![2, 0, -1, -1], ![-2, 2, 2, -2]]⟩

def canonicalOutput25845 : ExponentCode := normalNode731

theorem canonicalSound25845 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25845.moment H = canonicalOutput25845.moment H :=
  canonical_of_padded canonicalInput25845 canonicalOutput25845 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation357, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput25846 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![-1, 1, -1, 1], ![1, -1, 0, 0], ![-1, 0, -1, 2], ![1, 1, 3, -5]]⟩

def canonicalOutput25846 : ExponentCode := normalNode7166

theorem canonicalSound25846 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25846.moment H = canonicalOutput25846.moment H :=
  canonical_of_padded canonicalInput25846 canonicalOutput25846 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation377, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25847 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![-1, 1, -1, 1], ![1, -1, 1, -1], ![2, -1, -1, 0], ![-2, 2, 2, -2]]⟩

def canonicalOutput25847 : ExponentCode := normalNode730

theorem canonicalSound25847 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25847.moment H = canonicalOutput25847.moment H :=
  canonical_of_padded canonicalInput25847 canonicalOutput25847 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation357, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput25848 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![-1, 1, -1, 1], ![1, 0, -1, 0], ![-1, -2, 2, 1], ![1, 2, 1, -4]]⟩

def canonicalOutput25848 : ExponentCode := normalNode6394

theorem canonicalSound25848 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25848.moment H = canonicalOutput25848.moment H :=
  canonical_of_padded canonicalInput25848 canonicalOutput25848 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation377, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25849 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![-1, 1, -1, 1], ![1, 0, -1, 0], ![-1, -1, 0, 2], ![1, 1, 3, -5]]⟩

def canonicalOutput25849 : ExponentCode := normalNode7155

theorem canonicalSound25849 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25849.moment H = canonicalOutput25849.moment H :=
  canonical_of_padded canonicalInput25849 canonicalOutput25849 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation377, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25850 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![-1, 1, -1, 1], ![1, 0, -1, 0], ![-1, -1, 1, 1], ![1, 1, 2, -4]]⟩

def canonicalOutput25850 : ExponentCode := normalNode7301

theorem canonicalSound25850 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25850.moment H = canonicalOutput25850.moment H :=
  canonical_of_padded canonicalInput25850 canonicalOutput25850 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation377, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25851 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![-1, 1, 0, 0], ![1, -1, 0, 0], ![-1, 1, -2, 2], ![1, 0, 3, -4]]⟩

def canonicalOutput25851 : ExponentCode := normalNode9624

theorem canonicalSound25851 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25851.moment H = canonicalOutput25851.moment H :=
  canonical_of_padded canonicalInput25851 canonicalOutput25851 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation377, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25852 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![-1, 1, 0, 0], ![1, 0, 0, -1], ![-1, 1, -2, 2], ![1, -1, 3, -3]]⟩

def canonicalOutput25852 : ExponentCode := normalNode10478

theorem canonicalSound25852 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25852.moment H = canonicalOutput25852.moment H :=
  canonical_of_padded canonicalInput25852 canonicalOutput25852 (by decide) (by decide)
    ⟨false, true, canonicalPermutation284, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25853 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![-1, 1, 0, 0], ![1, 0, 0, -1], ![1, 1, -3, 1], ![-1, -1, 4, -2]]⟩

def canonicalOutput25853 : ExponentCode := normalNode7300

theorem canonicalSound25853 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25853.moment H = canonicalOutput25853.moment H :=
  canonical_of_padded canonicalInput25853 canonicalOutput25853 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation310, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput25854 : ExponentCode := ⟨4, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![-1, 2, -3, 2], ![1, -1, 4, -4]]⟩

def canonicalOutput25854 : ExponentCode := normalNode7463

theorem canonicalSound25854 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25854.moment H = canonicalOutput25854.moment H :=
  canonical_of_padded canonicalInput25854 canonicalOutput25854 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput25855 : ExponentCode := ⟨4, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![-1, 2, 3, -4], ![1, -1, -2, 2]]⟩

def canonicalOutput25855 : ExponentCode := normalNode7455

theorem canonicalSound25855 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25855.moment H = canonicalOutput25855.moment H :=
  canonical_of_padded canonicalInput25855 canonicalOutput25855 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
