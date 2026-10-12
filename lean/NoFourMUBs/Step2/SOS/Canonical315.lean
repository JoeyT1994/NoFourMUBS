import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes40
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes41
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes42
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes44
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput20160 : ExponentCode := ⟨5, 4, ![![-1, 0, -1, 2], ![0, -2, 1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput20160 : ExponentCode := normalNode8968

theorem canonicalSound20160 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20160.moment H = canonicalOutput20160.moment H :=
  canonical_of_padded canonicalInput20160 canonicalOutput20160 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput20161 : ExponentCode := ⟨5, 4, ![![-1, 0, -1, 2], ![0, -2, 1, 1], ![0, 1, -1, 0], ![0, 1, 1, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput20161 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2585⟩

theorem canonicalSound20161 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20161.moment H = canonicalOutput20161.moment H :=
  canonical_of_padded canonicalInput20161 canonicalOutput20161 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput20162 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![0, -2, 1, 1], ![0, 1, 1, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput20162 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1078⟩

theorem canonicalSound20162 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20162.moment H = canonicalOutput20162.moment H :=
  canonical_of_padded canonicalInput20162 canonicalOutput20162 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput20163 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![0, -2, 1, 1], ![0, 1, 3, -4], ![1, 1, -3, 1]]⟩

def canonicalOutput20163 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node954⟩

theorem canonicalSound20163 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20163.moment H = canonicalOutput20163.moment H :=
  canonical_of_padded canonicalInput20163 canonicalOutput20163 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput20164 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![0, -2, 1, 1], ![0, 2, -2, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput20164 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1190⟩

theorem canonicalSound20164 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20164.moment H = canonicalOutput20164.moment H :=
  canonical_of_padded canonicalInput20164 canonicalOutput20164 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20165 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![0, -2, 1, 1], ![0, 2, -1, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput20165 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1005⟩

theorem canonicalSound20165 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20165.moment H = canonicalOutput20165.moment H :=
  canonical_of_padded canonicalInput20165 canonicalOutput20165 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput20166 : ExponentCode := ⟨5, 4, ![![-1, 0, -1, 2], ![0, -2, 1, 1], ![1, 0, 1, -2], ![0, 1, -2, 1], ![0, 1, 1, -2]]⟩

def canonicalOutput20166 : ExponentCode := normalNode10226

theorem canonicalSound20166 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20166.moment H = canonicalOutput20166.moment H :=
  canonical_of_padded canonicalInput20166 canonicalOutput20166 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20167 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![0, -2, 1, 1], ![1, 0, 1, -2], ![0, 2, -1, -1]]⟩

def canonicalOutput20167 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1005⟩

theorem canonicalSound20167 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20167.moment H = canonicalOutput20167.moment H :=
  canonical_of_padded canonicalInput20167 canonicalOutput20167 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput20168 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![0, -2, 1, 1], ![1, 0, 2, -3], ![0, 2, -2, 0]]⟩

def canonicalOutput20168 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1190⟩

theorem canonicalSound20168 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20168.moment H = canonicalOutput20168.moment H :=
  canonical_of_padded canonicalInput20168 canonicalOutput20168 (by decide) (by decide)
    ⟨false, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20169 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![0, -2, 1, 1], ![1, 1, -2, 0], ![0, 1, 2, -3]]⟩

def canonicalOutput20169 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1016⟩

theorem canonicalSound20169 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20169.moment H = canonicalOutput20169.moment H :=
  canonical_of_padded canonicalInput20169 canonicalOutput20169 (by decide) (by decide)
    ⟨false, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput20170 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![0, -2, 2, 0], ![0, 0, -2, 2], ![1, 2, 1, -4]]⟩

def canonicalOutput20170 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node773⟩

theorem canonicalSound20170 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20170.moment H = canonicalOutput20170.moment H :=
  canonical_of_padded canonicalInput20170 canonicalOutput20170 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20171 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![0, -2, 2, 0], ![0, 1, -2, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput20171 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node944⟩

theorem canonicalSound20171 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20171.moment H = canonicalOutput20171.moment H :=
  canonical_of_padded canonicalInput20171 canonicalOutput20171 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20172 : ExponentCode := ⟨5, 4, ![![-1, 0, -1, 2], ![0, -2, 2, 0], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput20172 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2824⟩

theorem canonicalSound20172 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20172.moment H = canonicalOutput20172.moment H :=
  canonical_of_padded canonicalInput20172 canonicalOutput20172 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput20173 : ExponentCode := ⟨5, 4, ![![-1, 0, -1, 2], ![0, -2, 2, 0], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput20173 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2583⟩

theorem canonicalSound20173 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20173.moment H = canonicalOutput20173.moment H :=
  canonical_of_padded canonicalInput20173 canonicalOutput20173 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput20174 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![0, -2, 2, 0], ![0, 1, 1, -2], ![1, 1, -2, 0]]⟩

def canonicalOutput20174 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1010⟩

theorem canonicalSound20174 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20174.moment H = canonicalOutput20174.moment H :=
  canonical_of_padded canonicalInput20174 canonicalOutput20174 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput20175 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![0, -2, 2, 0], ![0, 2, -2, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput20175 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1304⟩

theorem canonicalSound20175 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20175.moment H = canonicalOutput20175.moment H :=
  canonical_of_padded canonicalInput20175 canonicalOutput20175 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput20176 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![0, -2, 2, 0], ![1, 0, -2, 1], ![0, 2, 1, -3]]⟩

def canonicalOutput20176 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1235⟩

theorem canonicalSound20176 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20176.moment H = canonicalOutput20176.moment H :=
  canonical_of_padded canonicalInput20176 canonicalOutput20176 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20177 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![0, -2, 2, 0], ![1, 1, -2, 0], ![0, 1, 1, -2]]⟩

def canonicalOutput20177 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1010⟩

theorem canonicalSound20177 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20177.moment H = canonicalOutput20177.moment H :=
  canonical_of_padded canonicalInput20177 canonicalOutput20177 (by decide) (by decide)
    ⟨false, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput20178 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![0, -2, 3, -1], ![0, 1, 0, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput20178 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1003⟩

theorem canonicalSound20178 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20178.moment H = canonicalOutput20178.moment H :=
  canonical_of_padded canonicalInput20178 canonicalOutput20178 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput20179 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![0, -2, 3, -1], ![0, 2, -1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput20179 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node946⟩

theorem canonicalSound20179 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20179.moment H = canonicalOutput20179.moment H :=
  canonical_of_padded canonicalInput20179 canonicalOutput20179 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput20180 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![0, -2, 3, -1], ![0, 2, 0, -2], ![1, 0, -2, 1]]⟩

def canonicalOutput20180 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1235⟩

theorem canonicalSound20180 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20180.moment H = canonicalOutput20180.moment H :=
  canonical_of_padded canonicalInput20180 canonicalOutput20180 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput20181 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![0, -2, 3, -1], ![0, 3, -1, -2], ![1, -1, -1, 1]]⟩

def canonicalOutput20181 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1018⟩

theorem canonicalSound20181 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20181.moment H = canonicalOutput20181.moment H :=
  canonical_of_padded canonicalInput20181 canonicalOutput20181 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput20182 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![0, -2, 4, -2], ![0, 1, -3, 2], ![1, 1, 0, -2]]⟩

def canonicalOutput20182 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1014⟩

theorem canonicalSound20182 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20182.moment H = canonicalOutput20182.moment H :=
  canonical_of_padded canonicalInput20182 canonicalOutput20182 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20183 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![0, -2, 4, -2], ![0, 2, -3, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput20183 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1295⟩

theorem canonicalSound20183 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20183.moment H = canonicalOutput20183.moment H :=
  canonical_of_padded canonicalInput20183 canonicalOutput20183 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput20184 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![0, -1, -2, 3], ![0, 1, 0, -1], ![1, 0, 3, -4]]⟩

def canonicalOutput20184 : ExponentCode := normalNode9675

theorem canonicalSound20184 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20184.moment H = canonicalOutput20184.moment H :=
  canonical_of_padded canonicalInput20184 canonicalOutput20184 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20185 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![0, -1, -2, 3], ![0, 1, 3, -4], ![1, 0, 0, -1]]⟩

def canonicalOutput20185 : ExponentCode := normalNode9674

theorem canonicalSound20185 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20185.moment H = canonicalOutput20185.moment H :=
  canonical_of_padded canonicalInput20185 canonicalOutput20185 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20186 : ExponentCode := ⟨3, 4, ![![-1, 0, -1, 2], ![0, -1, -2, 3], ![1, 1, 3, -5]]⟩

def canonicalOutput20186 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node123⟩

theorem canonicalSound20186 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20186.moment H = canonicalOutput20186.moment H :=
  canonical_of_padded canonicalInput20186 canonicalOutput20186 (by decide) (by decide)
    ⟨true, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20187 : ExponentCode := ⟨5, 4, ![![-1, 0, -1, 2], ![0, -1, -1, 2], ![0, -1, 2, -1], ![0, 0, 2, -2], ![1, 2, -2, -1]]⟩

def canonicalOutput20187 : ExponentCode := normalNode7043

theorem canonicalSound20187 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20187.moment H = canonicalOutput20187.moment H :=
  canonical_of_padded canonicalInput20187 canonicalOutput20187 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation201, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput20188 : ExponentCode := ⟨5, 4, ![![-1, 0, -1, 2], ![0, -1, -1, 2], ![0, -1, 2, -1], ![0, 2, -1, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput20188 : ExponentCode := normalNode10226

theorem canonicalSound20188 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20188.moment H = canonicalOutput20188.moment H :=
  canonical_of_padded canonicalInput20188 canonicalOutput20188 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20189 : ExponentCode := ⟨5, 4, ![![-1, 0, -1, 2], ![0, -1, -1, 2], ![0, -1, 2, -1], ![0, 2, 0, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput20189 : ExponentCode := normalNode8929

theorem canonicalSound20189 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20189.moment H = canonicalOutput20189.moment H :=
  canonical_of_padded canonicalInput20189 canonicalOutput20189 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput20190 : ExponentCode := ⟨5, 4, ![![-1, 0, -1, 2], ![0, -1, -1, 2], ![0, -1, 2, -1], ![1, 0, 1, -2], ![0, 2, -1, -1]]⟩

def canonicalOutput20190 : ExponentCode := normalNode10226

theorem canonicalSound20190 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20190.moment H = canonicalOutput20190.moment H :=
  canonical_of_padded canonicalInput20190 canonicalOutput20190 (by decide) (by decide)
    ⟨false, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20191 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![0, -1, -1, 2], ![0, -1, 3, -2], ![1, 2, -1, -2]]⟩

def canonicalOutput20191 : ExponentCode := normalNode7063

theorem canonicalSound20191 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20191.moment H = canonicalOutput20191.moment H :=
  canonical_of_padded canonicalInput20191 canonicalOutput20191 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20192 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![0, -1, -1, 2], ![0, -1, 4, -3], ![1, 2, -2, -1]]⟩

def canonicalOutput20192 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node848⟩

theorem canonicalSound20192 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20192.moment H = canonicalOutput20192.moment H :=
  canonical_of_padded canonicalInput20192 canonicalOutput20192 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput20193 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![0, -1, -1, 2], ![0, 0, 2, -2], ![1, 1, 0, -2]]⟩

def canonicalOutput20193 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1033⟩

theorem canonicalSound20193 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20193.moment H = canonicalOutput20193.moment H :=
  canonical_of_padded canonicalInput20193 canonicalOutput20193 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20194 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![0, -1, -1, 2], ![0, 0, 3, -3], ![1, 1, -1, -1]]⟩

def canonicalOutput20194 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1104⟩

theorem canonicalSound20194 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20194.moment H = canonicalOutput20194.moment H :=
  canonical_of_padded canonicalInput20194 canonicalOutput20194 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20195 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![0, -1, -1, 2], ![0, 0, 4, -4], ![1, 1, -2, 0]]⟩

def canonicalOutput20195 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1070⟩

theorem canonicalSound20195 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20195.moment H = canonicalOutput20195.moment H :=
  canonical_of_padded canonicalInput20195 canonicalOutput20195 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput20196 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![0, -1, -1, 2], ![0, 1, 0, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput20196 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1198⟩

theorem canonicalSound20196 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20196.moment H = canonicalOutput20196.moment H :=
  canonical_of_padded canonicalInput20196 canonicalOutput20196 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20197 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![0, -1, -1, 2], ![0, 2, 0, -2], ![1, -1, 2, -2]]⟩

def canonicalOutput20197 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node828⟩

theorem canonicalSound20197 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20197.moment H = canonicalOutput20197.moment H :=
  canonical_of_padded canonicalInput20197 canonicalOutput20197 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput20198 : ExponentCode := ⟨5, 4, ![![-1, 0, -1, 2], ![0, -1, -1, 2], ![1, -1, 1, -1], ![0, 0, 2, -2], ![0, 2, -1, -1]]⟩

def canonicalOutput20198 : ExponentCode := normalNode10257

theorem canonicalSound20198 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20198.moment H = canonicalOutput20198.moment H :=
  canonical_of_padded canonicalInput20198 canonicalOutput20198 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20199 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![0, -1, -1, 2], ![1, -1, 2, -2], ![0, 2, 0, -2]]⟩

def canonicalOutput20199 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node828⟩

theorem canonicalSound20199 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20199.moment H = canonicalOutput20199.moment H :=
  canonical_of_padded canonicalInput20199 canonicalOutput20199 (by decide) (by decide)
    ⟨false, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput20200 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![0, -1, -1, 2], ![1, -1, 3, -3], ![0, 2, -1, -1]]⟩

def canonicalOutput20200 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1239⟩

theorem canonicalSound20200 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20200.moment H = canonicalOutput20200.moment H :=
  canonical_of_padded canonicalInput20200 canonicalOutput20200 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20201 : ExponentCode := ⟨5, 4, ![![-1, 0, -1, 2], ![0, -1, 0, 1], ![0, -1, -1, 2], ![0, 2, 3, -5], ![1, 0, -1, 0]]⟩

def canonicalOutput20201 : ExponentCode := normalNode10248

theorem canonicalSound20201 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20201.moment H = canonicalOutput20201.moment H :=
  canonical_of_padded canonicalInput20201 canonicalOutput20201 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20202 : ExponentCode := ⟨5, 4, ![![-1, 0, -1, 2], ![0, -1, 0, 1], ![0, -1, 2, -1], ![0, 2, -1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput20202 : ExponentCode := normalNode8991

theorem canonicalSound20202 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20202.moment H = canonicalOutput20202.moment H :=
  canonical_of_padded canonicalInput20202 canonicalOutput20202 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput20203 : ExponentCode := ⟨5, 4, ![![-1, 0, -1, 2], ![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, 3, -4], ![1, 0, -1, 0]]⟩

def canonicalOutput20203 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2685⟩

theorem canonicalSound20203 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20203.moment H = canonicalOutput20203.moment H :=
  canonical_of_padded canonicalInput20203 canonicalOutput20203 (by decide) (by decide)
    ⟨false, true, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20204 : ExponentCode := ⟨5, 4, ![![-1, 0, -1, 2], ![0, -1, 0, 1], ![0, 1, -1, 0], ![0, 0, 3, -3], ![1, 0, -1, 0]]⟩

def canonicalOutput20204 : ExponentCode := normalNode10276

theorem canonicalSound20204 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20204.moment H = canonicalOutput20204.moment H :=
  canonical_of_padded canonicalInput20204 canonicalOutput20204 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20205 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![0, -1, 0, 1], ![0, 1, 3, -4], ![1, 0, -2, 1]]⟩

def canonicalOutput20205 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1171⟩

theorem canonicalSound20205 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20205.moment H = canonicalOutput20205.moment H :=
  canonical_of_padded canonicalInput20205 canonicalOutput20205 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20206 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![0, -1, 0, 1], ![0, 2, -1, -1], ![1, -1, 2, -2]]⟩

def canonicalOutput20206 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node838⟩

theorem canonicalSound20206 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20206.moment H = canonicalOutput20206.moment H :=
  canonical_of_padded canonicalInput20206 canonicalOutput20206 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput20207 : ExponentCode := ⟨5, 4, ![![-1, 0, -1, 2], ![0, -1, 1, 0], ![0, -1, -1, 2], ![0, 2, 2, -4], ![1, 0, -1, 0]]⟩

def canonicalOutput20207 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2720⟩

theorem canonicalSound20207 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20207.moment H = canonicalOutput20207.moment H :=
  canonical_of_padded canonicalInput20207 canonicalOutput20207 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20208 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![0, -1, 1, 0], ![0, 1, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput20208 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1048⟩

theorem canonicalSound20208 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20208.moment H = canonicalOutput20208.moment H :=
  canonical_of_padded canonicalInput20208 canonicalOutput20208 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput20209 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![0, -1, 1, 0], ![0, 1, 2, -3], ![1, 0, -2, 1]]⟩

def canonicalOutput20209 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1207⟩

theorem canonicalSound20209 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20209.moment H = canonicalOutput20209.moment H :=
  canonical_of_padded canonicalInput20209 canonicalOutput20209 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20210 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![0, -1, 1, 0], ![0, 2, -2, 0], ![1, -1, 2, -2]]⟩

def canonicalOutput20210 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1311⟩

theorem canonicalSound20210 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20210.moment H = canonicalOutput20210.moment H :=
  canonical_of_padded canonicalInput20210 canonicalOutput20210 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput20211 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![0, -1, 1, 0], ![0, 2, -1, -1], ![1, -1, 1, -1]]⟩

def canonicalOutput20211 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1006⟩

theorem canonicalSound20211 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20211.moment H = canonicalOutput20211.moment H :=
  canonical_of_padded canonicalInput20211 canonicalOutput20211 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput20212 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![0, -1, 1, 0], ![0, 2, 1, -3], ![1, -1, -1, 1]]⟩

def canonicalOutput20212 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1081⟩

theorem canonicalSound20212 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20212.moment H = canonicalOutput20212.moment H :=
  canonical_of_padded canonicalInput20212 canonicalOutput20212 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput20213 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![0, -1, 2, -1], ![0, 1, -3, 2], ![1, 0, 2, -3]]⟩

def canonicalOutput20213 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1210⟩

theorem canonicalSound20213 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20213.moment H = canonicalOutput20213.moment H :=
  canonical_of_padded canonicalInput20213 canonicalOutput20213 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20214 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![0, -1, 2, -1], ![0, 2, 0, -2], ![1, -1, -1, 1]]⟩

def canonicalOutput20214 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1058⟩

theorem canonicalSound20214 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20214.moment H = canonicalOutput20214.moment H :=
  canonical_of_padded canonicalInput20214 canonicalOutput20214 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput20215 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![0, -1, 2, -1], ![1, -1, -2, 2], ![0, 2, 1, -3]]⟩

def canonicalOutput20215 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1248⟩

theorem canonicalSound20215 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20215.moment H = canonicalOutput20215.moment H :=
  canonical_of_padded canonicalInput20215 canonicalOutput20215 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20216 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![0, -1, 2, -1], ![1, 0, -2, 1], ![0, 1, 1, -2]]⟩

def canonicalOutput20216 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1247⟩

theorem canonicalSound20216 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20216.moment H = canonicalOutput20216.moment H :=
  canonical_of_padded canonicalInput20216 canonicalOutput20216 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20217 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![0, -1, 3, -2], ![0, 0, -2, 2], ![1, 1, 0, -2]]⟩

def canonicalOutput20217 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1052⟩

theorem canonicalSound20217 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20217.moment H = canonicalOutput20217.moment H :=
  canonical_of_padded canonicalInput20217 canonicalOutput20217 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20218 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![0, -1, 3, -2], ![0, 1, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput20218 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node974⟩

theorem canonicalSound20218 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20218.moment H = canonicalOutput20218.moment H :=
  canonical_of_padded canonicalInput20218 canonicalOutput20218 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput20219 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![0, -1, 3, -2], ![1, -1, -2, 2], ![0, 2, 0, -2]]⟩

def canonicalOutput20219 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1250⟩

theorem canonicalSound20219 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20219.moment H = canonicalOutput20219.moment H :=
  canonical_of_padded canonicalInput20219 canonicalOutput20219 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20220 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![0, -1, 4, -3], ![0, 0, -2, 2], ![1, 1, -1, -1]]⟩

def canonicalOutput20220 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1108⟩

theorem canonicalSound20220 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20220.moment H = canonicalOutput20220.moment H :=
  canonical_of_padded canonicalInput20220 canonicalOutput20220 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput20221 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![0, -1, 4, -3], ![0, 1, -3, 2], ![1, 0, 0, -1]]⟩

def canonicalOutput20221 : ExponentCode := normalNode9710

theorem canonicalSound20221 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20221.moment H = canonicalOutput20221.moment H :=
  canonical_of_padded canonicalInput20221 canonicalOutput20221 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput20222 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![0, -1, 4, -3], ![0, 1, -2, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput20222 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1170⟩

theorem canonicalSound20222 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20222.moment H = canonicalOutput20222.moment H :=
  canonical_of_padded canonicalInput20222 canonicalOutput20222 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput20223 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![0, -1, 4, -3], ![0, 1, 0, -1], ![1, 0, -3, 2]]⟩

def canonicalOutput20223 : ExponentCode := normalNode9712

theorem canonicalSound20223 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20223.moment H = canonicalOutput20223.moment H :=
  canonical_of_padded canonicalInput20223 canonicalOutput20223 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
