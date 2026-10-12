import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes001
import NoFourMUBs.Step2.SOS.NormalizationNodes002
import NoFourMUBs.Step2.SOS.NormalizationNodes004
import NoFourMUBs.Step2.SOS.NormalizationNodes005
import NoFourMUBs.Step2.SOS.NormalizationNodes006
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes008
import NoFourMUBs.Step2.SOS.NormalizationNodes012
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes018
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes22
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes41
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes44
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes45
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes48
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes6
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput31168 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 0, 1, -1], ![-1, 0, 1, 0], ![0, 1, -1, 0], ![2, -2, 1, -1], ![-1, 1, -3, 3]]⟩

def canonicalOutput31168 : ExponentCode := normalNode5862

theorem canonicalSound31168 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31168.moment H = canonicalOutput31168.moment H :=
  canonical_of_padded canonicalInput31168 canonicalOutput31168 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation284, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput31169 : ExponentCode := ⟨5, 4, ![![0, 0, 1, -1], ![0, 0, 1, -1], ![-1, 0, 1, 0], ![0, 2, -3, 1], ![1, -2, 0, 1]]⟩

def canonicalOutput31169 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2676⟩

theorem canonicalSound31169 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31169.moment H = canonicalOutput31169.moment H :=
  canonical_of_padded canonicalInput31169 canonicalOutput31169 (by decide) (by decide)
    ⟨false, true, canonicalPermutation59, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput31170 : ExponentCode := ⟨5, 4, ![![0, 0, 1, -1], ![0, 0, 1, -1], ![-1, 0, 1, 0], ![0, 2, -1, -1], ![1, -2, -2, 3]]⟩

def canonicalOutput31170 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2782⟩

theorem canonicalSound31170 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31170.moment H = canonicalOutput31170.moment H :=
  canonical_of_padded canonicalInput31170 canonicalOutput31170 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31171 : ExponentCode := ⟨5, 4, ![![0, 0, 1, -1], ![0, 0, 1, -1], ![-1, 0, 1, 0], ![0, 2, 0, -2], ![1, -2, -3, 4]]⟩

def canonicalOutput31171 : ExponentCode := normalNode10863

theorem canonicalSound31171 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31171.moment H = canonicalOutput31171.moment H :=
  canonical_of_padded canonicalInput31171 canonicalOutput31171 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31172 : ExponentCode := ⟨5, 4, ![![0, 0, 1, -1], ![0, 0, 1, -1], ![-1, 1, -4, 4], ![0, 1, 0, -1], ![1, -2, 2, -1]]⟩

def canonicalOutput31172 : ExponentCode := normalNode10937

theorem canonicalSound31172 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31172.moment H = canonicalOutput31172.moment H :=
  canonical_of_padded canonicalInput31172 canonicalOutput31172 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31173 : ExponentCode := ⟨5, 4, ![![0, 0, 1, -1], ![0, 0, 1, -1], ![-1, 1, -3, 3], ![0, 1, 1, -2], ![1, -2, 0, 1]]⟩

def canonicalOutput31173 : ExponentCode := normalNode11001

theorem canonicalSound31173 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31173.moment H = canonicalOutput31173.moment H :=
  canonical_of_padded canonicalInput31173 canonicalOutput31173 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31174 : ExponentCode := ⟨5, 4, ![![0, 0, 1, -1], ![0, 0, 1, -1], ![-1, 1, -1, 1], ![0, 1, 1, -2], ![1, -2, -2, 3]]⟩

def canonicalOutput31174 : ExponentCode := normalNode11125

theorem canonicalSound31174 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31174.moment H = canonicalOutput31174.moment H :=
  canonical_of_padded canonicalInput31174 canonicalOutput31174 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31175 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 0, 1, -1], ![-1, 1, -1, 1], ![2, -2, 0, 0], ![-1, 1, 2, -2], ![0, 0, -3, 3]]⟩

def canonicalOutput31175 : ExponentCode := normalNode5955

theorem canonicalSound31175 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31175.moment H = canonicalOutput31175.moment H :=
  canonical_of_padded canonicalInput31175 canonicalOutput31175 (by decide) (by decide)
    ⟨false, false, canonicalPermutation142, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput31176 : ExponentCode := ⟨5, 4, ![![0, 0, 1, -1], ![0, 0, 1, -1], ![-1, 1, 0, 0], ![0, 1, 1, -2], ![1, -2, -3, 4]]⟩

def canonicalOutput31176 : ExponentCode := normalNode11163

theorem canonicalSound31176 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31176.moment H = canonicalOutput31176.moment H :=
  canonical_of_padded canonicalInput31176 canonicalOutput31176 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31177 : ExponentCode := ⟨4, 4, ![![0, 0, 1, -1], ![0, 0, 1, -1], ![-1, 2, 1, -2], ![1, -2, -3, 4]]⟩

def canonicalOutput31177 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node904⟩

theorem canonicalSound31177 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31177.moment H = canonicalOutput31177.moment H :=
  canonical_of_padded canonicalInput31177 canonicalOutput31177 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31178 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 0, 0, 0], ![0, 1, -1, 0], ![2, 1, -1, -2], ![-2, -2, 0, 4]]⟩

def canonicalOutput31178 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1458⟩

theorem canonicalSound31178 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31178.moment H = canonicalOutput31178.moment H :=
  canonical_of_padded canonicalInput31178 canonicalOutput31178 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation235, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31179 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![-1, 1, -1, 1], ![2, -2, 1, -1], ![-1, 1, -3, 3]]⟩

def canonicalOutput31179 : ExponentCode := normalNode5894

theorem canonicalSound31179 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31179.moment H = canonicalOutput31179.moment H :=
  canonical_of_padded canonicalInput31179 canonicalOutput31179 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput31180 : ExponentCode := ⟨5, 4, ![![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![-1, 2, -3, 2], ![1, -2, 0, 1]]⟩

def canonicalOutput31180 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2860⟩

theorem canonicalSound31180 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31180.moment H = canonicalOutput31180.moment H :=
  canonical_of_padded canonicalInput31180 canonicalOutput31180 (by decide) (by decide)
    ⟨false, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31181 : ExponentCode := ⟨5, 4, ![![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![-1, 2, -1, 0], ![1, -2, -2, 3]]⟩

def canonicalOutput31181 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2860⟩

theorem canonicalSound31181 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31181.moment H = canonicalOutput31181.moment H :=
  canonical_of_padded canonicalInput31181 canonicalOutput31181 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31182 : ExponentCode := ⟨5, 4, ![![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![-1, 2, 0, -1], ![1, -2, -3, 4]]⟩

def canonicalOutput31182 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2862⟩

theorem canonicalSound31182 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31182.moment H = canonicalOutput31182.moment H :=
  canonical_of_padded canonicalInput31182 canonicalOutput31182 (by decide) (by decide)
    ⟨false, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31183 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, -2, 1], ![2, 1, -1, -2], ![-2, -2, 0, 4]]⟩

def canonicalOutput31183 : ExponentCode := normalNode426

theorem canonicalSound31183 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31183.moment H = canonicalOutput31183.moment H :=
  canonical_of_padded canonicalInput31183 canonicalOutput31183 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31184 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -2, 1, 0], ![-1, 1, -3, 3]]⟩

def canonicalOutput31184 : ExponentCode := normalNode11195

theorem canonicalSound31184 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31184.moment H = canonicalOutput31184.moment H :=
  canonical_of_padded canonicalInput31184 canonicalOutput31184 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31185 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![2, -2, 1, -1], ![-2, 1, -3, 4]]⟩

def canonicalOutput31185 : ExponentCode := normalNode4762

theorem canonicalSound31185 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31185.moment H = canonicalOutput31185.moment H :=
  canonical_of_padded canonicalInput31185 canonicalOutput31185 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31186 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![2, 1, -2, -1], ![-2, -2, 0, 4]]⟩

def canonicalOutput31186 : ExponentCode := normalNode427

theorem canonicalSound31186 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31186.moment H = canonicalOutput31186.moment H :=
  canonical_of_padded canonicalInput31186 canonicalOutput31186 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31187 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![2, 1, -1, -2], ![-2, -2, -1, 5]]⟩

def canonicalOutput31187 : ExponentCode := normalNode348

theorem canonicalSound31187 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31187.moment H = canonicalOutput31187.moment H :=
  canonical_of_padded canonicalInput31187 canonicalOutput31187 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31188 : ExponentCode := ⟨5, 4, ![![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 2, -3, 1], ![0, -2, 0, 2]]⟩

def canonicalOutput31188 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node566⟩

theorem canonicalSound31188 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31188.moment H = canonicalOutput31188.moment H :=
  canonical_of_padded canonicalInput31188 canonicalOutput31188 (by decide) (by decide)
    ⟨false, true, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31189 : ExponentCode := ⟨5, 4, ![![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 2, -1, -1], ![0, -2, -2, 4]]⟩

def canonicalOutput31189 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node437⟩

theorem canonicalSound31189 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31189.moment H = canonicalOutput31189.moment H :=
  canonical_of_padded canonicalInput31189 canonicalOutput31189 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31190 : ExponentCode := ⟨5, 4, ![![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 2, 0, -2], ![0, -2, -3, 5]]⟩

def canonicalOutput31190 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node384⟩

theorem canonicalSound31190 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31190.moment H = canonicalOutput31190.moment H :=
  canonical_of_padded canonicalInput31190 canonicalOutput31190 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31191 : ExponentCode := ⟨5, 4, ![![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, -4, 3], ![-1, 1, 0, 0], ![1, -2, 2, -1]]⟩

def canonicalOutput31191 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2853⟩

theorem canonicalSound31191 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31191.moment H = canonicalOutput31191.moment H :=
  canonical_of_padded canonicalInput31191 canonicalOutput31191 (by decide) (by decide)
    ⟨false, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31192 : ExponentCode := ⟨5, 4, ![![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, -4, 3], ![0, 1, 0, -1], ![0, -2, 2, 0]]⟩

def canonicalOutput31192 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node653⟩

theorem canonicalSound31192 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31192.moment H = canonicalOutput31192.moment H :=
  canonical_of_padded canonicalInput31192 canonicalOutput31192 (by decide) (by decide)
    ⟨false, false, canonicalPermutation31, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31193 : ExponentCode := ⟨5, 4, ![![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, -3, 2], ![-1, 1, 1, -1], ![1, -2, 0, 1]]⟩

def canonicalOutput31193 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2844⟩

theorem canonicalSound31193 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31193.moment H = canonicalOutput31193.moment H :=
  canonical_of_padded canonicalInput31193 canonicalOutput31193 (by decide) (by decide)
    ⟨false, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31194 : ExponentCode := ⟨5, 4, ![![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, -3, 2], ![0, 1, 1, -2], ![0, -2, 0, 2]]⟩

def canonicalOutput31194 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node666⟩

theorem canonicalSound31194 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31194.moment H = canonicalOutput31194.moment H :=
  canonical_of_padded canonicalInput31194 canonicalOutput31194 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31195 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, -2, 1], ![0, 1, -1, 0], ![2, 0, 0, -2], ![-2, -2, 1, 3]]⟩

def canonicalOutput31195 : ExponentCode := normalNode627

theorem canonicalSound31195 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31195.moment H = canonicalOutput31195.moment H :=
  canonical_of_padded canonicalInput31195 canonicalOutput31195 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31196 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, -2, 1], ![0, 1, 0, -1], ![2, -1, 1, -2], ![-2, -1, -1, 4]]⟩

def canonicalOutput31196 : ExponentCode := normalNode1359

theorem canonicalSound31196 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31196.moment H = canonicalOutput31196.moment H :=
  canonical_of_padded canonicalInput31196 canonicalOutput31196 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31197 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, -2, 1], ![0, 1, 0, -1], ![2, 0, -1, -1], ![-2, -2, 1, 3]]⟩

def canonicalOutput31197 : ExponentCode := normalNode628

theorem canonicalSound31197 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31197.moment H = canonicalOutput31197.moment H :=
  canonical_of_padded canonicalInput31197 canonicalOutput31197 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31198 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, -2, 1], ![1, -2, 1, 0], ![1, 1, 0, -2], ![-2, 0, -1, 3]]⟩

def canonicalOutput31198 : ExponentCode := normalNode3592

theorem canonicalSound31198 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31198.moment H = canonicalOutput31198.moment H :=
  canonical_of_padded canonicalInput31198 canonicalOutput31198 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31199 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, -2, 1], ![1, -1, 0, 0], ![1, 1, 1, -3], ![-2, -1, -1, 4]]⟩

def canonicalOutput31199 : ExponentCode := normalNode1360

theorem canonicalSound31199 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31199.moment H = canonicalOutput31199.moment H :=
  canonical_of_padded canonicalInput31199 canonicalOutput31199 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31200 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, -2, 1], ![1, 0, -1, 0], ![1, 1, 1, -3], ![-2, -2, 0, 4]]⟩

def canonicalOutput31200 : ExponentCode := normalNode431

theorem canonicalSound31200 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31200.moment H = canonicalOutput31200.moment H :=
  canonical_of_padded canonicalInput31200 canonicalOutput31200 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31201 : ExponentCode := ⟨5, 4, ![![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![-1, 1, 1, -1], ![1, -2, -2, 3]]⟩

def canonicalOutput31201 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2843⟩

theorem canonicalSound31201 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31201.moment H = canonicalOutput31201.moment H :=
  canonical_of_padded canonicalInput31201 canonicalOutput31201 (by decide) (by decide)
    ⟨false, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31202 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, -1, -1, 2], ![-2, -1, 1, 2], ![2, 1, -1, -2]]⟩

def canonicalOutput31202 : ExponentCode := normalNode2292

theorem canonicalSound31202 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31202.moment H = canonicalOutput31202.moment H :=
  canonical_of_padded canonicalInput31202 canonicalOutput31202 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation288, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31203 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, -1, -1, 2], ![-2, 1, -1, 2], ![2, -1, 1, -2]]⟩

def canonicalOutput31203 : ExponentCode := normalNode5018

theorem canonicalSound31203 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31203.moment H = canonicalOutput31203.moment H :=
  canonical_of_padded canonicalInput31203 canonicalOutput31203 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation288, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31204 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, -2, 1], ![2, 0, 0, -2], ![-2, -2, 1, 3]]⟩

def canonicalOutput31204 : ExponentCode := normalNode627

theorem canonicalSound31204 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31204.moment H = canonicalOutput31204.moment H :=
  canonical_of_padded canonicalInput31204 canonicalOutput31204 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation310, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31205 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![2, -1, 1, -2], ![-2, -1, -1, 4]]⟩

def canonicalOutput31205 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node2925⟩

theorem canonicalSound31205 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31205.moment H = canonicalOutput31205.moment H :=
  canonical_of_padded canonicalInput31205 canonicalOutput31205 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31206 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![2, 0, -1, -1], ![-2, -2, 1, 3]]⟩

def canonicalOutput31206 : ExponentCode := normalNode631

theorem canonicalSound31206 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31206.moment H = canonicalOutput31206.moment H :=
  canonical_of_padded canonicalInput31206 canonicalOutput31206 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31207 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, -2, 1, -1], ![-2, 0, -2, 4]]⟩

def canonicalOutput31207 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3118⟩

theorem canonicalSound31207 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31207.moment H = canonicalOutput31207.moment H :=
  canonical_of_padded canonicalInput31207 canonicalOutput31207 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31208 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, -1, 1, -2], ![-2, -1, -2, 5]]⟩

def canonicalOutput31208 : ExponentCode := normalNode1068

theorem canonicalSound31208 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31208.moment H = canonicalOutput31208.moment H :=
  canonical_of_padded canonicalInput31208 canonicalOutput31208 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31209 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, 0, -2, 0], ![-2, -2, 1, 3]]⟩

def canonicalOutput31209 : ExponentCode := normalNode632

theorem canonicalSound31209 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31209.moment H = canonicalOutput31209.moment H :=
  canonical_of_padded canonicalInput31209 canonicalOutput31209 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31210 : ExponentCode := ⟨5, 4, ![![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 1, -2], ![0, -2, -2, 4]]⟩

def canonicalOutput31210 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node440⟩

theorem canonicalSound31210 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31210.moment H = canonicalOutput31210.moment H :=
  canonical_of_padded canonicalInput31210 canonicalOutput31210 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31211 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -2, 0, 1], ![-1, 1, 2, -2], ![0, 0, -3, 3]]⟩

def canonicalOutput31211 : ExponentCode := normalNode11056

theorem canonicalSound31211 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31211.moment H = canonicalOutput31211.moment H :=
  canonical_of_padded canonicalInput31211 canonicalOutput31211 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation262, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31212 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -2, 0, 1], ![1, 1, 0, -2], ![-2, 0, -1, 3]]⟩

def canonicalOutput31212 : ExponentCode := normalNode1807

theorem canonicalSound31212 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31212.moment H = canonicalOutput31212.moment H :=
  canonical_of_padded canonicalInput31212 canonicalOutput31212 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation355, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput31213 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -2, 1, 0], ![1, 1, -1, -1], ![-2, 0, -1, 3]]⟩

def canonicalOutput31213 : ExponentCode := normalNode3593

theorem canonicalSound31213 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31213.moment H = canonicalOutput31213.moment H :=
  canonical_of_padded canonicalInput31213 canonicalOutput31213 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31214 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -2, 1, 0], ![1, 1, 0, -2], ![-2, 0, -2, 4]]⟩

def canonicalOutput31214 : ExponentCode := normalNode3283

theorem canonicalSound31214 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31214.moment H = canonicalOutput31214.moment H :=
  canonical_of_padded canonicalInput31214 canonicalOutput31214 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31215 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, -1, 1], ![1, 1, 1, -3], ![-2, -1, -1, 4]]⟩

def canonicalOutput31215 : ExponentCode := normalNode1362

theorem canonicalSound31215 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31215.moment H = canonicalOutput31215.moment H :=
  canonical_of_padded canonicalInput31215 canonicalOutput31215 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31216 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 1, 1, -3], ![-2, -1, -2, 5]]⟩

def canonicalOutput31216 : ExponentCode := normalNode1069

theorem canonicalSound31216 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31216.moment H = canonicalOutput31216.moment H :=
  canonical_of_padded canonicalInput31216 canonicalOutput31216 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31217 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, 0, -2, 1], ![1, 1, 1, -3], ![-2, -2, 0, 4]]⟩

def canonicalOutput31217 : ExponentCode := normalNode431

theorem canonicalSound31217 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31217.moment H = canonicalOutput31217.moment H :=
  canonical_of_padded canonicalInput31217 canonicalOutput31217 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation310, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput31218 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 1, -1, -1], ![-2, -2, 1, 3]]⟩

def canonicalOutput31218 : ExponentCode := normalNode633

theorem canonicalSound31218 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31218.moment H = canonicalOutput31218.moment H :=
  canonical_of_padded canonicalInput31218 canonicalOutput31218 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31219 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 1, 1, -3], ![-2, -2, -1, 5]]⟩

def canonicalOutput31219 : ExponentCode := normalNode352

theorem canonicalSound31219 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31219.moment H = canonicalOutput31219.moment H :=
  canonical_of_padded canonicalInput31219 canonicalOutput31219 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31220 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 1, -2, 0], ![-2, -2, 1, 3]]⟩

def canonicalOutput31220 : ExponentCode := normalNode634

theorem canonicalSound31220 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31220.moment H = canonicalOutput31220.moment H :=
  canonical_of_padded canonicalInput31220 canonicalOutput31220 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31221 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![2, -2, 0, 0], ![-2, 1, 2, -1], ![0, 0, -3, 3]]⟩

def canonicalOutput31221 : ExponentCode := normalNode5186

theorem canonicalSound31221 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31221.moment H = canonicalOutput31221.moment H :=
  canonical_of_padded canonicalInput31221 canonicalOutput31221 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation262, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31222 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![2, -2, 0, 0], ![-1, 1, 2, -2], ![-1, 0, -3, 4]]⟩

def canonicalOutput31222 : ExponentCode := normalNode5918

theorem canonicalSound31222 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31222.moment H = canonicalOutput31222.moment H :=
  canonical_of_padded canonicalInput31222 canonicalOutput31222 (by decide) (by decide)
    ⟨false, false, canonicalPermutation115, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput31223 : ExponentCode := ⟨5, 4, ![![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-1, 1, 1, -1], ![1, -2, -3, 4]]⟩

def canonicalOutput31223 : ExponentCode := normalNode11177

theorem canonicalSound31223 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31223.moment H = canonicalOutput31223.moment H :=
  canonical_of_padded canonicalInput31223 canonicalOutput31223 (by decide) (by decide)
    ⟨false, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31224 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, -1, -2, 3], ![-2, -1, 1, 2], ![2, 1, -1, -2]]⟩

def canonicalOutput31224 : ExponentCode := normalNode2275

theorem canonicalSound31224 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31224.moment H = canonicalOutput31224.moment H :=
  canonical_of_padded canonicalInput31224 canonicalOutput31224 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation288, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31225 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, -1, -2, 3], ![-2, 1, -1, 2], ![2, -1, 1, -2]]⟩

def canonicalOutput31225 : ExponentCode := normalNode5001

theorem canonicalSound31225 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31225.moment H = canonicalOutput31225.moment H :=
  canonical_of_padded canonicalInput31225 canonicalOutput31225 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation288, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31226 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, -1, -1, 2], ![-2, -1, 0, 3], ![2, 1, -1, -2]]⟩

def canonicalOutput31226 : ExponentCode := normalNode1683

theorem canonicalSound31226 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31226.moment H = canonicalOutput31226.moment H :=
  canonical_of_padded canonicalInput31226 canonicalOutput31226 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation288, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31227 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, -1, -1, 2], ![-2, -1, 1, 2], ![2, 1, -2, -1]]⟩

def canonicalOutput31227 : ExponentCode := normalNode2293

theorem canonicalSound31227 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31227.moment H = canonicalOutput31227.moment H :=
  canonical_of_padded canonicalInput31227 canonicalOutput31227 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation288, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31228 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, -1, -1, 2], ![-2, 1, -2, 3], ![2, -1, 1, -2]]⟩

def canonicalOutput31228 : ExponentCode := normalNode4797

theorem canonicalSound31228 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31228.moment H = canonicalOutput31228.moment H :=
  canonical_of_padded canonicalInput31228 canonicalOutput31228 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation288, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31229 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, -1, -1, 2], ![-2, 1, -1, 2], ![2, -1, 0, -1]]⟩

def canonicalOutput31229 : ExponentCode := normalNode2297

theorem canonicalSound31229 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31229.moment H = canonicalOutput31229.moment H :=
  canonical_of_padded canonicalInput31229 canonicalOutput31229 (by decide) (by decide)
    ⟨false, false, canonicalPermutation123, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput31230 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 1, -1, 0], ![2, -2, 1, -1], ![-2, 0, -2, 4]]⟩

def canonicalOutput31230 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3118⟩

theorem canonicalSound31230 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31230.moment H = canonicalOutput31230.moment H :=
  canonical_of_padded canonicalInput31230 canonicalOutput31230 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation310, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31231 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 1, -1, 0], ![2, 0, -2, 0], ![-2, -2, 1, 3]]⟩

def canonicalOutput31231 : ExponentCode := normalNode632

theorem canonicalSound31231 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31231.moment H = canonicalOutput31231.moment H :=
  canonical_of_padded canonicalInput31231 canonicalOutput31231 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation310, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
