import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes033
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes23
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput13184 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 1, 2], ![0, 0, 1, -2, 1], ![0, 0, 1, 1, -2], ![1, 2, -2, 0, -1]]⟩

def canonicalOutput13184 : ExponentCode := normalNode5234

theorem canonicalSound13184 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13184.moment H = canonicalOutput13184.moment H :=
  canonical_of_padded canonicalInput13184 canonicalOutput13184 (by decide) (by decide)
    ⟨true, false, canonicalPermutation31, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput13185 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 1, 2], ![0, 0, 1, -2, 1], ![0, 1, -1, 1, -1], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput13185 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1745⟩

theorem canonicalSound13185 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13185.moment H = canonicalOutput13185.moment H :=
  canonical_of_padded canonicalInput13185 canonicalOutput13185 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput13186 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 1, 2], ![0, 0, 1, -2, 1], ![0, 1, 0, 1, -2], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput13186 : ExponentCode := normalNode2507

theorem canonicalSound13186 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13186.moment H = canonicalOutput13186.moment H :=
  canonical_of_padded canonicalInput13186 canonicalOutput13186 (by decide) (by decide)
    ⟨true, false, canonicalPermutation43, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput13187 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 1, 2], ![0, 0, 1, -2, 1], ![0, 1, 1, 0, -2], ![1, 1, -2, 1, -1]]⟩

def canonicalOutput13187 : ExponentCode := normalNode4467

theorem canonicalSound13187 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13187.moment H = canonicalOutput13187.moment H :=
  canonical_of_padded canonicalInput13187 canonicalOutput13187 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation182, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput13188 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 1, 2], ![0, 0, 1, -2, 1], ![0, 1, 1, 1, -3], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput13188 : ExponentCode := normalNode4532

theorem canonicalSound13188 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13188.moment H = canonicalOutput13188.moment H :=
  canonical_of_padded canonicalInput13188 canonicalOutput13188 (by decide) (by decide)
    ⟨true, false, canonicalPermutation72, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput13189 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 1, 2], ![0, 0, 1, -2, 1], ![0, 2, -2, 0, 0], ![1, 0, 1, 1, -3]]⟩

def canonicalOutput13189 : ExponentCode := normalNode4005

theorem canonicalSound13189 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13189.moment H = canonicalOutput13189.moment H :=
  canonical_of_padded canonicalInput13189 canonicalOutput13189 (by decide) (by decide)
    ⟨true, true, canonicalPermutation44, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput13190 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 1, 2], ![0, 0, 1, -2, 1], ![0, 2, -2, 1, -1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput13190 : ExponentCode := normalNode4437

theorem canonicalSound13190 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13190.moment H = canonicalOutput13190.moment H :=
  canonical_of_padded canonicalInput13190 canonicalOutput13190 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation187, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput13191 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 1, 2], ![0, 0, 1, -2, 1], ![0, 2, -1, 0, -1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput13191 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1753⟩

theorem canonicalSound13191 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13191.moment H = canonicalOutput13191.moment H :=
  canonical_of_padded canonicalInput13191 canonicalOutput13191 (by decide) (by decide)
    ⟨true, false, canonicalPermutation33, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput13192 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 1, 2], ![0, 0, 1, -2, 1], ![0, 2, 0, 0, -2], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput13192 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1744⟩

theorem canonicalSound13192 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13192.moment H = canonicalOutput13192.moment H :=
  canonical_of_padded canonicalInput13192 canonicalOutput13192 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput13193 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 1, 2], ![0, 0, 1, -2, 1], ![1, 0, 1, 1, -3], ![0, 2, -2, 0, 0]]⟩

def canonicalOutput13193 : ExponentCode := normalNode4005

theorem canonicalSound13193 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13193.moment H = canonicalOutput13193.moment H :=
  canonical_of_padded canonicalInput13193 canonicalOutput13193 (by decide) (by decide)
    ⟨true, true, canonicalPermutation44, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput13194 : ExponentCode := ⟨5, 5, ![![-1, -2, 0, 1, 2], ![0, 0, 1, -1, 0], ![0, 0, 1, -1, 0], ![0, 2, -1, 1, -2], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput13194 : ExponentCode := normalNode8717

theorem canonicalSound13194 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13194.moment H = canonicalOutput13194.moment H :=
  canonical_of_padded canonicalInput13194 canonicalOutput13194 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation190, canonicalPermutation48⟩ (by decide +kernel) hH

def canonicalInput13195 : ExponentCode := ⟨5, 5, ![![-1, -2, 0, 1, 2], ![0, 0, 1, -1, 0], ![0, 0, 1, -1, 0], ![0, 2, 0, 0, -2], ![1, 0, -2, 1, 0]]⟩

def canonicalOutput13195 : ExponentCode := normalNode8581

theorem canonicalSound13195 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13195.moment H = canonicalOutput13195.moment H :=
  canonical_of_padded canonicalInput13195 canonicalOutput13195 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation195, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput13196 : ExponentCode := ⟨5, 5, ![![-1, -2, 0, 1, 2], ![0, 0, 1, -1, 0], ![0, 0, 1, 0, -1], ![0, 1, -2, 1, 0], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput13196 : ExponentCode := normalNode9151

theorem canonicalSound13196 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13196.moment H = canonicalOutput13196.moment H :=
  canonical_of_padded canonicalInput13196 canonicalOutput13196 (by decide) (by decide)
    ⟨true, true, canonicalPermutation50, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput13197 : ExponentCode := ⟨5, 5, ![![-1, -2, 0, 1, 2], ![0, 0, 1, -1, 0], ![0, 1, -2, 1, 0], ![0, 1, 0, -1, 0], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput13197 : ExponentCode := normalNode8590

theorem canonicalSound13197 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13197.moment H = canonicalOutput13197.moment H :=
  canonical_of_padded canonicalInput13197 canonicalOutput13197 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation195, canonicalPermutation29⟩ (by decide +kernel) hH

def canonicalInput13198 : ExponentCode := ⟨5, 5, ![![-1, -2, 0, 1, 2], ![0, 0, 1, -1, 0], ![0, 1, -2, 1, 0], ![0, 1, 0, 0, -1], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput13198 : ExponentCode := normalNode10020

theorem canonicalSound13198 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13198.moment H = canonicalOutput13198.moment H :=
  canonical_of_padded canonicalInput13198 canonicalOutput13198 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, OAI.MUB6.Certificate.PairSemantics.permutation191⟩ (by decide +kernel) hH

def canonicalInput13199 : ExponentCode := ⟨5, 5, ![![-1, -2, 0, 1, 2], ![0, 0, 1, -1, 0], ![0, 1, -2, 1, 0], ![0, 1, 1, -1, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput13199 : ExponentCode := normalNode10023

theorem canonicalSound13199 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13199.moment H = canonicalOutput13199.moment H :=
  canonical_of_padded canonicalInput13199 canonicalOutput13199 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation201, canonicalPermutation13⟩ (by decide +kernel) hH

def canonicalInput13200 : ExponentCode := ⟨5, 5, ![![-1, -2, 0, 1, 2], ![0, 0, 1, -1, 0], ![0, 1, -1, 0, 0], ![0, 1, -1, 0, 0], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput13200 : ExponentCode := normalNode8414

theorem canonicalSound13200 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13200.moment H = canonicalOutput13200.moment H :=
  canonical_of_padded canonicalInput13200 canonicalOutput13200 (by decide) (by decide)
    ⟨true, true, canonicalPermutation39, canonicalPermutation35⟩ (by decide +kernel) hH

def canonicalInput13201 : ExponentCode := ⟨5, 5, ![![-1, -2, 0, 1, 2], ![0, 0, 1, -1, 0], ![0, 1, -1, 0, 0], ![0, 1, -1, 1, -1], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput13201 : ExponentCode := normalNode10123

theorem canonicalSound13201 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13201.moment H = canonicalOutput13201.moment H :=
  canonical_of_padded canonicalInput13201 canonicalOutput13201 (by decide) (by decide)
    ⟨true, true, canonicalPermutation39, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput13202 : ExponentCode := ⟨5, 5, ![![-1, -2, 0, 1, 2], ![0, 0, 1, -1, 0], ![0, 1, -1, 0, 0], ![0, 1, 0, -1, 0], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput13202 : ExponentCode := normalNode8415

theorem canonicalSound13202 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13202.moment H = canonicalOutput13202.moment H :=
  canonical_of_padded canonicalInput13202 canonicalOutput13202 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation168, OAI.MUB6.Certificate.PairSemantics.permutation193⟩ (by decide +kernel) hH

def canonicalInput13203 : ExponentCode := ⟨5, 5, ![![-1, -2, 0, 1, 2], ![0, 0, 1, -1, 0], ![0, 1, -1, 0, 0], ![0, 1, 0, 0, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput13203 : ExponentCode := normalNode8327

theorem canonicalSound13203 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13203.moment H = canonicalOutput13203.moment H :=
  canonical_of_padded canonicalInput13203 canonicalOutput13203 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation167, canonicalPermutation23⟩ (by decide +kernel) hH

def canonicalInput13204 : ExponentCode := ⟨5, 5, ![![-1, -2, 0, 1, 2], ![0, 0, 1, -1, 0], ![0, 1, -1, 1, -1], ![0, 1, 0, 0, -1], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput13204 : ExponentCode := normalNode8663

theorem canonicalSound13204 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13204.moment H = canonicalOutput13204.moment H :=
  canonical_of_padded canonicalInput13204 canonicalOutput13204 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation196, canonicalPermutation13⟩ (by decide +kernel) hH

def canonicalInput13205 : ExponentCode := ⟨5, 5, ![![-1, -2, 0, 1, 2], ![0, 0, 1, -1, 0], ![0, 1, -1, 1, -1], ![0, 1, 1, -1, -1], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput13205 : ExponentCode := normalNode10165

theorem canonicalSound13205 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13205.moment H = canonicalOutput13205.moment H :=
  canonical_of_padded canonicalInput13205 canonicalOutput13205 (by decide) (by decide)
    ⟨true, false, canonicalPermutation75, canonicalPermutation24⟩ (by decide +kernel) hH

def canonicalInput13206 : ExponentCode := ⟨5, 5, ![![-1, -2, 0, 1, 2], ![0, 0, 1, -1, 0], ![0, 1, 0, -1, 0], ![0, 1, 1, 1, -3], ![1, 0, -2, 0, 1]]⟩

def canonicalOutput13206 : ExponentCode := normalNode8755

theorem canonicalSound13206 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13206.moment H = canonicalOutput13206.moment H :=
  canonical_of_padded canonicalInput13206 canonicalOutput13206 (by decide) (by decide)
    ⟨true, false, canonicalPermutation58, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput13207 : ExponentCode := ⟨5, 5, ![![-1, -2, 0, 1, 2], ![0, 0, 1, -1, 0], ![0, 1, 0, 0, -1], ![0, 1, 0, 0, -1], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput13207 : ExponentCode := normalNode8324

theorem canonicalSound13207 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13207.moment H = canonicalOutput13207.moment H :=
  canonical_of_padded canonicalInput13207 canonicalOutput13207 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, canonicalPermutation35⟩ (by decide +kernel) hH

def canonicalInput13208 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 1, 2], ![0, 0, 1, -1, 0], ![0, 1, 1, 0, -2], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput13208 : ExponentCode := normalNode9550

theorem canonicalSound13208 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13208.moment H = canonicalOutput13208.moment H :=
  canonical_of_padded canonicalInput13208 canonicalOutput13208 (by decide) (by decide)
    ⟨true, true, canonicalPermutation73, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput13209 : ExponentCode := ⟨5, 5, ![![-1, -2, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, 1, -2, 1, 0], ![0, 1, 0, -1, 0], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput13209 : ExponentCode := normalNode10019

theorem canonicalSound13209 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13209.moment H = canonicalOutput13209.moment H :=
  canonical_of_padded canonicalInput13209 canonicalOutput13209 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, canonicalPermutation29⟩ (by decide +kernel) hH

def canonicalInput13210 : ExponentCode := ⟨5, 5, ![![-1, -2, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, 1, -2, 1, 0], ![0, 1, 0, 0, -1], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput13210 : ExponentCode := normalNode8248

theorem canonicalSound13210 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13210.moment H = canonicalOutput13210.moment H :=
  canonical_of_padded canonicalInput13210 canonicalOutput13210 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, canonicalPermutation29⟩ (by decide +kernel) hH

def canonicalInput13211 : ExponentCode := ⟨5, 5, ![![-1, -2, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, 1, -2, 1, 0], ![0, 1, 1, -2, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput13211 : ExponentCode := normalNode8252

theorem canonicalSound13211 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13211.moment H = canonicalOutput13211.moment H :=
  canonical_of_padded canonicalInput13211 canonicalOutput13211 (by decide) (by decide)
    ⟨true, false, canonicalPermutation74, canonicalPermutation24⟩ (by decide +kernel) hH

def canonicalInput13212 : ExponentCode := ⟨5, 5, ![![-1, -2, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, 1, -2, 1, 0], ![0, 1, 1, -1, -1], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput13212 : ExponentCode := normalNode10022

theorem canonicalSound13212 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13212.moment H = canonicalOutput13212.moment H :=
  canonical_of_padded canonicalInput13212 canonicalOutput13212 (by decide) (by decide)
    ⟨true, false, canonicalPermutation74, canonicalPermutation24⟩ (by decide +kernel) hH

def canonicalInput13213 : ExponentCode := ⟨5, 5, ![![-1, -2, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, 1, -1, -2, 2], ![0, 1, 0, 0, -1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput13213 : ExponentCode := normalNode9770

theorem canonicalSound13213 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13213.moment H = canonicalOutput13213.moment H :=
  canonical_of_padded canonicalInput13213 canonicalOutput13213 (by decide) (by decide)
    ⟨false, false, canonicalPermutation25, canonicalPermutation42⟩ (by decide +kernel) hH

def canonicalInput13214 : ExponentCode := ⟨5, 5, ![![-1, -2, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, 1, -1, 0, 0], ![0, 1, 0, -1, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput13214 : ExponentCode := normalNode8340

theorem canonicalSound13214 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13214.moment H = canonicalOutput13214.moment H :=
  canonical_of_padded canonicalInput13214 canonicalOutput13214 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation201, canonicalPermutation13⟩ (by decide +kernel) hH

def canonicalInput13215 : ExponentCode := ⟨5, 5, ![![-1, -2, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, 1, -1, 0, 0], ![0, 1, 0, 0, -1], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput13215 : ExponentCode := normalNode8337

theorem canonicalSound13215 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13215.moment H = canonicalOutput13215.moment H :=
  canonical_of_padded canonicalInput13215 canonicalOutput13215 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, OAI.MUB6.Certificate.PairSemantics.permutation191⟩ (by decide +kernel) hH

def canonicalInput13216 : ExponentCode := ⟨5, 5, ![![-1, -2, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, 1, -1, 1, -1], ![0, 1, 0, -1, 0], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput13216 : ExponentCode := normalNode8657

theorem canonicalSound13216 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13216.moment H = canonicalOutput13216.moment H :=
  canonical_of_padded canonicalInput13216 canonicalOutput13216 (by decide) (by decide)
    ⟨true, false, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation196⟩ (by decide +kernel) hH

def canonicalInput13217 : ExponentCode := ⟨5, 5, ![![-1, -2, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, 1, -1, 1, -1], ![0, 1, 0, 0, -1], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput13217 : ExponentCode := normalNode7619

theorem canonicalSound13217 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13217.moment H = canonicalOutput13217.moment H :=
  canonical_of_padded canonicalInput13217 canonicalOutput13217 (by decide) (by decide)
    ⟨true, false, canonicalPermutation21, OAI.MUB6.Certificate.PairSemantics.permutation189⟩ (by decide +kernel) hH

def canonicalInput13218 : ExponentCode := ⟨5, 5, ![![-1, -2, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, 1, -1, 1, -1], ![0, 1, 1, -2, 0], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput13218 : ExponentCode := normalNode10140

theorem canonicalSound13218 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13218.moment H = canonicalOutput13218.moment H :=
  canonical_of_padded canonicalInput13218 canonicalOutput13218 (by decide) (by decide)
    ⟨true, false, canonicalPermutation74, canonicalPermutation16⟩ (by decide +kernel) hH

def canonicalInput13219 : ExponentCode := ⟨5, 5, ![![-1, -2, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, 1, 0, -2, 1], ![0, 1, 0, 0, -1], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput13219 : ExponentCode := normalNode7628

theorem canonicalSound13219 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13219.moment H = canonicalOutput13219.moment H :=
  canonical_of_padded canonicalInput13219 canonicalOutput13219 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, OAI.MUB6.Certificate.PairSemantics.permutation191⟩ (by decide +kernel) hH

def canonicalInput13220 : ExponentCode := ⟨5, 5, ![![-1, -2, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, 1, 0, -1, 0], ![0, 1, 1, 0, -2], ![1, 0, -2, 0, 1]]⟩

def canonicalOutput13220 : ExponentCode := normalNode9763

theorem canonicalSound13220 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13220.moment H = canonicalOutput13220.moment H :=
  canonical_of_padded canonicalInput13220 canonicalOutput13220 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput13221 : ExponentCode := ⟨5, 5, ![![-1, -2, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, 1, 0, -1, 0], ![0, 1, 1, 1, -3], ![1, 0, -2, -1, 2]]⟩

def canonicalOutput13221 : ExponentCode := normalNode9603

theorem canonicalSound13221 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13221.moment H = canonicalOutput13221.moment H :=
  canonical_of_padded canonicalInput13221 canonicalOutput13221 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput13222 : ExponentCode := ⟨5, 5, ![![-1, -2, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, 1, 0, 0, -1], ![0, 1, 0, -1, 0], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput13222 : ExponentCode := normalNode8327

theorem canonicalSound13222 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13222.moment H = canonicalOutput13222.moment H :=
  canonical_of_padded canonicalInput13222 canonicalOutput13222 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput13223 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 1, 2], ![0, 0, 1, 1, -2], ![0, 1, -1, -2, 2], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput13223 : ExponentCode := normalNode927

theorem canonicalSound13223 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13223.moment H = canonicalOutput13223.moment H :=
  canonical_of_padded canonicalInput13223 canonicalOutput13223 (by decide) (by decide)
    ⟨true, false, canonicalPermutation54, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput13224 : ExponentCode := ⟨5, 5, ![![-1, -2, 0, 1, 2], ![0, 0, 1, 1, -2], ![0, 1, -1, 0, 0], ![0, 1, 0, -1, 0], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput13224 : ExponentCode := normalNode8335

theorem canonicalSound13224 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13224.moment H = canonicalOutput13224.moment H :=
  canonical_of_padded canonicalInput13224 canonicalOutput13224 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation168, canonicalPermutation23⟩ (by decide +kernel) hH

def canonicalInput13225 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 1, 2], ![0, 0, 1, 1, -2], ![0, 1, 0, -2, 1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput13225 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1831⟩

theorem canonicalSound13225 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13225.moment H = canonicalOutput13225.moment H :=
  canonical_of_padded canonicalInput13225 canonicalOutput13225 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput13226 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 1, 2], ![0, 0, 1, 1, -2], ![0, 1, 1, -2, 0], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput13226 : ExponentCode := normalNode4090

theorem canonicalSound13226 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13226.moment H = canonicalOutput13226.moment H :=
  canonical_of_padded canonicalInput13226 canonicalOutput13226 (by decide) (by decide)
    ⟨true, false, canonicalPermutation31, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput13227 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 1, 2], ![0, 0, 1, 1, -2], ![0, 2, -1, 0, -1], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput13227 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1804⟩

theorem canonicalSound13227 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13227.moment H = canonicalOutput13227.moment H :=
  canonical_of_padded canonicalInput13227 canonicalOutput13227 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput13228 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 1, 2], ![0, 0, 1, 1, -2], ![0, 2, 0, 0, -2], ![1, 0, -1, -2, 2]]⟩

def canonicalOutput13228 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1522⟩

theorem canonicalSound13228 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13228.moment H = canonicalOutput13228.moment H :=
  canonical_of_padded canonicalInput13228 canonicalOutput13228 (by decide) (by decide)
    ⟨true, false, canonicalPermutation14, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput13229 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 1, 2], ![0, 0, 2, -2, 0], ![0, 1, -2, 0, 1], ![1, 1, 0, 1, -3]]⟩

def canonicalOutput13229 : ExponentCode := normalNode4463

theorem canonicalSound13229 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13229.moment H = canonicalOutput13229.moment H :=
  canonical_of_padded canonicalInput13229 canonicalOutput13229 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation182, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput13230 : ExponentCode := ⟨5, 5, ![![-1, -2, 0, 1, 2], ![0, 0, 2, -2, 0], ![0, 1, -2, 1, 0], ![0, 1, 0, 0, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput13230 : ExponentCode := normalNode8259

theorem canonicalSound13230 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13230.moment H = canonicalOutput13230.moment H :=
  canonical_of_padded canonicalInput13230 canonicalOutput13230 (by decide) (by decide)
    ⟨true, false, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation196⟩ (by decide +kernel) hH

def canonicalInput13231 : ExponentCode := ⟨5, 5, ![![-1, -2, 0, 1, 2], ![0, 0, 2, -2, 0], ![0, 1, -1, 0, 0], ![0, 1, -1, 0, 0], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput13231 : ExponentCode := normalNode8320

theorem canonicalSound13231 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13231.moment H = canonicalOutput13231.moment H :=
  canonical_of_padded canonicalInput13231 canonicalOutput13231 (by decide) (by decide)
    ⟨true, true, canonicalPermutation78, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput13232 : ExponentCode := ⟨5, 5, ![![-1, -2, 0, 1, 2], ![0, 0, 2, -2, 0], ![0, 1, -1, 0, 0], ![0, 1, -1, 1, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput13232 : ExponentCode := normalNode10033

theorem canonicalSound13232 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13232.moment H = canonicalOutput13232.moment H :=
  canonical_of_padded canonicalInput13232 canonicalOutput13232 (by decide) (by decide)
    ⟨true, false, canonicalPermutation20, canonicalPermutation20⟩ (by decide +kernel) hH

def canonicalInput13233 : ExponentCode := ⟨5, 5, ![![-1, -2, 0, 1, 2], ![0, 0, 2, -2, 0], ![0, 1, -1, 0, 0], ![0, 1, 0, 0, -1], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput13233 : ExponentCode := normalNode8321

theorem canonicalSound13233 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13233.moment H = canonicalOutput13233.moment H :=
  canonical_of_padded canonicalInput13233 canonicalOutput13233 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation167, canonicalPermutation23⟩ (by decide +kernel) hH

def canonicalInput13234 : ExponentCode := ⟨5, 5, ![![-1, -2, 0, 1, 2], ![0, 0, 2, -2, 0], ![0, 1, -1, 1, -1], ![0, 1, -1, 0, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput13234 : ExponentCode := normalNode10033

theorem canonicalSound13234 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13234.moment H = canonicalOutput13234.moment H :=
  canonical_of_padded canonicalInput13234 canonicalOutput13234 (by decide) (by decide)
    ⟨true, false, canonicalPermutation20, canonicalPermutation56⟩ (by decide +kernel) hH

def canonicalInput13235 : ExponentCode := ⟨5, 5, ![![-1, -2, 0, 1, 2], ![0, 0, 2, -2, 0], ![0, 1, -1, 1, -1], ![0, 1, 0, 0, -1], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput13235 : ExponentCode := normalNode10032

theorem canonicalSound13235 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13235.moment H = canonicalOutput13235.moment H :=
  canonical_of_padded canonicalInput13235 canonicalOutput13235 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, canonicalPermutation52⟩ (by decide +kernel) hH

def canonicalInput13236 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 1, 2], ![0, 0, 2, -2, 0], ![0, 1, -1, 1, -1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput13236 : ExponentCode := normalNode4299

theorem canonicalSound13236 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13236.moment H = canonicalOutput13236.moment H :=
  canonical_of_padded canonicalInput13236 canonicalOutput13236 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation195, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput13237 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 1, 2], ![0, 0, 2, -2, 0], ![0, 1, 0, 1, -2], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput13237 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2002⟩

theorem canonicalSound13237 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13237.moment H = canonicalOutput13237.moment H :=
  canonical_of_padded canonicalInput13237 canonicalOutput13237 (by decide) (by decide)
    ⟨true, false, canonicalPermutation43, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput13238 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 1, 2], ![0, 0, 2, -2, 0], ![0, 2, -2, 0, 0], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput13238 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2004⟩

theorem canonicalSound13238 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13238.moment H = canonicalOutput13238.moment H :=
  canonical_of_padded canonicalInput13238 canonicalOutput13238 (by decide) (by decide)
    ⟨true, false, canonicalPermutation33, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput13239 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 1, 2], ![0, 0, 2, -2, 0], ![0, 2, -1, 0, -1], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput13239 : ExponentCode := normalNode3877

theorem canonicalSound13239 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13239.moment H = canonicalOutput13239.moment H :=
  canonical_of_padded canonicalInput13239 canonicalOutput13239 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation167, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput13240 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 1, 2], ![0, 0, 2, -2, 0], ![0, 2, 0, 0, -2], ![1, 0, -2, 1, 0]]⟩

def canonicalOutput13240 : ExponentCode := normalNode3751

theorem canonicalSound13240 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13240.moment H = canonicalOutput13240.moment H :=
  canonical_of_padded canonicalInput13240 canonicalOutput13240 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput13241 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 1, 2], ![0, 0, 2, -2, 0], ![1, 1, -2, 0, 0], ![0, 1, 0, 1, -2]]⟩

def canonicalOutput13241 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2002⟩

theorem canonicalSound13241 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13241.moment H = canonicalOutput13241.moment H :=
  canonical_of_padded canonicalInput13241 canonicalOutput13241 (by decide) (by decide)
    ⟨true, false, canonicalPermutation43, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput13242 : ExponentCode := ⟨5, 5, ![![-1, -2, 0, 1, 2], ![0, 0, 2, -1, -1], ![0, 1, -2, 1, 0], ![0, 1, 0, -1, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput13242 : ExponentCode := normalNode10026

theorem canonicalSound13242 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13242.moment H = canonicalOutput13242.moment H :=
  canonical_of_padded canonicalInput13242 canonicalOutput13242 (by decide) (by decide)
    ⟨true, false, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation201⟩ (by decide +kernel) hH

def canonicalInput13243 : ExponentCode := ⟨5, 5, ![![-1, -2, 0, 1, 2], ![0, 0, 2, -1, -1], ![0, 1, -2, 1, 0], ![0, 1, 0, 0, -1], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput13243 : ExponentCode := normalNode10025

theorem canonicalSound13243 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13243.moment H = canonicalOutput13243.moment H :=
  canonical_of_padded canonicalInput13243 canonicalOutput13243 (by decide) (by decide)
    ⟨true, false, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation196⟩ (by decide +kernel) hH

def canonicalInput13244 : ExponentCode := ⟨5, 5, ![![-1, -2, 0, 1, 2], ![0, 0, 2, -1, -1], ![0, 1, -1, 0, 0], ![0, 1, -1, 0, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput13244 : ExponentCode := normalNode8326

theorem canonicalSound13244 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13244.moment H = canonicalOutput13244.moment H :=
  canonical_of_padded canonicalInput13244 canonicalOutput13244 (by decide) (by decide)
    ⟨true, true, canonicalPermutation78, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput13245 : ExponentCode := ⟨5, 5, ![![-1, -2, 0, 1, 2], ![0, 0, 2, -1, -1], ![0, 1, -1, 0, 0], ![0, 1, -1, 1, -1], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput13245 : ExponentCode := normalNode10043

theorem canonicalSound13245 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13245.moment H = canonicalOutput13245.moment H :=
  canonical_of_padded canonicalInput13245 canonicalOutput13245 (by decide) (by decide)
    ⟨true, true, canonicalPermutation39, canonicalPermutation22⟩ (by decide +kernel) hH

def canonicalInput13246 : ExponentCode := ⟨5, 5, ![![-1, -2, 0, 1, 2], ![0, 0, 2, -1, -1], ![0, 1, -1, 0, 0], ![0, 1, 0, -1, 0], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput13246 : ExponentCode := normalNode8338

theorem canonicalSound13246 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13246.moment H = canonicalOutput13246.moment H :=
  canonical_of_padded canonicalInput13246 canonicalOutput13246 (by decide) (by decide)
    ⟨true, true, canonicalPermutation39, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput13247 : ExponentCode := ⟨5, 5, ![![-1, -2, 0, 1, 2], ![0, 0, 2, -1, -1], ![0, 1, -1, 0, 0], ![0, 1, 0, 0, -1], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput13247 : ExponentCode := normalNode8329

theorem canonicalSound13247 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13247.moment H = canonicalOutput13247.moment H :=
  canonical_of_padded canonicalInput13247 canonicalOutput13247 (by decide) (by decide)
    ⟨true, true, canonicalPermutation78, canonicalPermutation19⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
