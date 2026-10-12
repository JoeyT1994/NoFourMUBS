import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput19200 : ExponentCode := ⟨4, 4, ![![-1, 0, -3, 4], ![-1, 0, 2, -1], ![1, -1, 0, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput19200 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node985⟩

theorem canonicalSound19200 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19200.moment H = canonicalOutput19200.moment H :=
  canonical_of_padded canonicalInput19200 canonicalOutput19200 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19201 : ExponentCode := ⟨4, 4, ![![-1, 0, -3, 4], ![-1, 0, 2, -1], ![1, -1, 1, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput19201 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1080⟩

theorem canonicalSound19201 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19201.moment H = canonicalOutput19201.moment H :=
  canonical_of_padded canonicalInput19201 canonicalOutput19201 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19202 : ExponentCode := ⟨4, 4, ![![-1, 0, -3, 4], ![-1, 0, 2, -1], ![1, -1, 2, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput19202 : ExponentCode := normalNode9475

theorem canonicalSound19202 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19202.moment H = canonicalOutput19202.moment H :=
  canonical_of_padded canonicalInput19202 canonicalOutput19202 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput19203 : ExponentCode := ⟨5, 4, ![![-1, 0, -3, 4], ![-1, 0, 3, -2], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput19203 : ExponentCode := normalNode10654

theorem canonicalSound19203 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19203.moment H = canonicalOutput19203.moment H :=
  canonical_of_padded canonicalInput19203 canonicalOutput19203 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation181, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput19204 : ExponentCode := ⟨5, 4, ![![-1, 0, -3, 4], ![-1, 0, 3, -2], ![0, 1, -1, 0], ![1, -1, 1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput19204 : ExponentCode := normalNode10640

theorem canonicalSound19204 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19204.moment H = canonicalOutput19204.moment H :=
  canonical_of_padded canonicalInput19204 canonicalOutput19204 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation181, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput19205 : ExponentCode := ⟨5, 4, ![![-1, 0, -3, 4], ![-1, 0, 3, -2], ![0, 1, 0, -1], ![1, -1, 1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput19205 : ExponentCode := normalNode10643

theorem canonicalSound19205 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19205.moment H = canonicalOutput19205.moment H :=
  canonical_of_padded canonicalInput19205 canonicalOutput19205 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19206 : ExponentCode := ⟨5, 4, ![![-1, 0, -3, 4], ![-1, 0, 3, -2], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, -1, 1, -1]]⟩

def canonicalOutput19206 : ExponentCode := normalNode10643

theorem canonicalSound19206 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19206.moment H = canonicalOutput19206.moment H :=
  canonical_of_padded canonicalInput19206 canonicalOutput19206 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation179, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19207 : ExponentCode := ⟨5, 4, ![![-1, 0, -3, 4], ![-1, 0, 3, -2], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, -1, 0, 0]]⟩

def canonicalOutput19207 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2766⟩

theorem canonicalSound19207 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19207.moment H = canonicalOutput19207.moment H :=
  canonical_of_padded canonicalInput19207 canonicalOutput19207 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation179, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19208 : ExponentCode := ⟨5, 4, ![![-1, 0, -3, 4], ![-1, 0, 3, -2], ![0, 1, 1, -2], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput19208 : ExponentCode := normalNode10290

theorem canonicalSound19208 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19208.moment H = canonicalOutput19208.moment H :=
  canonical_of_padded canonicalInput19208 canonicalOutput19208 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19209 : ExponentCode := ⟨5, 4, ![![-1, 0, -3, 4], ![-1, 0, 3, -2], ![0, 1, 1, -2], ![1, 0, -1, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput19209 : ExponentCode := normalNode10290

theorem canonicalSound19209 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19209.moment H = canonicalOutput19209.moment H :=
  canonical_of_padded canonicalInput19209 canonicalOutput19209 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation179, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19210 : ExponentCode := ⟨5, 4, ![![-1, 0, -3, 4], ![-1, 0, 3, -2], ![0, 2, -1, -1], ![1, -1, 0, 0], ![1, -1, 1, -1]]⟩

def canonicalOutput19210 : ExponentCode := normalNode4512

theorem canonicalSound19210 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19210.moment H = canonicalOutput19210.moment H :=
  canonical_of_padded canonicalInput19210 canonicalOutput19210 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput19211 : ExponentCode := ⟨5, 4, ![![-1, 0, -3, 4], ![-1, 0, 3, -2], ![0, 2, 0, -2], ![1, -1, 0, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput19211 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2038⟩

theorem canonicalSound19211 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19211.moment H = canonicalOutput19211.moment H :=
  canonical_of_padded canonicalInput19211 canonicalOutput19211 (by decide) (by decide)
    ⟨false, true, canonicalPermutation50, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19212 : ExponentCode := ⟨4, 4, ![![-1, 0, -3, 4], ![-1, 0, 3, -2], ![1, -1, 0, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput19212 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1075⟩

theorem canonicalSound19212 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19212.moment H = canonicalOutput19212.moment H :=
  canonical_of_padded canonicalInput19212 canonicalOutput19212 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19213 : ExponentCode := ⟨4, 4, ![![-1, 0, -3, 4], ![-1, 0, 3, -2], ![1, -1, 1, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput19213 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1121⟩

theorem canonicalSound19213 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19213.moment H = canonicalOutput19213.moment H :=
  canonical_of_padded canonicalInput19213 canonicalOutput19213 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput19214 : ExponentCode := ⟨5, 4, ![![-1, 0, -3, 4], ![-1, 0, 4, -3], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput19214 : ExponentCode := normalNode10641

theorem canonicalSound19214 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19214.moment H = canonicalOutput19214.moment H :=
  canonical_of_padded canonicalInput19214 canonicalOutput19214 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation181, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput19215 : ExponentCode := ⟨5, 4, ![![-1, 0, -3, 4], ![-1, 0, 4, -3], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput19215 : ExponentCode := normalNode10641

theorem canonicalSound19215 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19215.moment H = canonicalOutput19215.moment H :=
  canonical_of_padded canonicalInput19215 canonicalOutput19215 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19216 : ExponentCode := ⟨5, 4, ![![-1, 0, -3, 4], ![-1, 0, 4, -3], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput19216 : ExponentCode := normalNode10641

theorem canonicalSound19216 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19216.moment H = canonicalOutput19216.moment H :=
  canonical_of_padded canonicalInput19216 canonicalOutput19216 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation179, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19217 : ExponentCode := ⟨5, 4, ![![-1, 0, -3, 4], ![-1, 0, 4, -3], ![0, 2, -1, -1], ![1, -1, 0, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput19217 : ExponentCode := normalNode4513

theorem canonicalSound19217 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19217.moment H = canonicalOutput19217.moment H :=
  canonical_of_padded canonicalInput19217 canonicalOutput19217 (by decide) (by decide)
    ⟨false, true, canonicalPermutation50, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19218 : ExponentCode := ⟨4, 4, ![![-1, 0, -3, 4], ![-1, 0, 4, -3], ![1, -1, 0, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput19218 : ExponentCode := normalNode9476

theorem canonicalSound19218 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19218.moment H = canonicalOutput19218.moment H :=
  canonical_of_padded canonicalInput19218 canonicalOutput19218 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19219 : ExponentCode := ⟨5, 4, ![![-1, 0, -3, 4], ![-1, 1, 1, -1], ![0, -1, 3, -2], ![1, -1, 0, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput19219 : ExponentCode := normalNode9333

theorem canonicalSound19219 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19219.moment H = canonicalOutput19219.moment H :=
  canonical_of_padded canonicalInput19219 canonicalOutput19219 (by decide) (by decide)
    ⟨false, true, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19220 : ExponentCode := ⟨5, 4, ![![-1, 0, -3, 4], ![-1, 1, 1, -1], ![0, -1, 3, -2], ![1, 0, 0, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput19220 : ExponentCode := normalNode9944

theorem canonicalSound19220 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19220.moment H = canonicalOutput19220.moment H :=
  canonical_of_padded canonicalInput19220 canonicalOutput19220 (by decide) (by decide)
    ⟨false, false, canonicalPermutation25, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput19221 : ExponentCode := ⟨5, 4, ![![-1, 0, -3, 4], ![-1, 1, 1, -1], ![0, 0, 0, 0], ![1, -1, 0, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput19221 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1340⟩

theorem canonicalSound19221 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19221.moment H = canonicalOutput19221.moment H :=
  canonical_of_padded canonicalInput19221 canonicalOutput19221 (by decide) (by decide)
    ⟨false, true, canonicalPermutation79, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19222 : ExponentCode := ⟨5, 4, ![![-1, 0, -3, 4], ![-1, 1, 1, -1], ![0, 0, 3, -3], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput19222 : ExponentCode := normalNode11096

theorem canonicalSound19222 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19222.moment H = canonicalOutput19222.moment H :=
  canonical_of_padded canonicalInput19222 canonicalOutput19222 (by decide) (by decide)
    ⟨false, true, canonicalPermutation38, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19223 : ExponentCode := ⟨5, 4, ![![-1, 0, -3, 4], ![-1, 1, 1, -1], ![0, 1, 0, -1], ![1, -2, 0, 1], ![1, 0, 2, -3]]⟩

def canonicalOutput19223 : ExponentCode := normalNode5262

theorem canonicalSound19223 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19223.moment H = canonicalOutput19223.moment H :=
  canonical_of_padded canonicalInput19223 canonicalOutput19223 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation185, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19224 : ExponentCode := ⟨4, 4, ![![-1, 0, -3, 4], ![-1, 1, 1, -1], ![1, -1, 0, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput19224 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1340⟩

theorem canonicalSound19224 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19224.moment H = canonicalOutput19224.moment H :=
  canonical_of_padded canonicalInput19224 canonicalOutput19224 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19225 : ExponentCode := ⟨4, 4, ![![-1, 0, -3, 4], ![-1, 1, 1, -1], ![1, -1, 2, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput19225 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node922⟩

theorem canonicalSound19225 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19225.moment H = canonicalOutput19225.moment H :=
  canonical_of_padded canonicalInput19225 canonicalOutput19225 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput19226 : ExponentCode := ⟨4, 4, ![![-1, 0, -3, 4], ![-1, 1, 1, -1], ![1, -1, 3, -3], ![1, 0, -1, 0]]⟩

def canonicalOutput19226 : ExponentCode := normalNode10988

theorem canonicalSound19226 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19226.moment H = canonicalOutput19226.moment H :=
  canonical_of_padded canonicalInput19226 canonicalOutput19226 (by decide) (by decide)
    ⟨false, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput19227 : ExponentCode := ⟨4, 4, ![![-1, 0, -3, 4], ![-1, 1, 1, -1], ![1, 0, -1, 0], ![1, -1, 3, -3]]⟩

def canonicalOutput19227 : ExponentCode := normalNode10988

theorem canonicalSound19227 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19227.moment H = canonicalOutput19227.moment H :=
  canonical_of_padded canonicalInput19227 canonicalOutput19227 (by decide) (by decide)
    ⟨false, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput19228 : ExponentCode := ⟨4, 4, ![![-1, 0, -3, 4], ![-1, 1, 1, -1], ![1, 0, 0, -1], ![1, -1, 2, -2]]⟩

def canonicalOutput19228 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node922⟩

theorem canonicalSound19228 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19228.moment H = canonicalOutput19228.moment H :=
  canonical_of_padded canonicalInput19228 canonicalOutput19228 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput19229 : ExponentCode := ⟨5, 4, ![![-1, 0, -3, 4], ![-1, 1, 2, -2], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput19229 : ExponentCode := normalNode11029

theorem canonicalSound19229 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19229.moment H = canonicalOutput19229.moment H :=
  canonical_of_padded canonicalInput19229 canonicalOutput19229 (by decide) (by decide)
    ⟨false, true, canonicalPermutation38, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19230 : ExponentCode := ⟨5, 4, ![![-1, 0, -3, 4], ![-1, 1, 2, -2], ![0, 1, 0, -1], ![1, -2, 1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput19230 : ExponentCode := normalNode5613

theorem canonicalSound19230 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19230.moment H = canonicalOutput19230.moment H :=
  canonical_of_padded canonicalInput19230 canonicalOutput19230 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation185, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19231 : ExponentCode := ⟨5, 4, ![![-1, 0, -3, 4], ![-1, 1, 2, -2], ![0, 1, 0, -1], ![1, -1, 1, -1], ![1, -1, 0, 0]]⟩

def canonicalOutput19231 : ExponentCode := normalNode9635

theorem canonicalSound19231 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19231.moment H = canonicalOutput19231.moment H :=
  canonical_of_padded canonicalInput19231 canonicalOutput19231 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19232 : ExponentCode := ⟨5, 4, ![![-1, 0, -3, 4], ![-1, 1, 2, -2], ![0, 1, 1, -2], ![1, -2, 0, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput19232 : ExponentCode := normalNode5261

theorem canonicalSound19232 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19232.moment H = canonicalOutput19232.moment H :=
  canonical_of_padded canonicalInput19232 canonicalOutput19232 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation185, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19233 : ExponentCode := ⟨4, 4, ![![-1, 0, -3, 4], ![-1, 1, 2, -2], ![1, -1, 0, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput19233 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1095⟩

theorem canonicalSound19233 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19233.moment H = canonicalOutput19233.moment H :=
  canonical_of_padded canonicalInput19233 canonicalOutput19233 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation154, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput19234 : ExponentCode := ⟨4, 4, ![![-1, 0, -3, 4], ![-1, 1, 2, -2], ![1, 0, 0, -1], ![1, -1, 1, -1]]⟩

def canonicalOutput19234 : ExponentCode := normalNode7408

theorem canonicalSound19234 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19234.moment H = canonicalOutput19234.moment H :=
  canonical_of_padded canonicalInput19234 canonicalOutput19234 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput19235 : ExponentCode := ⟨5, 4, ![![-1, 0, -3, 4], ![-1, 1, 3, -3], ![0, 0, 0, 0], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput19235 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1102⟩

theorem canonicalSound19235 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19235.moment H = canonicalOutput19235.moment H :=
  canonical_of_padded canonicalInput19235 canonicalOutput19235 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation153, canonicalPermutation22⟩ (by decide +kernel) hH

def canonicalInput19236 : ExponentCode := ⟨5, 4, ![![-1, 0, -3, 4], ![-1, 1, 3, -3], ![0, 1, -1, 0], ![1, -2, 1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput19236 : ExponentCode := normalNode5444

theorem canonicalSound19236 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19236.moment H = canonicalOutput19236.moment H :=
  canonical_of_padded canonicalInput19236 canonicalOutput19236 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation185, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput19237 : ExponentCode := ⟨5, 4, ![![-1, 0, -3, 4], ![-1, 1, 3, -3], ![0, 1, -1, 0], ![1, -1, 1, -1], ![1, -1, 0, 0]]⟩

def canonicalOutput19237 : ExponentCode := normalNode9638

theorem canonicalSound19237 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19237.moment H = canonicalOutput19237.moment H :=
  canonical_of_padded canonicalInput19237 canonicalOutput19237 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19238 : ExponentCode := ⟨4, 4, ![![-1, 0, -3, 4], ![-1, 1, 3, -3], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput19238 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1102⟩

theorem canonicalSound19238 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19238.moment H = canonicalOutput19238.moment H :=
  canonical_of_padded canonicalInput19238 canonicalOutput19238 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation153, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput19239 : ExponentCode := ⟨4, 4, ![![-1, 0, -3, 4], ![-1, 1, 3, -3], ![1, 0, -1, 0], ![1, -1, 1, -1]]⟩

def canonicalOutput19239 : ExponentCode := normalNode9474

theorem canonicalSound19239 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19239.moment H = canonicalOutput19239.moment H :=
  canonical_of_padded canonicalInput19239 canonicalOutput19239 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput19240 : ExponentCode := ⟨4, 4, ![![-1, 0, -3, 4], ![-1, 1, 3, -3], ![1, 0, 0, -1], ![1, -1, 0, 0]]⟩

def canonicalOutput19240 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1102⟩

theorem canonicalSound19240 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19240.moment H = canonicalOutput19240.moment H :=
  canonical_of_padded canonicalInput19240 canonicalOutput19240 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation153, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput19241 : ExponentCode := ⟨4, 4, ![![-1, 0, -3, 4], ![-1, 1, 4, -4], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput19241 : ExponentCode := normalNode9432

theorem canonicalSound19241 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19241.moment H = canonicalOutput19241.moment H :=
  canonical_of_padded canonicalInput19241 canonicalOutput19241 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation155, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput19242 : ExponentCode := ⟨4, 4, ![![-1, 0, -3, 4], ![-1, 1, 4, -4], ![1, 0, -1, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput19242 : ExponentCode := normalNode9432

theorem canonicalSound19242 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19242.moment H = canonicalOutput19242.moment H :=
  canonical_of_padded canonicalInput19242 canonicalOutput19242 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput19243 : ExponentCode := ⟨4, 4, ![![-1, 0, -3, 4], ![-1, 2, 0, -1], ![1, -1, 0, 0], ![1, -1, 3, -3]]⟩

def canonicalOutput19243 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1343⟩

theorem canonicalSound19243 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19243.moment H = canonicalOutput19243.moment H :=
  canonical_of_padded canonicalInput19243 canonicalOutput19243 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput19244 : ExponentCode := ⟨4, 4, ![![-1, 0, -3, 4], ![-1, 2, 0, -1], ![1, -1, 1, -1], ![1, -1, 2, -2]]⟩

def canonicalOutput19244 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node693⟩

theorem canonicalSound19244 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19244.moment H = canonicalOutput19244.moment H :=
  canonical_of_padded canonicalInput19244 canonicalOutput19244 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19245 : ExponentCode := ⟨5, 4, ![![-1, 0, -3, 4], ![-1, 2, 1, -2], ![0, -1, 3, -2], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput19245 : ExponentCode := normalNode5119

theorem canonicalSound19245 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19245.moment H = canonicalOutput19245.moment H :=
  canonical_of_padded canonicalInput19245 canonicalOutput19245 (by decide) (by decide)
    ⟨false, true, canonicalPermutation44, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19246 : ExponentCode := ⟨4, 4, ![![-1, 0, -3, 4], ![-1, 2, 1, -2], ![1, -1, 0, 0], ![1, -1, 2, -2]]⟩

def canonicalOutput19246 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1089⟩

theorem canonicalSound19246 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19246.moment H = canonicalOutput19246.moment H :=
  canonical_of_padded canonicalInput19246 canonicalOutput19246 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation154, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput19247 : ExponentCode := ⟨4, 4, ![![-1, 0, -3, 4], ![-1, 2, 2, -3], ![1, -1, 0, 0], ![1, -1, 1, -1]]⟩

def canonicalOutput19247 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1019⟩

theorem canonicalSound19247 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19247.moment H = canonicalOutput19247.moment H :=
  canonical_of_padded canonicalInput19247 canonicalOutput19247 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput19248 : ExponentCode := ⟨4, 4, ![![-1, 0, -3, 4], ![-1, 2, 3, -4], ![1, -1, 0, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput19248 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1022⟩

theorem canonicalSound19248 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19248.moment H = canonicalOutput19248.moment H :=
  canonical_of_padded canonicalInput19248 canonicalOutput19248 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput19249 : ExponentCode := ⟨4, 4, ![![-1, 0, -3, 4], ![0, -2, 1, 1], ![0, 1, 0, -1], ![1, 1, 2, -4]]⟩

def canonicalOutput19249 : ExponentCode := normalNode7386

theorem canonicalSound19249 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19249.moment H = canonicalOutput19249.moment H :=
  canonical_of_padded canonicalInput19249 canonicalOutput19249 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19250 : ExponentCode := ⟨3, 4, ![![-1, 0, -3, 4], ![0, -2, 1, 1], ![1, 2, 2, -5]]⟩

def canonicalOutput19250 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node205⟩

theorem canonicalSound19250 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19250.moment H = canonicalOutput19250.moment H :=
  canonical_of_padded canonicalInput19250 canonicalOutput19250 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput19251 : ExponentCode := ⟨4, 4, ![![-1, 0, -3, 4], ![0, -2, 2, 0], ![0, 1, 0, -1], ![1, 1, 1, -3]]⟩

def canonicalOutput19251 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node935⟩

theorem canonicalSound19251 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19251.moment H = canonicalOutput19251.moment H :=
  canonical_of_padded canonicalInput19251 canonicalOutput19251 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19252 : ExponentCode := ⟨4, 4, ![![-1, 0, -3, 4], ![0, -2, 2, 0], ![0, 1, 1, -2], ![1, 1, 0, -2]]⟩

def canonicalOutput19252 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node997⟩

theorem canonicalSound19252 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19252.moment H = canonicalOutput19252.moment H :=
  canonical_of_padded canonicalInput19252 canonicalOutput19252 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19253 : ExponentCode := ⟨4, 4, ![![-1, 0, -3, 4], ![0, -2, 2, 0], ![0, 1, 2, -3], ![1, 1, -1, -1]]⟩

def canonicalOutput19253 : ExponentCode := normalNode9370

theorem canonicalSound19253 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19253.moment H = canonicalOutput19253.moment H :=
  canonical_of_padded canonicalInput19253 canonicalOutput19253 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19254 : ExponentCode := ⟨4, 4, ![![-1, 0, -3, 4], ![0, -2, 3, -1], ![0, 1, 1, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput19254 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1097⟩

theorem canonicalSound19254 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19254.moment H = canonicalOutput19254.moment H :=
  canonical_of_padded canonicalInput19254 canonicalOutput19254 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19255 : ExponentCode := ⟨3, 4, ![![-1, 0, -3, 4], ![0, -2, 3, -1], ![1, 2, 0, -3]]⟩

def canonicalOutput19255 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node88⟩

theorem canonicalSound19255 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19255.moment H = canonicalOutput19255.moment H :=
  canonical_of_padded canonicalInput19255 canonicalOutput19255 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput19256 : ExponentCode := ⟨4, 4, ![![-1, 0, -3, 4], ![0, -2, 4, -2], ![0, 1, 0, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput19256 : ExponentCode := normalNode7434

theorem canonicalSound19256 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19256.moment H = canonicalOutput19256.moment H :=
  canonical_of_padded canonicalInput19256 canonicalOutput19256 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput19257 : ExponentCode := ⟨4, 4, ![![-1, 0, -3, 4], ![0, -2, 4, -2], ![0, 2, -1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput19257 : ExponentCode := normalNode7435

theorem canonicalSound19257 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19257.moment H = canonicalOutput19257.moment H :=
  canonical_of_padded canonicalInput19257 canonicalOutput19257 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput19258 : ExponentCode := ⟨3, 4, ![![-1, 0, -3, 4], ![0, -2, 4, -2], ![1, 2, -1, -2]]⟩

def canonicalOutput19258 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node138⟩

theorem canonicalSound19258 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19258.moment H = canonicalOutput19258.moment H :=
  canonical_of_padded canonicalInput19258 canonicalOutput19258 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput19259 : ExponentCode := ⟨5, 4, ![![-1, 0, -3, 4], ![0, -1, 0, 1], ![-1, 2, 0, -1], ![1, -1, 1, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput19259 : ExponentCode := normalNode5275

theorem canonicalSound19259 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19259.moment H = canonicalOutput19259.moment H :=
  canonical_of_padded canonicalInput19259 canonicalOutput19259 (by decide) (by decide)
    ⟨false, true, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19260 : ExponentCode := ⟨5, 4, ![![-1, 0, -3, 4], ![0, -1, 0, 1], ![-1, 2, 0, -1], ![1, -1, 2, -2], ![1, 0, 1, -2]]⟩

def canonicalOutput19260 : ExponentCode := normalNode5309

theorem canonicalSound19260 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19260.moment H = canonicalOutput19260.moment H :=
  canonical_of_padded canonicalInput19260 canonicalOutput19260 (by decide) (by decide)
    ⟨false, true, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19261 : ExponentCode := ⟨5, 4, ![![-1, 0, -3, 4], ![0, -1, 0, 1], ![-1, 2, 1, -2], ![1, -1, 0, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput19261 : ExponentCode := normalNode5005

theorem canonicalSound19261 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19261.moment H = canonicalOutput19261.moment H :=
  canonical_of_padded canonicalInput19261 canonicalOutput19261 (by decide) (by decide)
    ⟨false, true, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19262 : ExponentCode := ⟨5, 4, ![![-1, 0, -3, 4], ![0, -1, 0, 1], ![0, 1, 0, -1], ![0, 0, 1, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput19262 : ExponentCode := normalNode9665

theorem canonicalSound19262 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19262.moment H = canonicalOutput19262.moment H :=
  canonical_of_padded canonicalInput19262 canonicalOutput19262 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19263 : ExponentCode := ⟨5, 4, ![![-1, 0, -3, 4], ![0, -1, 0, 1], ![0, 1, 0, -1], ![0, 0, 2, -2], ![1, 0, 1, -2]]⟩

def canonicalOutput19263 : ExponentCode := normalNode9667

theorem canonicalSound19263 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19263.moment H = canonicalOutput19263.moment H :=
  canonical_of_padded canonicalInput19263 canonicalOutput19263 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
