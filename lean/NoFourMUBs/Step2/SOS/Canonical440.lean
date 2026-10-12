import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes004
import NoFourMUBs.Step2.SOS.NormalizationNodes006
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes008
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes018
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes44
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes47
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes50
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput28160 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -2, 2], ![1, -1, 0, 0], ![-2, 0, 1, 1], ![0, 2, 0, -2], ![1, -1, 2, -2]]⟩

def canonicalOutput28160 : ExponentCode := normalNode4073

theorem canonicalSound28160 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28160.moment H = canonicalOutput28160.moment H :=
  canonical_of_padded canonicalInput28160 canonicalOutput28160 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation261, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28161 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -2, 2], ![1, -1, 0, 0], ![-2, 0, 1, 1], ![1, -1, 1, -1], ![0, 2, 1, -3]]⟩

def canonicalOutput28161 : ExponentCode := normalNode3598

theorem canonicalSound28161 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28161.moment H = canonicalOutput28161.moment H :=
  canonical_of_padded canonicalInput28161 canonicalOutput28161 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation311, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28162 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -2, 2], ![1, -1, 0, 0], ![-2, 0, 2, 0], ![0, 2, 0, -2], ![1, -1, 1, -1]]⟩

def canonicalOutput28162 : ExponentCode := normalNode4071

theorem canonicalSound28162 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28162.moment H = canonicalOutput28162.moment H :=
  canonical_of_padded canonicalInput28162 canonicalOutput28162 (by decide) (by decide)
    ⟨false, false, canonicalPermutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28163 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -2, 2], ![1, -1, 0, 0], ![-2, 1, 0, 1], ![0, -1, 2, -1], ![1, 1, 1, -3]]⟩

def canonicalOutput28163 : ExponentCode := normalNode5416

theorem canonicalSound28163 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28163.moment H = canonicalOutput28163.moment H :=
  canonical_of_padded canonicalInput28163 canonicalOutput28163 (by decide) (by decide)
    ⟨false, false, canonicalPermutation285, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28164 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -2, 2], ![1, -1, 0, 0], ![-2, 1, 0, 1], ![0, 1, 1, -2], ![1, -1, 2, -2]]⟩

def canonicalOutput28164 : ExponentCode := normalNode5463

theorem canonicalSound28164 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28164.moment H = canonicalOutput28164.moment H :=
  canonical_of_padded canonicalInput28164 canonicalOutput28164 (by decide) (by decide)
    ⟨false, false, canonicalPermutation298, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28165 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -2, 2], ![1, -1, 0, 0], ![-2, 1, 0, 1], ![1, -1, 1, -1], ![0, 1, 2, -3]]⟩

def canonicalOutput28165 : ExponentCode := normalNode5464

theorem canonicalSound28165 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28165.moment H = canonicalOutput28165.moment H :=
  canonical_of_padded canonicalInput28165 canonicalOutput28165 (by decide) (by decide)
    ⟨false, false, canonicalPermutation323, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28166 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -2, 2], ![1, -1, 0, 0], ![-2, 1, 1, 0], ![0, 2, 0, -2], ![1, -2, 2, -1]]⟩

def canonicalOutput28166 : ExponentCode := normalNode4180

theorem canonicalSound28166 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28166.moment H = canonicalOutput28166.moment H :=
  canonical_of_padded canonicalInput28166 canonicalOutput28166 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation249, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput28167 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -2, 2], ![1, -1, 0, 0], ![-2, 2, 0, 0], ![0, -1, 2, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput28167 : ExponentCode := normalNode5945

theorem canonicalSound28167 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28167.moment H = canonicalOutput28167.moment H :=
  canonical_of_padded canonicalInput28167 canonicalOutput28167 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28168 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -2, 2], ![1, -1, 0, 0], ![-2, 2, 0, 0], ![0, 0, 2, -2], ![1, -1, 1, -1]]⟩

def canonicalOutput28168 : ExponentCode := normalNode5963

theorem canonicalSound28168 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28168.moment H = canonicalOutput28168.moment H :=
  canonical_of_padded canonicalInput28168 canonicalOutput28168 (by decide) (by decide)
    ⟨false, false, canonicalPermutation298, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28169 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -2, 2], ![1, -1, 0, 0], ![-2, 2, 0, 0], ![1, -2, 1, 0], ![0, 1, 2, -3]]⟩

def canonicalOutput28169 : ExponentCode := normalNode3710

theorem canonicalSound28169 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28169.moment H = canonicalOutput28169.moment H :=
  canonical_of_padded canonicalInput28169 canonicalOutput28169 (by decide) (by decide)
    ⟨false, false, canonicalPermutation142, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput28170 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -2, 2], ![1, -1, 0, 0], ![-1, -1, 1, 1], ![-1, 0, 2, -1], ![1, 2, 0, -3]]⟩

def canonicalOutput28170 : ExponentCode := normalNode2010

theorem canonicalSound28170 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28170.moment H = canonicalOutput28170.moment H :=
  canonical_of_padded canonicalInput28170 canonicalOutput28170 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation312, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28171 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -2, 2], ![1, -1, 0, 0], ![-1, -1, 1, 1], ![1, 0, 1, -2], ![-1, 2, 1, -2]]⟩

def canonicalOutput28171 : ExponentCode := normalNode5020

theorem canonicalSound28171 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28171.moment H = canonicalOutput28171.moment H :=
  canonical_of_padded canonicalInput28171 canonicalOutput28171 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28172 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -2, 2], ![1, -1, 0, 0], ![-1, -1, 2, 0], ![-1, 1, 1, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput28172 : ExponentCode := normalNode8861

theorem canonicalSound28172 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28172.moment H = canonicalOutput28172.moment H :=
  canonical_of_padded canonicalInput28172 canonicalOutput28172 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28173 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -2, 2], ![1, -1, 0, 0], ![-1, -1, 2, 0], ![-1, 2, 0, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput28173 : ExponentCode := normalNode5296

theorem canonicalSound28173 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28173.moment H = canonicalOutput28173.moment H :=
  canonical_of_padded canonicalInput28173 canonicalOutput28173 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28174 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -2, 2], ![1, -1, 0, 0], ![-1, 0, 2, -1], ![-1, 2, 0, -1], ![1, -1, 1, -1]]⟩

def canonicalOutput28174 : ExponentCode := normalNode5523

theorem canonicalSound28174 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28174.moment H = canonicalOutput28174.moment H :=
  canonical_of_padded canonicalInput28174 canonicalOutput28174 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation261, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28175 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -2, 2], ![1, -1, 0, 0], ![0, -2, 2, 0], ![1, 0, 1, -2], ![-2, 3, 0, -1]]⟩

def canonicalOutput28175 : ExponentCode := normalNode2046

theorem canonicalSound28175 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28175.moment H = canonicalOutput28175.moment H :=
  canonical_of_padded canonicalInput28175 canonicalOutput28175 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation374, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput28176 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -2, 2], ![1, -1, 0, 0], ![0, -2, 2, 0], ![1, 1, 0, -2], ![-2, 2, 1, -1]]⟩

def canonicalOutput28176 : ExponentCode := normalNode2772

theorem canonicalSound28176 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28176.moment H = canonicalOutput28176.moment H :=
  canonical_of_padded canonicalInput28176 canonicalOutput28176 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation374, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput28177 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -2, 2], ![1, -1, 0, 0], ![0, -1, 2, -1], ![1, -1, 1, -1], ![-2, 3, 0, -1]]⟩

def canonicalOutput28177 : ExponentCode := normalNode1858

theorem canonicalSound28177 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28177.moment H = canonicalOutput28177.moment H :=
  canonical_of_padded canonicalInput28177 canonicalOutput28177 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation374, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput28178 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -2, 2], ![1, -1, 0, 0], ![0, 0, 2, -2], ![1, -2, 1, 0], ![-2, 3, 0, -1]]⟩

def canonicalOutput28178 : ExponentCode := normalNode1649

theorem canonicalSound28178 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28178.moment H = canonicalOutput28178.moment H :=
  canonical_of_padded canonicalInput28178 canonicalOutput28178 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput28179 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -2, 2], ![1, -1, 0, 0], ![0, 1, 1, -2], ![1, -2, 1, 0], ![-2, 2, 1, -1]]⟩

def canonicalOutput28179 : ExponentCode := normalNode2243

theorem canonicalSound28179 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28179.moment H = canonicalOutput28179.moment H :=
  canonical_of_padded canonicalInput28179 canonicalOutput28179 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput28180 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -2, 2], ![1, -1, 0, 0], ![0, 1, 1, -2], ![1, 1, 0, -2], ![-2, -1, 2, 1]]⟩

def canonicalOutput28180 : ExponentCode := normalNode2944

theorem canonicalSound28180 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28180.moment H = canonicalOutput28180.moment H :=
  canonical_of_padded canonicalInput28180 canonicalOutput28180 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation333, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28181 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -2, 2], ![1, -1, 0, 0], ![0, 2, 0, -2], ![1, -2, 1, 0], ![-2, 1, 2, -1]]⟩

def canonicalOutput28181 : ExponentCode := normalNode2268

theorem canonicalSound28181 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28181.moment H = canonicalOutput28181.moment H :=
  canonical_of_padded canonicalInput28181 canonicalOutput28181 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation374, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput28182 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -2, 2], ![1, -1, 0, 0], ![0, 2, 0, -2], ![1, 0, 1, -2], ![-2, -1, 2, 1]]⟩

def canonicalOutput28182 : ExponentCode := normalNode2945

theorem canonicalSound28182 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28182.moment H = canonicalOutput28182.moment H :=
  canonical_of_padded canonicalInput28182 canonicalOutput28182 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation333, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28183 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -2, 2], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-2, 1, 1, 0], ![0, 1, 2, -3]]⟩

def canonicalOutput28183 : ExponentCode := normalNode5521

theorem canonicalSound28183 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28183.moment H = canonicalOutput28183.moment H :=
  canonical_of_padded canonicalInput28183 canonicalOutput28183 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation262, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28184 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -2, 2], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-2, 2, 0, 0], ![0, 0, 3, -3]]⟩

def canonicalOutput28184 : ExponentCode := normalNode5957

theorem canonicalSound28184 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28184.moment H = canonicalOutput28184.moment H :=
  canonical_of_padded canonicalInput28184 canonicalOutput28184 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28185 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -2, 2], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-2, 3, 0, -1], ![0, -1, 3, -2]]⟩

def canonicalOutput28185 : ExponentCode := normalNode1660

theorem canonicalSound28185 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28185.moment H = canonicalOutput28185.moment H :=
  canonical_of_padded canonicalInput28185 canonicalOutput28185 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput28186 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -2, 2], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-1, -1, 3, -1], ![-1, 3, 0, -2]]⟩

def canonicalOutput28186 : ExponentCode := normalNode6648

theorem canonicalSound28186 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28186.moment H = canonicalOutput28186.moment H :=
  canonical_of_padded canonicalInput28186 canonicalOutput28186 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput28187 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -2, 2], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-2, -1, 2, 1], ![0, 2, 1, -3]]⟩

def canonicalOutput28187 : ExponentCode := normalNode2946

theorem canonicalSound28187 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28187.moment H = canonicalOutput28187.moment H :=
  canonical_of_padded canonicalInput28187 canonicalOutput28187 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation279, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28188 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -2, 2], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-2, 2, 0, 0], ![0, -1, 3, -2]]⟩

def canonicalOutput28188 : ExponentCode := normalNode5932

theorem canonicalSound28188 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28188.moment H = canonicalOutput28188.moment H :=
  canonical_of_padded canonicalInput28188 canonicalOutput28188 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28189 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -2, 2], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-2, 3, 0, -1], ![0, -2, 3, -1]]⟩

def canonicalOutput28189 : ExponentCode := normalNode1887

theorem canonicalSound28189 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28189.moment H = canonicalOutput28189.moment H :=
  canonical_of_padded canonicalInput28189 canonicalOutput28189 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation295, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput28190 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -2, 2], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, 2, 0, -1], ![-1, -1, 3, -1]]⟩

def canonicalOutput28190 : ExponentCode := normalNode5344

theorem canonicalSound28190 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28190.moment H = canonicalOutput28190.moment H :=
  canonical_of_padded canonicalInput28190 canonicalOutput28190 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation288, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28191 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![-1, 0, -1, 2], ![0, 1, -1, 0], ![-1, -2, 3, 0], ![2, 1, 1, -4]]⟩

def canonicalOutput28191 : ExponentCode := normalNode1248

theorem canonicalSound28191 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28191.moment H = canonicalOutput28191.moment H :=
  canonical_of_padded canonicalInput28191 canonicalOutput28191 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28192 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![-1, 0, -1, 2], ![0, 1, -1, 0], ![-1, 1, 2, -2], ![2, -2, 2, -2]]⟩

def canonicalOutput28192 : ExponentCode := normalNode5800

theorem canonicalSound28192 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28192.moment H = canonicalOutput28192.moment H :=
  canonical_of_padded canonicalInput28192 canonicalOutput28192 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation374, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28193 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![-1, 0, -1, 2], ![0, 1, -1, 0], ![2, -2, 1, -1], ![-1, 1, 3, -3]]⟩

def canonicalOutput28193 : ExponentCode := normalNode5879

theorem canonicalSound28193 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28193.moment H = canonicalOutput28193.moment H :=
  canonical_of_padded canonicalInput28193 canonicalOutput28193 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation289, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28194 : ExponentCode := ⟨5, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![-1, 0, -1, 2], ![0, 2, 1, -3], ![1, -2, 2, -1]]⟩

def canonicalOutput28194 : ExponentCode := normalNode10321

theorem canonicalSound28194 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28194.moment H = canonicalOutput28194.moment H :=
  canonical_of_padded canonicalInput28194 canonicalOutput28194 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28195 : ExponentCode := ⟨5, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![-1, 0, -1, 2], ![0, 2, 2, -4], ![1, -2, 1, 0]]⟩

def canonicalOutput28195 : ExponentCode := normalNode10322

theorem canonicalSound28195 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28195.moment H = canonicalOutput28195.moment H :=
  canonical_of_padded canonicalInput28195 canonicalOutput28195 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28196 : ExponentCode := ⟨5, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![-1, 0, -1, 2], ![0, 2, 3, -5], ![1, -2, 0, 1]]⟩

def canonicalOutput28196 : ExponentCode := normalNode10323

theorem canonicalSound28196 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28196.moment H = canonicalOutput28196.moment H :=
  canonical_of_padded canonicalInput28196 canonicalOutput28196 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28197 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![-1, 0, -1, 2], ![1, -1, 0, 0], ![-1, -1, 1, 1], ![1, 2, 2, -5]]⟩

def canonicalOutput28197 : ExponentCode := normalNode1073

theorem canonicalSound28197 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28197.moment H = canonicalOutput28197.moment H :=
  canonical_of_padded canonicalInput28197 canonicalOutput28197 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28198 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![-1, 0, -1, 2], ![1, 0, -1, 0], ![-1, -2, 3, 0], ![1, 2, 1, -4]]⟩

def canonicalOutput28198 : ExponentCode := normalNode1246

theorem canonicalSound28198 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28198.moment H = canonicalOutput28198.moment H :=
  canonical_of_padded canonicalInput28198 canonicalOutput28198 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28199 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![-1, 0, 1, 0], ![1, 0, 0, -1], ![-1, 2, -2, 1], ![1, -2, 3, -2]]⟩

def canonicalOutput28199 : ExponentCode := normalNode4840

theorem canonicalSound28199 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28199.moment H = canonicalOutput28199.moment H :=
  canonical_of_padded canonicalInput28199 canonicalOutput28199 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation355, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput28200 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![-1, 0, 1, 0], ![1, 0, 0, -1], ![1, -2, -1, 2], ![-1, 2, 2, -3]]⟩

def canonicalOutput28200 : ExponentCode := normalNode4840

theorem canonicalSound28200 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28200.moment H = canonicalOutput28200.moment H :=
  canonical_of_padded canonicalInput28200 canonicalOutput28200 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28201 : ExponentCode := ⟨5, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![-1, 0, 2, -1], ![0, 2, 1, -3], ![1, -2, -1, 2]]⟩

def canonicalOutput28201 : ExponentCode := normalNode10904

theorem canonicalSound28201 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28201.moment H = canonicalOutput28201.moment H :=
  canonical_of_padded canonicalInput28201 canonicalOutput28201 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28202 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![-1, 1, -1, 1], ![0, 1, -1, 0], ![-1, -2, 2, 1], ![2, 0, 2, -4]]⟩

def canonicalOutput28202 : ExponentCode := normalNode2733

theorem canonicalSound28202 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28202.moment H = canonicalOutput28202.moment H :=
  canonical_of_padded canonicalInput28202 canonicalOutput28202 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation262, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput28203 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![-1, 1, -1, 1], ![0, 1, 0, -1], ![-1, -2, 1, 2], ![2, 0, 2, -4]]⟩

def canonicalOutput28203 : ExponentCode := normalNode2636

theorem canonicalSound28203 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28203.moment H = canonicalOutput28203.moment H :=
  canonical_of_padded canonicalInput28203 canonicalOutput28203 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation262, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28204 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![-1, 1, -1, 1], ![0, 1, 0, -1], ![-1, -1, 0, 2], ![2, -1, 3, -4]]⟩

def canonicalOutput28204 : ExponentCode := normalNode4723

theorem canonicalSound28204 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28204.moment H = canonicalOutput28204.moment H :=
  canonical_of_padded canonicalInput28204 canonicalOutput28204 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28205 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![-1, 1, -1, 1], ![0, 1, 0, -1], ![2, -2, -1, 1], ![-1, 0, 4, -3]]⟩

def canonicalOutput28205 : ExponentCode := normalNode5874

theorem canonicalSound28205 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28205.moment H = canonicalOutput28205.moment H :=
  canonical_of_padded canonicalInput28205 canonicalOutput28205 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation288, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28206 : ExponentCode := ⟨5, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![-1, 1, -1, 1], ![0, 1, 1, -2], ![1, -2, 2, -1]]⟩

def canonicalOutput28206 : ExponentCode := normalNode11120

theorem canonicalSound28206 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28206.moment H = canonicalOutput28206.moment H :=
  canonical_of_padded canonicalInput28206 canonicalOutput28206 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28207 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![-1, 1, -1, 1], ![1, -1, 0, 0], ![-1, -1, 0, 2], ![1, 1, 3, -5]]⟩

def canonicalOutput28207 : ExponentCode := normalNode7165

theorem canonicalSound28207 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28207.moment H = canonicalOutput28207.moment H :=
  canonical_of_padded canonicalInput28207 canonicalOutput28207 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28208 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![-1, 1, -1, 1], ![1, 0, -1, 0], ![-1, -2, 2, 1], ![1, 1, 2, -4]]⟩

def canonicalOutput28208 : ExponentCode := normalNode2731

theorem canonicalSound28208 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28208.moment H = canonicalOutput28208.moment H :=
  canonical_of_padded canonicalInput28208 canonicalOutput28208 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation260, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput28209 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![-1, 1, 0, 0], ![0, 1, 0, -1], ![-1, 0, -1, 2], ![2, -2, 3, -3]]⟩

def canonicalOutput28209 : ExponentCode := normalNode5748

theorem canonicalSound28209 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28209.moment H = canonicalOutput28209.moment H :=
  canonical_of_padded canonicalInput28209 canonicalOutput28209 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28210 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![-1, 1, 0, 0], ![0, 1, 0, -1], ![2, -1, -2, 1], ![-1, -1, 4, -2]]⟩

def canonicalOutput28210 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3245⟩

theorem canonicalSound28210 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28210.moment H = canonicalOutput28210.moment H :=
  canonical_of_padded canonicalInput28210 canonicalOutput28210 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation288, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28211 : ExponentCode := ⟨5, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![-1, 1, 0, 0], ![0, 2, 2, -4], ![1, -3, 0, 2]]⟩

def canonicalOutput28211 : ExponentCode := normalNode10839

theorem canonicalSound28211 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28211.moment H = canonicalOutput28211.moment H :=
  canonical_of_padded canonicalInput28211 canonicalOutput28211 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput28212 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![-1, 1, 0, 0], ![1, 0, -1, 0], ![-1, -2, 1, 2], ![1, 1, 2, -4]]⟩

def canonicalOutput28212 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3052⟩

theorem canonicalSound28212 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28212.moment H = canonicalOutput28212.moment H :=
  canonical_of_padded canonicalInput28212 canonicalOutput28212 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation260, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28213 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![-1, 1, 0, 0], ![1, 0, 0, -1], ![1, -2, -1, 2], ![-1, 1, 3, -3]]⟩

def canonicalOutput28213 : ExponentCode := normalNode5188

theorem canonicalSound28213 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28213.moment H = canonicalOutput28213.moment H :=
  canonical_of_padded canonicalInput28213 canonicalOutput28213 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation260, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28214 : ExponentCode := ⟨5, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![-1, 1, 1, -1], ![0, 1, 2, -3], ![1, -2, -1, 2]]⟩

def canonicalOutput28214 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2858⟩

theorem canonicalSound28214 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28214.moment H = canonicalOutput28214.moment H :=
  canonical_of_padded canonicalInput28214 canonicalOutput28214 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28215 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, -1, -1, 2], ![-2, 1, 1, 0], ![0, 2, 0, -2], ![2, -2, 2, -2]]⟩

def canonicalOutput28215 : ExponentCode := normalNode819

theorem canonicalSound28215 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28215.moment H = canonicalOutput28215.moment H :=
  canonical_of_padded canonicalInput28215 canonicalOutput28215 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput28216 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, -1, -1, 2], ![-1, 1, 1, -1], ![-1, 2, 0, -1], ![2, -2, 2, -2]]⟩

def canonicalOutput28216 : ExponentCode := normalNode944

theorem canonicalSound28216 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28216.moment H = canonicalOutput28216.moment H :=
  canonical_of_padded canonicalInput28216 canonicalOutput28216 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput28217 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, -1, -1, 2], ![0, -1, 2, -1], ![2, -1, 0, -1], ![-2, 3, 1, -2]]⟩

def canonicalOutput28217 : ExponentCode := normalNode4215

theorem canonicalSound28217 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28217.moment H = canonicalOutput28217.moment H :=
  canonical_of_padded canonicalInput28217 canonicalOutput28217 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation288, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput28218 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, -1, -1, 2], ![1, -2, 1, 0], ![-2, 2, 1, -1], ![1, 1, 1, -3]]⟩

def canonicalOutput28218 : ExponentCode := normalNode5674

theorem canonicalSound28218 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28218.moment H = canonicalOutput28218.moment H :=
  canonical_of_padded canonicalInput28218 canonicalOutput28218 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation283, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput28219 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, -1, -1, 2], ![1, -2, 1, 0], ![-2, 3, 0, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput28219 : ExponentCode := normalNode4695

theorem canonicalSound28219 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28219.moment H = canonicalOutput28219.moment H :=
  canonical_of_padded canonicalInput28219 canonicalOutput28219 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation283, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput28220 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, -1, -1, 2], ![1, -1, 0, 0], ![-2, 1, 2, -1], ![1, 1, 1, -3]]⟩

def canonicalOutput28220 : ExponentCode := normalNode5679

theorem canonicalSound28220 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28220.moment H = canonicalOutput28220.moment H :=
  canonical_of_padded canonicalInput28220 canonicalOutput28220 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation283, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28221 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, -1, -1, 2], ![1, -1, 0, 0], ![-2, 2, 1, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput28221 : ExponentCode := normalNode5829

theorem canonicalSound28221 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28221.moment H = canonicalOutput28221.moment H :=
  canonical_of_padded canonicalInput28221 canonicalOutput28221 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation295, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28222 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, -1, -1, 2], ![1, -1, 0, 0], ![-2, 3, 0, -1], ![1, -1, 3, -3]]⟩

def canonicalOutput28222 : ExponentCode := normalNode4694

theorem canonicalSound28222 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28222.moment H = canonicalOutput28222.moment H :=
  canonical_of_padded canonicalInput28222 canonicalOutput28222 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation283, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput28223 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, -1, -1, 2], ![1, -1, 0, 0], ![1, -1, 2, -2], ![-2, 3, 1, -2]]⟩

def canonicalOutput28223 : ExponentCode := normalNode5718

theorem canonicalSound28223 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28223.moment H = canonicalOutput28223.moment H :=
  canonical_of_padded canonicalInput28223 canonicalOutput28223 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation355, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
