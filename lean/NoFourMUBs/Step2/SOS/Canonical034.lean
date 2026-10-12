import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes00
import NoFourMUBs.Step2.SOS.MomentCodes01
import NoFourMUBs.Step2.SOS.MomentCodes03
import NoFourMUBs.Step2.SOS.MomentCodes04
import NoFourMUBs.Step2.SOS.MomentCodes08
import NoFourMUBs.Step2.SOS.MomentCodes09
import NoFourMUBs.Step2.SOS.MomentCodes17
import NoFourMUBs.Step2.SOS.NormalizationNodes002
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput2176 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 2, 0, -2], ![1, -1, 1, -1], ![1, 1, -3, 1]]⟩

def canonicalOutput2176 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code593

theorem canonicalSound2176 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2176.moment H = canonicalOutput2176.moment H :=
  canonical_of_padded canonicalInput2176 canonicalOutput2176 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput2177 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 2, 0, -2], ![1, 0, -3, 2], ![1, 0, 1, -2]]⟩

def canonicalOutput2177 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code206

theorem canonicalSound2177 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2177.moment H = canonicalOutput2177.moment H :=
  canonical_of_padded canonicalInput2177 canonicalOutput2177 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2178 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 2, 0, -2], ![1, 0, 0, -1], ![1, 0, -2, 1]]⟩

def canonicalOutput2178 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node831⟩

theorem canonicalSound2178 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2178.moment H = canonicalOutput2178.moment H :=
  canonical_of_padded canonicalInput2178 canonicalOutput2178 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput2179 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 2, 1, -3], ![1, -1, -1, 1], ![1, 1, -2, 0]]⟩

def canonicalOutput2179 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code597

theorem canonicalSound2179 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2179.moment H = canonicalOutput2179.moment H :=
  canonical_of_padded canonicalInput2179 canonicalOutput2179 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput2180 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 2, 1, -3], ![1, -1, 0, 0], ![1, 1, -3, 1]]⟩

def canonicalOutput2180 : ExponentCode := normalNode9033

theorem canonicalSound2180 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2180.moment H = canonicalOutput2180.moment H :=
  canonical_of_padded canonicalInput2180 canonicalOutput2180 (by decide) (by decide)
    ⟨true, true, canonicalPermutation1, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput2181 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 2, 1, -3], ![1, 0, -2, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput2181 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node841⟩

theorem canonicalSound2181 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2181.moment H = canonicalOutput2181.moment H :=
  canonical_of_padded canonicalInput2181 canonicalOutput2181 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput2182 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 2, 1, -3], ![1, 0, -1, 0], ![1, 0, -2, 1]]⟩

def canonicalOutput2182 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node841⟩

theorem canonicalSound2182 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2182.moment H = canonicalOutput2182.moment H :=
  canonical_of_padded canonicalInput2182 canonicalOutput2182 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput2183 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 3, -3, 0], ![1, -1, 0, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput2183 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1017⟩

theorem canonicalSound2183 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2183.moment H = canonicalOutput2183.moment H :=
  canonical_of_padded canonicalInput2183 canonicalOutput2183 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation154, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput2184 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 3, -3, 0], ![1, -1, 1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput2184 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1012⟩

theorem canonicalSound2184 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2184.moment H = canonicalOutput2184.moment H :=
  canonical_of_padded canonicalInput2184 canonicalOutput2184 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput2185 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 3, -2, -1], ![1, -1, -1, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput2185 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1116

theorem canonicalSound2185 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2185.moment H = canonicalOutput2185.moment H :=
  canonical_of_padded canonicalInput2185 canonicalOutput2185 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput2186 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 3, -2, -1], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput2186 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1052⟩

theorem canonicalSound2186 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2186.moment H = canonicalOutput2186.moment H :=
  canonical_of_padded canonicalInput2186 canonicalOutput2186 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation153, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput2187 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 3, -2, -1], ![1, -1, 1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput2187 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1073⟩

theorem canonicalSound2187 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2187.moment H = canonicalOutput2187.moment H :=
  canonical_of_padded canonicalInput2187 canonicalOutput2187 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput2188 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 3, -1, -2], ![1, -1, -1, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput2188 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1073⟩

theorem canonicalSound2188 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2188.moment H = canonicalOutput2188.moment H :=
  canonical_of_padded canonicalInput2188 canonicalOutput2188 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation151, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput2189 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 3, -1, -2], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput2189 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1052⟩

theorem canonicalSound2189 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2189.moment H = canonicalOutput2189.moment H :=
  canonical_of_padded canonicalInput2189 canonicalOutput2189 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation155, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput2190 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 3, -1, -2], ![1, -1, 1, -1], ![1, 0, -2, 1]]⟩

def canonicalOutput2190 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1116

theorem canonicalSound2190 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2190.moment H = canonicalOutput2190.moment H :=
  canonical_of_padded canonicalInput2190 canonicalOutput2190 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput2191 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 3, 0, -3], ![1, -1, -2, 2], ![1, 0, 0, -1]]⟩

def canonicalOutput2191 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node729⟩

theorem canonicalSound2191 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2191.moment H = canonicalOutput2191.moment H :=
  canonical_of_padded canonicalInput2191 canonicalOutput2191 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput2192 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 3, 0, -3], ![1, -1, -1, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput2192 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1012⟩

theorem canonicalSound2192 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2192.moment H = canonicalOutput2192.moment H :=
  canonical_of_padded canonicalInput2192 canonicalOutput2192 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput2193 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 3, 0, -3], ![1, -1, 0, 0], ![1, 0, -2, 1]]⟩

def canonicalOutput2193 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1017⟩

theorem canonicalSound2193 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2193.moment H = canonicalOutput2193.moment H :=
  canonical_of_padded canonicalInput2193 canonicalOutput2193 (by decide) (by decide)
    ⟨true, true, canonicalPermutation1, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput2194 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 3, 1, -4], ![1, -1, -2, 2], ![1, 0, -1, 0]]⟩

def canonicalOutput2194 : ExponentCode := normalNode6955

theorem canonicalSound2194 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2194.moment H = canonicalOutput2194.moment H :=
  canonical_of_padded canonicalInput2194 canonicalOutput2194 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput2195 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 3, 1, -4], ![1, -1, -1, 1], ![1, 0, -2, 1]]⟩

def canonicalOutput2195 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code570

theorem canonicalSound2195 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2195.moment H = canonicalOutput2195.moment H :=
  canonical_of_padded canonicalInput2195 canonicalOutput2195 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput2196 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 3, 1, -4], ![1, -1, 0, 0], ![1, 0, -3, 2]]⟩

def canonicalOutput2196 : ExponentCode := normalNode8910

theorem canonicalSound2196 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2196.moment H = canonicalOutput2196.moment H :=
  canonical_of_padded canonicalInput2196 canonicalOutput2196 (by decide) (by decide)
    ⟨true, true, canonicalPermutation1, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput2197 : ExponentCode := ⟨3, 4, ![![-2, -2, 2, 2], ![0, 4, -4, 0], ![2, -2, 2, -2]]⟩

def canonicalOutput2197 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code10

theorem canonicalSound2197 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2197.moment H = canonicalOutput2197.moment H :=
  canonical_of_padded canonicalInput2197 canonicalOutput2197 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput2198 : ExponentCode := ⟨3, 4, ![![-2, -2, 2, 2], ![1, -2, 2, -1], ![1, 4, -4, -1]]⟩

def canonicalOutput2198 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code227

theorem canonicalSound2198 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2198.moment H = canonicalOutput2198.moment H :=
  canonical_of_padded canonicalInput2198 canonicalOutput2198 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput2199 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![1, -1, -2, 2], ![0, 1, 1, -2], ![1, 2, -1, -2]]⟩

def canonicalOutput2199 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code218

theorem canonicalSound2199 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2199.moment H = canonicalOutput2199.moment H :=
  canonical_of_padded canonicalInput2199 canonicalOutput2199 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2200 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![1, -1, -2, 2], ![0, 2, 1, -3], ![1, 1, -1, -1]]⟩

def canonicalOutput2200 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code220

theorem canonicalSound2200 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2200.moment H = canonicalOutput2200.moment H :=
  canonical_of_padded canonicalInput2200 canonicalOutput2200 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2201 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![1, -1, -2, 2], ![0, 3, -1, -2], ![1, 0, 1, -2]]⟩

def canonicalOutput2201 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code221

theorem canonicalSound2201 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2201.moment H = canonicalOutput2201.moment H :=
  canonical_of_padded canonicalInput2201 canonicalOutput2201 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2202 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![1, -1, -2, 2], ![0, 3, 1, -4], ![1, 0, -1, 0]]⟩

def canonicalOutput2202 : ExponentCode := normalNode6955

theorem canonicalSound2202 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2202.moment H = canonicalOutput2202.moment H :=
  canonical_of_padded canonicalInput2202 canonicalOutput2202 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput2203 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![1, -1, -1, 1], ![0, 3, -2, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput2203 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1116

theorem canonicalSound2203 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2203.moment H = canonicalOutput2203.moment H :=
  canonical_of_padded canonicalInput2203 canonicalOutput2203 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput2204 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![1, 0, -2, 1], ![0, 1, 1, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput2204 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code616

theorem canonicalSound2204 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2204.moment H = canonicalOutput2204.moment H :=
  canonical_of_padded canonicalInput2204 canonicalOutput2204 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput2205 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![1, 0, -2, 1], ![0, 2, -1, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput2205 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node518⟩

theorem canonicalSound2205 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2205.moment H = canonicalOutput2205.moment H :=
  canonical_of_padded canonicalInput2205 canonicalOutput2205 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput2206 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![1, 1, -4, 2], ![0, 1, 1, -2], ![1, 0, 1, -2]]⟩

def canonicalOutput2206 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code216

theorem canonicalSound2206 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2206.moment H = canonicalOutput2206.moment H :=
  canonical_of_padded canonicalInput2206 canonicalOutput2206 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput2207 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![1, 1, -4, 2], ![0, 1, 2, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput2207 : ExponentCode := normalNode6250

theorem canonicalSound2207 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2207.moment H = canonicalOutput2207.moment H :=
  canonical_of_padded canonicalInput2207 canonicalOutput2207 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput2208 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![1, 1, -3, 1], ![0, 1, 1, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput2208 : ExponentCode := normalNode7063

theorem canonicalSound2208 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2208.moment H = canonicalOutput2208.moment H :=
  canonical_of_padded canonicalInput2208 canonicalOutput2208 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput2209 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![1, 1, -3, 1], ![0, 2, 0, -2], ![1, -1, 1, -1]]⟩

def canonicalOutput2209 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code593

theorem canonicalSound2209 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2209.moment H = canonicalOutput2209.moment H :=
  canonical_of_padded canonicalInput2209 canonicalOutput2209 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput2210 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![1, 1, -2, 0], ![0, 2, -1, -1], ![1, -1, 1, -1]]⟩

def canonicalOutput2210 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node500⟩

theorem canonicalSound2210 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2210.moment H = canonicalOutput2210.moment H :=
  canonical_of_padded canonicalInput2210 canonicalOutput2210 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput2211 : ExponentCode := ⟨3, 4, ![![-2, -2, 3, 1], ![-2, 3, -2, 1], ![4, -1, -1, -2]]⟩

def canonicalOutput2211 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code13

theorem canonicalSound2211 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2211.moment H = canonicalOutput2211.moment H :=
  canonical_of_padded canonicalInput2211 canonicalOutput2211 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput2212 : ExponentCode := ⟨5, 4, ![![-2, -2, 3, 1], ![-1, 1, -1, 1], ![0, 2, -1, -1], ![1, 0, -1, 0], ![2, -1, 0, -1]]⟩

def canonicalOutput2212 : ExponentCode := normalNode6161

theorem canonicalSound2212 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2212.moment H = canonicalOutput2212.moment H :=
  canonical_of_padded canonicalInput2212 canonicalOutput2212 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation154, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput2213 : ExponentCode := ⟨5, 4, ![![-2, -2, 3, 1], ![-1, 1, -1, 1], ![0, 2, -1, -1], ![1, 0, 0, -1], ![2, -1, -1, 0]]⟩

def canonicalOutput2213 : ExponentCode := normalNode6162

theorem canonicalSound2213 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2213.moment H = canonicalOutput2213.moment H :=
  canonical_of_padded canonicalInput2213 canonicalOutput2213 (by decide) (by decide)
    ⟨false, true, canonicalPermutation1, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput2214 : ExponentCode := ⟨3, 4, ![![-2, -2, 3, 1], ![-1, 1, 2, -2], ![3, 1, -5, 1]]⟩

def canonicalOutput2214 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code100

theorem canonicalSound2214 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2214.moment H = canonicalOutput2214.moment H :=
  canonical_of_padded canonicalInput2214 canonicalOutput2214 (by decide) (by decide)
    ⟨true, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput2215 : ExponentCode := ⟨3, 4, ![![-2, -2, 3, 1], ![-1, 2, -2, 1], ![3, 0, -1, -2]]⟩

def canonicalOutput2215 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node103⟩

theorem canonicalSound2215 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2215.moment H = canonicalOutput2215.moment H :=
  canonical_of_padded canonicalInput2215 canonicalOutput2215 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation151, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput2216 : ExponentCode := ⟨3, 4, ![![-2, -2, 3, 1], ![-1, 3, 0, -2], ![3, -1, -3, 1]]⟩

def canonicalOutput2216 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code84

theorem canonicalSound2216 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2216.moment H = canonicalOutput2216.moment H :=
  canonical_of_padded canonicalInput2216 canonicalOutput2216 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput2217 : ExponentCode := ⟨3, 4, ![![-2, -2, 3, 1], ![-1, 4, -1, -2], ![3, -2, -2, 1]]⟩

def canonicalOutput2217 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code13

theorem canonicalSound2217 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2217.moment H = canonicalOutput2217.moment H :=
  canonical_of_padded canonicalInput2217 canonicalOutput2217 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput2218 : ExponentCode := ⟨4, 4, ![![-2, -2, 3, 1], ![0, -1, -2, 3], ![1, 0, -1, 0], ![1, 3, 0, -4]]⟩

def canonicalOutput2218 : ExponentCode := normalNode6716

theorem canonicalSound2218 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2218.moment H = canonicalOutput2218.moment H :=
  canonical_of_padded canonicalInput2218 canonicalOutput2218 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput2219 : ExponentCode := ⟨5, 4, ![![-2, -2, 3, 1], ![0, -1, -1, 2], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 2, -1, -2]]⟩

def canonicalOutput2219 : ExponentCode := normalNode543

theorem canonicalSound2219 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2219.moment H = canonicalOutput2219.moment H :=
  canonical_of_padded canonicalInput2219 canonicalOutput2219 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput2220 : ExponentCode := ⟨5, 4, ![![-2, -2, 3, 1], ![0, -1, -1, 2], ![0, 3, -2, -1], ![1, 0, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput2220 : ExponentCode := normalNode562

theorem canonicalSound2220 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2220.moment H = canonicalOutput2220.moment H :=
  canonical_of_padded canonicalInput2220 canonicalOutput2220 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput2221 : ExponentCode := ⟨5, 4, ![![-2, -2, 3, 1], ![0, -1, -1, 2], ![0, 3, -1, -2], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput2221 : ExponentCode := normalNode560

theorem canonicalSound2221 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2221.moment H = canonicalOutput2221.moment H :=
  canonical_of_padded canonicalInput2221 canonicalOutput2221 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput2222 : ExponentCode := ⟨4, 4, ![![-2, -2, 3, 1], ![0, -1, -1, 2], ![1, 0, -2, 1], ![1, 3, 0, -4]]⟩

def canonicalOutput2222 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code292

theorem canonicalSound2222 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2222.moment H = canonicalOutput2222.moment H :=
  canonical_of_padded canonicalInput2222 canonicalOutput2222 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput2223 : ExponentCode := ⟨4, 4, ![![-2, -2, 3, 1], ![0, -1, -1, 2], ![1, 0, -1, 0], ![1, 3, -1, -3]]⟩

def canonicalOutput2223 : ExponentCode := normalNode7917

theorem canonicalSound2223 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2223.moment H = canonicalOutput2223.moment H :=
  canonical_of_padded canonicalInput2223 canonicalOutput2223 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput2224 : ExponentCode := ⟨4, 4, ![![-2, -2, 3, 1], ![0, -1, -1, 2], ![1, 0, 0, -1], ![1, 3, -2, -2]]⟩

def canonicalOutput2224 : ExponentCode := normalNode10355

theorem canonicalSound2224 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2224.moment H = canonicalOutput2224.moment H :=
  canonical_of_padded canonicalInput2224 canonicalOutput2224 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput2225 : ExponentCode := ⟨5, 4, ![![-2, -2, 3, 1], ![0, 0, -3, 3], ![0, 1, 0, -1], ![1, 1, 0, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput2225 : ExponentCode := normalNode951

theorem canonicalSound2225 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2225.moment H = canonicalOutput2225.moment H :=
  canonical_of_padded canonicalInput2225 canonicalOutput2225 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2226 : ExponentCode := ⟨4, 4, ![![-2, -2, 3, 1], ![0, 0, -3, 3], ![0, 1, 0, -1], ![2, 1, 0, -3]]⟩

def canonicalOutput2226 : ExponentCode := normalNode6253

theorem canonicalSound2226 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2226.moment H = canonicalOutput2226.moment H :=
  canonical_of_padded canonicalInput2226 canonicalOutput2226 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput2227 : ExponentCode := ⟨5, 4, ![![-2, -2, 3, 1], ![0, 0, -3, 3], ![0, 2, 0, -2], ![1, 0, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput2227 : ExponentCode := normalNode950

theorem canonicalSound2227 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2227.moment H = canonicalOutput2227.moment H :=
  canonical_of_padded canonicalInput2227 canonicalOutput2227 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2228 : ExponentCode := ⟨4, 4, ![![-2, -2, 3, 1], ![0, 0, -3, 3], ![1, -1, 0, 0], ![1, 3, 0, -4]]⟩

def canonicalOutput2228 : ExponentCode := normalNode9841

theorem canonicalSound2228 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2228.moment H = canonicalOutput2228.moment H :=
  canonical_of_padded canonicalInput2228 canonicalOutput2228 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput2229 : ExponentCode := ⟨4, 4, ![![-2, -2, 3, 1], ![0, 0, -3, 3], ![1, 0, 0, -1], ![1, 2, 0, -3]]⟩

def canonicalOutput2229 : ExponentCode := normalNode6253

theorem canonicalSound2229 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2229.moment H = canonicalOutput2229.moment H :=
  canonical_of_padded canonicalInput2229 canonicalOutput2229 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput2230 : ExponentCode := ⟨5, 4, ![![-2, -2, 3, 1], ![0, 0, -2, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![2, 1, -2, -1]]⟩

def canonicalOutput2230 : ExponentCode := normalNode605

theorem canonicalSound2230 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2230.moment H = canonicalOutput2230.moment H :=
  canonical_of_padded canonicalInput2230 canonicalOutput2230 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput2231 : ExponentCode := ⟨5, 4, ![![-2, -2, 3, 1], ![0, 0, -2, 2], ![0, 1, -1, 0], ![0, 1, -1, 0], ![2, 0, 1, -3]]⟩

def canonicalOutput2231 : ExponentCode := normalNode684

theorem canonicalSound2231 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2231.moment H = canonicalOutput2231.moment H :=
  canonical_of_padded canonicalInput2231 canonicalOutput2231 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput2232 : ExponentCode := ⟨5, 4, ![![-2, -2, 3, 1], ![0, 0, -2, 2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, 0, 0, -2]]⟩

def canonicalOutput2232 : ExponentCode := normalNode679

theorem canonicalSound2232 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2232.moment H = canonicalOutput2232.moment H :=
  canonical_of_padded canonicalInput2232 canonicalOutput2232 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput2233 : ExponentCode := ⟨5, 4, ![![-2, -2, 3, 1], ![0, 0, -2, 2], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput2233 : ExponentCode := normalNode686

theorem canonicalSound2233 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2233.moment H = canonicalOutput2233.moment H :=
  canonical_of_padded canonicalInput2233 canonicalOutput2233 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput2234 : ExponentCode := ⟨5, 4, ![![-2, -2, 3, 1], ![0, 0, -2, 2], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput2234 : ExponentCode := normalNode683

theorem canonicalSound2234 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2234.moment H = canonicalOutput2234.moment H :=
  canonical_of_padded canonicalInput2234 canonicalOutput2234 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput2235 : ExponentCode := ⟨4, 4, ![![-2, -2, 3, 1], ![0, 0, -2, 2], ![0, 1, -1, 0], ![2, 1, 0, -3]]⟩

def canonicalOutput2235 : ExponentCode := normalNode6784

theorem canonicalSound2235 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2235.moment H = canonicalOutput2235.moment H :=
  canonical_of_padded canonicalInput2235 canonicalOutput2235 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput2236 : ExponentCode := ⟨5, 4, ![![-2, -2, 3, 1], ![0, 0, -2, 2], ![0, 1, 0, -1], ![0, 1, -1, 0], ![2, 0, 0, -2]]⟩

def canonicalOutput2236 : ExponentCode := normalNode679

theorem canonicalSound2236 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2236.moment H = canonicalOutput2236.moment H :=
  canonical_of_padded canonicalInput2236 canonicalOutput2236 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput2237 : ExponentCode := ⟨5, 4, ![![-2, -2, 3, 1], ![0, 0, -2, 2], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput2237 : ExponentCode := normalNode683

theorem canonicalSound2237 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2237.moment H = canonicalOutput2237.moment H :=
  canonical_of_padded canonicalInput2237 canonicalOutput2237 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput2238 : ExponentCode := ⟨5, 4, ![![-2, -2, 3, 1], ![0, 0, -2, 2], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput2238 : ExponentCode := normalNode682

theorem canonicalSound2238 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2238.moment H = canonicalOutput2238.moment H :=
  canonical_of_padded canonicalInput2238 canonicalOutput2238 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput2239 : ExponentCode := ⟨5, 4, ![![-2, -2, 3, 1], ![0, 0, -2, 2], ![0, 1, 0, -1], ![1, 0, 1, -2], ![1, 1, -2, 0]]⟩

def canonicalOutput2239 : ExponentCode := normalNode675

theorem canonicalSound2239 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2239.moment H = canonicalOutput2239.moment H :=
  canonical_of_padded canonicalInput2239 canonicalOutput2239 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
