import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes000
import NoFourMUBs.Step2.SOS.NormalizationNodes001
import NoFourMUBs.Step2.SOS.NormalizationNodes002
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes004
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes018
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes21
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes38
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes40
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes41
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput17152 : ExponentCode := ⟨6, 4, ![![-1, -1, 0, 2], ![0, -1, 1, 0], ![1, 0, 0, -1], ![1, 0, 0, -1], ![0, 0, -3, 3], ![-1, 2, 2, -3]]⟩

def canonicalOutput17152 : ExponentCode := normalNode4814

theorem canonicalSound17152 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17152.moment H = canonicalOutput17152.moment H :=
  canonical_of_padded canonicalInput17152 canonicalOutput17152 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation367, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput17153 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, -1, 2, -1], ![0, 0, -2, 2], ![1, 2, 0, -3]]⟩

def canonicalOutput17153 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node804⟩

theorem canonicalSound17153 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17153.moment H = canonicalOutput17153.moment H :=
  canonical_of_padded canonicalInput17153 canonicalOutput17153 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17154 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, -1, 2, -1], ![0, 1, -3, 2], ![1, 1, 1, -3]]⟩

def canonicalOutput17154 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node948⟩

theorem canonicalSound17154 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17154.moment H = canonicalOutput17154.moment H :=
  canonical_of_padded canonicalInput17154 canonicalOutput17154 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17155 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, -1, 2, -1], ![0, 1, 2, -3], ![1, 1, -4, 2]]⟩

def canonicalOutput17155 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node900⟩

theorem canonicalSound17155 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17155.moment H = canonicalOutput17155.moment H :=
  canonical_of_padded canonicalInput17155 canonicalOutput17155 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput17156 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, -1, 2, -1], ![0, 3, -3, 0], ![1, -1, 1, -1]]⟩

def canonicalOutput17156 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1352⟩

theorem canonicalSound17156 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17156.moment H = canonicalOutput17156.moment H :=
  canonical_of_padded canonicalInput17156 canonicalOutput17156 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput17157 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, -1, 2, -1], ![0, 3, -2, -1], ![1, -1, 0, 0]]⟩

def canonicalOutput17157 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node946⟩

theorem canonicalSound17157 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17157.moment H = canonicalOutput17157.moment H :=
  canonical_of_padded canonicalInput17157 canonicalOutput17157 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation161, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput17158 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, -1, 2, -1], ![0, 3, -1, -2], ![1, -1, -1, 1]]⟩

def canonicalOutput17158 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1249⟩

theorem canonicalSound17158 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17158.moment H = canonicalOutput17158.moment H :=
  canonical_of_padded canonicalInput17158 canonicalOutput17158 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput17159 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, -1, 2, -1], ![1, 0, -3, 2], ![0, 2, 1, -3]]⟩

def canonicalOutput17159 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1011⟩

theorem canonicalSound17159 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17159.moment H = canonicalOutput17159.moment H :=
  canonical_of_padded canonicalInput17159 canonicalOutput17159 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17160 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, -1, 2, -1], ![1, 0, -2, 1], ![0, 2, 0, -2]]⟩

def canonicalOutput17160 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1010⟩

theorem canonicalSound17160 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17160.moment H = canonicalOutput17160.moment H :=
  canonical_of_padded canonicalInput17160 canonicalOutput17160 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17161 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, -1, 2, -1], ![1, 1, -3, 1], ![0, 1, 1, -2]]⟩

def canonicalOutput17161 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node943⟩

theorem canonicalSound17161 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17161.moment H = canonicalOutput17161.moment H :=
  canonical_of_padded canonicalInput17161 canonicalOutput17161 (by decide) (by decide)
    ⟨false, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput17162 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, -1, 3, -2], ![0, 0, -2, 2], ![1, 2, -1, -2]]⟩

def canonicalOutput17162 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node841⟩

theorem canonicalSound17162 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17162.moment H = canonicalOutput17162.moment H :=
  canonical_of_padded canonicalInput17162 canonicalOutput17162 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17163 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![0, -1, 3, -2], ![0, 1, -1, 0], ![0, 1, -2, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput17163 : ExponentCode := normalNode9026

theorem canonicalSound17163 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17163.moment H = canonicalOutput17163.moment H :=
  canonical_of_padded canonicalInput17163 canonicalOutput17163 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17164 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![0, -1, 3, -2], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput17164 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2676⟩

theorem canonicalSound17164 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17164.moment H = canonicalOutput17164.moment H :=
  canonical_of_padded canonicalInput17164 canonicalOutput17164 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput17165 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, -1, 3, -2], ![0, 1, -1, 0], ![1, 1, -2, 0]]⟩

def canonicalOutput17165 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node805⟩

theorem canonicalSound17165 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17165.moment H = canonicalOutput17165.moment H :=
  canonical_of_padded canonicalInput17165 canonicalOutput17165 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput17166 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, -1, 3, -2], ![0, 1, 0, -1], ![1, 1, -3, 1]]⟩

def canonicalOutput17166 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node937⟩

theorem canonicalSound17166 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17166.moment H = canonicalOutput17166.moment H :=
  canonical_of_padded canonicalInput17166 canonicalOutput17166 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput17167 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, -1, 3, -2], ![0, 1, 1, -2], ![1, 1, -4, 2]]⟩

def canonicalOutput17167 : ExponentCode := normalNode7419

theorem canonicalSound17167 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17167.moment H = canonicalOutput17167.moment H :=
  canonical_of_padded canonicalInput17167 canonicalOutput17167 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput17168 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, -1, 3, -2], ![0, 2, -2, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput17168 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node807⟩

theorem canonicalSound17168 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17168.moment H = canonicalOutput17168.moment H :=
  canonical_of_padded canonicalInput17168 canonicalOutput17168 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput17169 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, -1, 3, -2], ![1, -1, -2, 2], ![0, 3, -1, -2]]⟩

def canonicalOutput17169 : ExponentCode := normalNode9033

theorem canonicalSound17169 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17169.moment H = canonicalOutput17169.moment H :=
  canonical_of_padded canonicalInput17169 canonicalOutput17169 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17170 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, -1, 3, -2], ![1, 0, -3, 2], ![0, 2, 0, -2]]⟩

def canonicalOutput17170 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1017⟩

theorem canonicalSound17170 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17170.moment H = canonicalOutput17170.moment H :=
  canonical_of_padded canonicalInput17170 canonicalOutput17170 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17171 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, -1, 3, -2], ![1, 0, -2, 1], ![0, 2, -1, -1]]⟩

def canonicalOutput17171 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1016⟩

theorem canonicalSound17171 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17171.moment H = canonicalOutput17171.moment H :=
  canonical_of_padded canonicalInput17171 canonicalOutput17171 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17172 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, -1, 4, -3], ![0, 1, -2, 1], ![1, 1, -2, 0]]⟩

def canonicalOutput17172 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node996⟩

theorem canonicalSound17172 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17172.moment H = canonicalOutput17172.moment H :=
  canonical_of_padded canonicalInput17172 canonicalOutput17172 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput17173 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, -1, 4, -3], ![0, 1, 0, -1], ![1, 1, -4, 2]]⟩

def canonicalOutput17173 : ExponentCode := normalNode7409

theorem canonicalSound17173 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17173.moment H = canonicalOutput17173.moment H :=
  canonical_of_padded canonicalInput17173 canonicalOutput17173 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput17174 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, -1, 4, -3], ![0, 2, -3, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput17174 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1156⟩

theorem canonicalSound17174 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17174.moment H = canonicalOutput17174.moment H :=
  canonical_of_padded canonicalInput17174 canonicalOutput17174 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput17175 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, -1, 4, -3], ![0, 2, -2, 0], ![1, 0, -2, 1]]⟩

def canonicalOutput17175 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1155⟩

theorem canonicalSound17175 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17175.moment H = canonicalOutput17175.moment H :=
  canonical_of_padded canonicalInput17175 canonicalOutput17175 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput17176 : ExponentCode := ⟨3, 4, ![![-1, -1, 0, 2], ![0, -1, 4, -3], ![1, 2, -4, 1]]⟩

def canonicalOutput17176 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node190⟩

theorem canonicalSound17176 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17176.moment H = canonicalOutput17176.moment H :=
  canonical_of_padded canonicalInput17176 canonicalOutput17176 (by decide) (by decide)
    ⟨true, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput17177 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, 0, -3, 3], ![0, 0, 2, -2], ![1, 1, 1, -3]]⟩

def canonicalOutput17177 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node956⟩

theorem canonicalSound17177 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17177.moment H = canonicalOutput17177.moment H :=
  canonical_of_padded canonicalInput17177 canonicalOutput17177 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17178 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, 0, -3, 3], ![0, 1, 2, -3], ![1, 0, 1, -2]]⟩

def canonicalOutput17178 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1024⟩

theorem canonicalSound17178 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17178.moment H = canonicalOutput17178.moment H :=
  canonical_of_padded canonicalInput17178 canonicalOutput17178 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput17179 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, 0, -3, 3], ![0, 1, 3, -4], ![1, 0, 0, -1]]⟩

def canonicalOutput17179 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1023⟩

theorem canonicalSound17179 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17179.moment H = canonicalOutput17179.moment H :=
  canonical_of_padded canonicalInput17179 canonicalOutput17179 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput17180 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, 0, -3, 3], ![1, -1, 2, -2], ![0, 2, 1, -3]]⟩

def canonicalOutput17180 : ExponentCode := normalNode9054

theorem canonicalSound17180 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17180.moment H = canonicalOutput17180.moment H :=
  canonical_of_padded canonicalInput17180 canonicalOutput17180 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17181 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, 0, -3, 3], ![1, -1, 3, -3], ![0, 2, 0, -2]]⟩

def canonicalOutput17181 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1025⟩

theorem canonicalSound17181 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17181.moment H = canonicalOutput17181.moment H :=
  canonical_of_padded canonicalInput17181 canonicalOutput17181 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17182 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, 0, -2, 2], ![0, 0, 1, -1], ![1, 1, 1, -3]]⟩

def canonicalOutput17182 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node959⟩

theorem canonicalSound17182 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17182.moment H = canonicalOutput17182.moment H :=
  canonical_of_padded canonicalInput17182 canonicalOutput17182 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17183 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, 0, -2, 2], ![1, -1, 2, -2], ![0, 2, 0, -2]]⟩

def canonicalOutput17183 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node831⟩

theorem canonicalSound17183 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17183.moment H = canonicalOutput17183.moment H :=
  canonical_of_padded canonicalInput17183 canonicalOutput17183 (by decide) (by decide)
    ⟨false, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput17184 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, 0, -2, 2], ![1, -1, 3, -3], ![0, 2, -1, -1]]⟩

def canonicalOutput17184 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1035⟩

theorem canonicalSound17184 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17184.moment H = canonicalOutput17184.moment H :=
  canonical_of_padded canonicalInput17184 canonicalOutput17184 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17185 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, 0, -2, 2], ![1, 0, 1, -2], ![0, 1, 1, -2]]⟩

def canonicalOutput17185 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1033⟩

theorem canonicalSound17185 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17185.moment H = canonicalOutput17185.moment H :=
  canonical_of_padded canonicalInput17185 canonicalOutput17185 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17186 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![0, 0, -1, 1], ![-1, 1, -1, 1], ![1, -1, 3, -3], ![1, 1, -1, -1]]⟩

def canonicalOutput17186 : ExponentCode := normalNode8858

theorem canonicalSound17186 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17186.moment H = canonicalOutput17186.moment H :=
  canonical_of_padded canonicalInput17186 canonicalOutput17186 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17187 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![0, 0, -1, 1], ![-1, 1, 0, 0], ![1, -1, 1, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput17187 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2625⟩

theorem canonicalSound17187 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17187.moment H = canonicalOutput17187.moment H :=
  canonical_of_padded canonicalInput17187 canonicalOutput17187 (by decide) (by decide)
    ⟨false, true, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput17188 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![0, 0, -1, 1], ![-1, 1, 1, -1], ![1, -1, 1, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput17188 : ExponentCode := normalNode8883

theorem canonicalSound17188 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17188.moment H = canonicalOutput17188.moment H :=
  canonical_of_padded canonicalInput17188 canonicalOutput17188 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17189 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![0, 0, -1, 1], ![-1, 1, 3, -3], ![1, -1, 0, 0], ![1, 1, -2, 0]]⟩

def canonicalOutput17189 : ExponentCode := normalNode8869

theorem canonicalSound17189 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17189.moment H = canonicalOutput17189.moment H :=
  canonical_of_padded canonicalInput17189 canonicalOutput17189 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput17190 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![0, 0, -1, 1], ![0, -1, -1, 2], ![0, 2, 3, -5], ![1, 0, -1, 0]]⟩

def canonicalOutput17190 : ExponentCode := normalNode8925

theorem canonicalSound17190 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17190.moment H = canonicalOutput17190.moment H :=
  canonical_of_padded canonicalInput17190 canonicalOutput17190 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17191 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![0, 0, -1, 1], ![0, 0, -2, 2], ![0, 2, 3, -5], ![1, -1, 0, 0]]⟩

def canonicalOutput17191 : ExponentCode := normalNode9057

theorem canonicalSound17191 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17191.moment H = canonicalOutput17191.moment H :=
  canonical_of_padded canonicalInput17191 canonicalOutput17191 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17192 : ExponentCode := ⟨6, 4, ![![-1, -1, 0, 2], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![-1, -1, 2, 0], ![2, 2, 1, -5]]⟩

def canonicalOutput17192 : ExponentCode := normalNode351

theorem canonicalSound17192 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17192.moment H = canonicalOutput17192.moment H :=
  canonical_of_padded canonicalInput17192 canonicalOutput17192 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation340, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17193 : ExponentCode := ⟨6, 4, ![![-1, -1, 0, 2], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![-1, -1, 3, -1], ![2, 2, 0, -4]]⟩

def canonicalOutput17193 : ExponentCode := normalNode430

theorem canonicalSound17193 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17193.moment H = canonicalOutput17193.moment H :=
  canonical_of_padded canonicalInput17193 canonicalOutput17193 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation340, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17194 : ExponentCode := ⟨6, 4, ![![-1, -1, 0, 2], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![-1, 2, 0, -1], ![2, -1, 3, -4]]⟩

def canonicalOutput17194 : ExponentCode := normalNode4763

theorem canonicalSound17194 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17194.moment H = canonicalOutput17194.moment H :=
  canonical_of_padded canonicalInput17194 canonicalOutput17194 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation340, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17195 : ExponentCode := ⟨6, 4, ![![-1, -1, 0, 2], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![-1, 2, 1, -2], ![2, -1, 2, -3]]⟩

def canonicalOutput17195 : ExponentCode := normalNode4965

theorem canonicalSound17195 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17195.moment H = canonicalOutput17195.moment H :=
  canonical_of_padded canonicalInput17195 canonicalOutput17195 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation340, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17196 : ExponentCode := ⟨6, 4, ![![-1, -1, 0, 2], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-1, -1, 1, 1], ![2, 1, 2, -5]]⟩

def canonicalOutput17196 : ExponentCode := normalNode1016

theorem canonicalSound17196 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17196.moment H = canonicalOutput17196.moment H :=
  canonical_of_padded canonicalInput17196 canonicalOutput17196 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation380, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17197 : ExponentCode := ⟨6, 4, ![![-1, -1, 0, 2], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-1, -1, 3, -1], ![1, 3, -1, -3]]⟩

def canonicalOutput17197 : ExponentCode := normalNode6045

theorem canonicalSound17197 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17197.moment H = canonicalOutput17197.moment H :=
  canonical_of_padded canonicalInput17197 canonicalOutput17197 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation380, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17198 : ExponentCode := ⟨6, 4, ![![-1, -1, 0, 2], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-1, 1, -1, 1], ![1, 1, 3, -5]]⟩

def canonicalOutput17198 : ExponentCode := normalNode7165

theorem canonicalSound17198 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17198.moment H = canonicalOutput17198.moment H :=
  canonical_of_padded canonicalInput17198 canonicalOutput17198 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation380, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17199 : ExponentCode := ⟨6, 4, ![![-1, -1, 0, 2], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, 0, -1, 0], ![-1, 3, 0, -2], ![1, -2, 3, -2]]⟩

def canonicalOutput17199 : ExponentCode := normalNode6172

theorem canonicalSound17199 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17199.moment H = canonicalOutput17199.moment H :=
  canonical_of_padded canonicalInput17199 canonicalOutput17199 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation380, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput17200 : ExponentCode := ⟨6, 4, ![![-1, -1, 0, 2], ![0, 0, -1, 1], ![0, 0, 1, -1], ![-1, -1, 2, 0], ![-1, 3, -1, -1], ![3, -1, -1, -1]]⟩

def canonicalOutput17200 : ExponentCode := normalNode183

theorem canonicalSound17200 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17200.moment H = canonicalOutput17200.moment H :=
  canonical_of_padded canonicalInput17200 canonicalOutput17200 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation359, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput17201 : ExponentCode := ⟨6, 4, ![![-1, -1, 0, 2], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, -1, 2, -1], ![-2, 3, -1, 0], ![3, -1, -1, -1]]⟩

def canonicalOutput17201 : ExponentCode := normalNode152

theorem canonicalSound17201 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17201.moment H = canonicalOutput17201.moment H :=
  canonical_of_padded canonicalInput17201 canonicalOutput17201 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation280, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput17202 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 1, -1], ![0, 2, -1, -1]]⟩

def canonicalOutput17202 : ExponentCode := normalNode9076

theorem canonicalSound17202 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17202.moment H = canonicalOutput17202.moment H :=
  canonical_of_padded canonicalInput17202 canonicalOutput17202 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17203 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![0, 0, -1, 1], ![0, 0, 2, -2], ![0, 1, 0, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput17203 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2598⟩

theorem canonicalSound17203 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17203.moment H = canonicalOutput17203.moment H :=
  canonical_of_padded canonicalInput17203 canonicalOutput17203 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput17204 : ExponentCode := ⟨6, 4, ![![-1, -1, 0, 2], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-1, 2, 0, -1], ![-1, -1, 3, -1], ![3, -1, -1, -1]]⟩

def canonicalOutput17204 : ExponentCode := normalNode177

theorem canonicalSound17204 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17204.moment H = canonicalOutput17204.moment H :=
  canonical_of_padded canonicalInput17204 canonicalOutput17204 (by decide) (by decide)
    ⟨false, true, canonicalPermutation130, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput17205 : ExponentCode := ⟨6, 4, ![![-1, -1, 0, 2], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-1, 2, 0, -1], ![-1, 0, 3, -2], ![3, -2, -1, 0]]⟩

def canonicalOutput17205 : ExponentCode := normalNode150

theorem canonicalSound17205 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17205.moment H = canonicalOutput17205.moment H :=
  canonical_of_padded canonicalInput17205 canonicalOutput17205 (by decide) (by decide)
    ⟨false, true, canonicalPermutation130, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput17206 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, -1, 2, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput17206 : ExponentCode := normalNode8968

theorem canonicalSound17206 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17206.moment H = canonicalOutput17206.moment H :=
  canonical_of_padded canonicalInput17206 canonicalOutput17206 (by decide) (by decide)
    ⟨false, true, canonicalPermutation33, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17207 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, -1, 3, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput17207 : ExponentCode := normalNode9019

theorem canonicalSound17207 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17207.moment H = canonicalOutput17207.moment H :=
  canonical_of_padded canonicalInput17207 canonicalOutput17207 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17208 : ExponentCode := ⟨6, 4, ![![-1, -1, 0, 2], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![-1, -2, 2, 1], ![2, 1, 1, -4]]⟩

def canonicalOutput17208 : ExponentCode := normalNode1222

theorem canonicalSound17208 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17208.moment H = canonicalOutput17208.moment H :=
  canonical_of_padded canonicalInput17208 canonicalOutput17208 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation364, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17209 : ExponentCode := ⟨6, 4, ![![-1, -1, 0, 2], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![-1, -1, 0, 2], ![2, 0, 3, -5]]⟩

def canonicalOutput17209 : ExponentCode := normalNode3044

theorem canonicalSound17209 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17209.moment H = canonicalOutput17209.moment H :=
  canonical_of_padded canonicalInput17209 canonicalOutput17209 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation364, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17210 : ExponentCode := ⟨6, 4, ![![-1, -1, 0, 2], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, 0, -1, 2], ![2, -1, 3, -4]]⟩

def canonicalOutput17210 : ExponentCode := normalNode4719

theorem canonicalSound17210 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17210.moment H = canonicalOutput17210.moment H :=
  canonical_of_padded canonicalInput17210 canonicalOutput17210 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation386, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17211 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 2, -2]]⟩

def canonicalOutput17211 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2442⟩

theorem canonicalSound17211 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17211.moment H = canonicalOutput17211.moment H :=
  canonical_of_padded canonicalInput17211 canonicalOutput17211 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput17212 : ExponentCode := ⟨6, 4, ![![-1, -1, 0, 2], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, -1, -2, 1], ![-1, 0, 4, -3]]⟩

def canonicalOutput17212 : ExponentCode := normalNode5035

theorem canonicalSound17212 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17212.moment H = canonicalOutput17212.moment H :=
  canonical_of_padded canonicalInput17212 canonicalOutput17212 (by decide) (by decide)
    ⟨false, true, canonicalPermutation127, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput17213 : ExponentCode := ⟨6, 4, ![![-1, -1, 0, 2], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -2, 1, 0], ![2, 0, -1, -1], ![-2, 2, 2, -2]]⟩

def canonicalOutput17213 : ExponentCode := normalNode738

theorem canonicalSound17213 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17213.moment H = canonicalOutput17213.moment H :=
  canonical_of_padded canonicalInput17213 canonicalOutput17213 (by decide) (by decide)
    ⟨false, true, canonicalPermutation109, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput17214 : ExponentCode := ⟨6, 4, ![![-1, -1, 0, 2], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-1, 0, -1, 2], ![1, 1, 3, -5]]⟩

def canonicalOutput17214 : ExponentCode := normalNode7156

theorem canonicalSound17214 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17214.moment H = canonicalOutput17214.moment H :=
  canonical_of_padded canonicalInput17214 canonicalOutput17214 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation362, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput17215 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 1, -1], ![0, 1, 1, -2]]⟩

def canonicalOutput17215 : ExponentCode := normalNode9084

theorem canonicalSound17215 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17215.moment H = canonicalOutput17215.moment H :=
  canonical_of_padded canonicalInput17215 canonicalOutput17215 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
