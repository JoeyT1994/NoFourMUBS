import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes02
import NoFourMUBs.Step2.SOS.MomentCodes05
import NoFourMUBs.Step2.SOS.MomentCodes06
import NoFourMUBs.Step2.SOS.MomentCodes11
import NoFourMUBs.Step2.SOS.MomentCodes15
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes033
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput4288 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 0, 2], ![0, -1, -1, 2, 0], ![0, 1, 0, -1, 0], ![1, 0, 1, -1, -1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput4288 : ExponentCode := normalNode8481

theorem canonicalSound4288 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4288.moment H = canonicalOutput4288.moment H :=
  canonical_of_padded canonicalInput4288 canonicalOutput4288 (by decide) (by decide)
    ⟨true, true, canonicalPermutation41, canonicalPermutation22⟩ (by decide +kernel) hH

def canonicalInput4289 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 0, 2], ![0, -1, -1, 2, 0], ![0, 1, 0, 0, -1], ![1, 0, 1, -2, 0], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput4289 : ExponentCode := normalNode8086

theorem canonicalSound4289 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4289.moment H = canonicalOutput4289.moment H :=
  canonical_of_padded canonicalInput4289 canonicalOutput4289 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, canonicalPermutation17⟩ (by decide +kernel) hH

def canonicalInput4290 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 0, 2], ![0, -1, -1, 2, 0], ![0, 1, 1, -2, 0], ![1, 0, -1, 0, 0], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput4290 : ExponentCode := normalNode8088

theorem canonicalSound4290 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4290.moment H = canonicalOutput4290.moment H :=
  canonical_of_padded canonicalInput4290 canonicalOutput4290 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation154, canonicalPermutation52⟩ (by decide +kernel) hH

def canonicalInput4291 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 0, 2], ![0, -1, -1, 2, 0], ![0, 1, 1, -2, 0], ![1, 0, 0, 0, -1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput4291 : ExponentCode := normalNode8085

theorem canonicalSound4291 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4291.moment H = canonicalOutput4291.moment H :=
  canonical_of_padded canonicalInput4291 canonicalOutput4291 (by decide) (by decide)
    ⟨true, false, canonicalPermutation20, OAI.MUB6.Certificate.PairSemantics.permutation196⟩ (by decide +kernel) hH

def canonicalInput4292 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 0, 2], ![0, -1, -1, 2, 0], ![0, 2, -1, -1, 0], ![1, 0, 0, 0, -1], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput4292 : ExponentCode := normalNode8125

theorem canonicalSound4292 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4292.moment H = canonicalOutput4292.moment H :=
  canonical_of_padded canonicalInput4292 canonicalOutput4292 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation201, canonicalPermutation52⟩ (by decide +kernel) hH

def canonicalInput4293 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 0, 2], ![0, -1, -1, 2, 0], ![0, 2, 1, -2, -1], ![1, 0, -1, 0, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput4293 : ExponentCode := normalNode8279

theorem canonicalSound4293 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4293.moment H = canonicalOutput4293.moment H :=
  canonical_of_padded canonicalInput4293 canonicalOutput4293 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation196⟩ (by decide +kernel) hH

def canonicalInput4294 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 0, 2], ![0, -1, 0, 1, 0], ![0, 0, 0, -1, 1], ![1, 1, -2, 2, -2], ![1, 1, 1, -2, -1]]⟩

def canonicalOutput4294 : ExponentCode := normalNode9782

theorem canonicalSound4294 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4294.moment H = canonicalOutput4294.moment H :=
  canonical_of_padded canonicalInput4294 canonicalOutput4294 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation200, canonicalPermutation73⟩ (by decide +kernel) hH

def canonicalInput4295 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 0, 2], ![0, -1, 0, 2, -1], ![0, 0, 0, -1, 1], ![1, 1, -2, 1, -1], ![1, 1, 1, -2, -1]]⟩

def canonicalOutput4295 : ExponentCode := normalNode11008

theorem canonicalSound4295 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4295.moment H = canonicalOutput4295.moment H :=
  canonical_of_padded canonicalInput4295 canonicalOutput4295 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation200, canonicalPermutation73⟩ (by decide +kernel) hH

def canonicalInput4296 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 0, 2], ![0, -1, 1, 1, -1], ![0, 1, -1, 0, 0], ![0, 1, 0, -1, 0], ![2, 0, -1, 0, -1]]⟩

def canonicalOutput4296 : ExponentCode := normalNode8593

theorem canonicalSound4296 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4296.moment H = canonicalOutput4296.moment H :=
  canonical_of_padded canonicalInput4296 canonicalOutput4296 (by decide) (by decide)
    ⟨true, true, canonicalPermutation39, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput4297 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 0, 2], ![0, 0, -2, 2, 0], ![0, 1, 0, -1, 0], ![0, 1, 0, 0, -1], ![2, -1, 1, -1, -1]]⟩

def canonicalOutput4297 : ExponentCode := normalNode8728

theorem canonicalSound4297 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4297.moment H = canonicalOutput4297.moment H :=
  canonical_of_padded canonicalInput4297 canonicalOutput4297 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation193⟩ (by decide +kernel) hH

def canonicalInput4298 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 0, 2], ![0, 0, -2, 2, 0], ![0, 1, 0, -1, 0], ![1, -1, 1, -1, 0], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput4298 : ExponentCode := normalNode8512

theorem canonicalSound4298 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4298.moment H = canonicalOutput4298.moment H :=
  canonical_of_padded canonicalInput4298 canonicalOutput4298 (by decide) (by decide)
    ⟨true, true, canonicalPermutation41, canonicalPermutation17⟩ (by decide +kernel) hH

def canonicalInput4299 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 0, 2], ![0, 0, -2, 2, 0], ![0, 1, 0, 0, -1], ![1, -1, 1, -1, 0], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput4299 : ExponentCode := normalNode8105

theorem canonicalSound4299 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4299.moment H = canonicalOutput4299.moment H :=
  canonical_of_padded canonicalInput4299 canonicalOutput4299 (by decide) (by decide)
    ⟨true, false, canonicalPermutation46, canonicalPermutation22⟩ (by decide +kernel) hH

def canonicalInput4300 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 0, 2], ![0, 0, 0, -1, 1], ![0, 1, 0, 1, -2], ![1, 0, -2, 1, 0], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput4300 : ExponentCode := normalNode6555

theorem canonicalSound4300 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4300.moment H = canonicalOutput4300.moment H :=
  canonical_of_padded canonicalInput4300 canonicalOutput4300 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation167⟩ (by decide +kernel) hH

def canonicalInput4301 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 0, 2], ![0, 0, 1, -1, 0], ![0, 2, -2, 0, 0], ![1, -1, 0, 1, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput4301 : ExponentCode := normalNode10069

theorem canonicalSound4301 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4301.moment H = canonicalOutput4301.moment H :=
  canonical_of_padded canonicalInput4301 canonicalOutput4301 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, canonicalPermutation13⟩ (by decide +kernel) hH

def canonicalInput4302 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 0, 2], ![0, 0, 1, 0, -1], ![0, 2, -2, 0, 0], ![1, -1, 0, 1, -1], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput4302 : ExponentCode := normalNode10070

theorem canonicalSound4302 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4302.moment H = canonicalOutput4302.moment H :=
  canonical_of_padded canonicalInput4302 canonicalOutput4302 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, canonicalPermutation13⟩ (by decide +kernel) hH

def canonicalInput4303 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 0, 2], ![0, 1, 0, -2, 1], ![0, 0, 0, 2, -2], ![1, 0, -2, 1, 0], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput4303 : ExponentCode := normalNode6815

theorem canonicalSound4303 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4303.moment H = canonicalOutput4303.moment H :=
  canonical_of_padded canonicalInput4303 canonicalOutput4303 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput4304 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 0, 2], ![0, 1, 0, -2, 1], ![0, 1, 0, 1, -2], ![1, 0, -2, 1, 0], ![1, -1, 1, 0, -1]]⟩

def canonicalOutput4304 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code365

theorem canonicalSound4304 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4304.moment H = canonicalOutput4304.moment H :=
  canonical_of_padded canonicalInput4304 canonicalOutput4304 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput4305 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 0, 2], ![0, 1, 0, -1, 0], ![0, 1, 0, 0, -1], ![1, -1, -2, 2, 0], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput4305 : ExponentCode := normalNode8641

theorem canonicalSound4305 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4305.moment H = canonicalOutput4305.moment H :=
  canonical_of_padded canonicalInput4305 canonicalOutput4305 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation170, canonicalPermutation48⟩ (by decide +kernel) hH

def canonicalInput4306 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 0, 2], ![0, 1, 0, -1, 0], ![0, 1, 0, 1, -2], ![1, -1, -2, 1, 1], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput4306 : ExponentCode := normalNode8644

theorem canonicalSound4306 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4306.moment H = canonicalOutput4306.moment H :=
  canonical_of_padded canonicalInput4306 canonicalOutput4306 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation170, canonicalPermutation48⟩ (by decide +kernel) hH

def canonicalInput4307 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 0, 2], ![0, 1, 0, -1, 0], ![0, 1, 0, 1, -2], ![1, -1, -2, 2, 0], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput4307 : ExponentCode := normalNode6813

theorem canonicalSound4307 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4307.moment H = canonicalOutput4307.moment H :=
  canonical_of_padded canonicalInput4307 canonicalOutput4307 (by decide) (by decide)
    ⟨true, false, canonicalPermutation58, canonicalPermutation38⟩ (by decide +kernel) hH

def canonicalInput4308 : ExponentCode := ⟨4, 5, ![![-2, -1, 1, 1, 1], ![-2, 1, -1, 1, 1], ![2, -1, 1, 0, -2], ![2, 1, -1, -2, 0]]⟩

def canonicalOutput4308 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code186

theorem canonicalSound4308 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4308.moment H = canonicalOutput4308.moment H :=
  canonical_of_padded canonicalInput4308 canonicalOutput4308 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput4309 : ExponentCode := ⟨4, 5, ![![-2, -1, 1, 1, 1], ![-1, 0, -1, 1, 1], ![0, 2, -1, 0, -1], ![3, -1, 1, -2, -1]]⟩

def canonicalOutput4309 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code974

theorem canonicalSound4309 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4309.moment H = canonicalOutput4309.moment H :=
  canonical_of_padded canonicalInput4309 canonicalOutput4309 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation173, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput4310 : ExponentCode := ⟨3, 5, ![![-2, -1, 1, 1, 1], ![-1, 2, -2, 1, 0], ![3, -1, 1, -2, -1]]⟩

def canonicalOutput4310 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node539⟩

theorem canonicalSound4310 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4310.moment H = canonicalOutput4310.moment H :=
  canonical_of_padded canonicalInput4310 canonicalOutput4310 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4311 : ExponentCode := ⟨4, 5, ![![-2, -1, 1, 1, 1], ![-1, 2, 0, 0, -1], ![1, -1, -2, 1, 1], ![2, 0, 1, -2, -1]]⟩

def canonicalOutput4311 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code977

theorem canonicalSound4311 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4311.moment H = canonicalOutput4311.moment H :=
  canonical_of_padded canonicalInput4311 canonicalOutput4311 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation171, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput4312 : ExponentCode := ⟨4, 5, ![![-2, -1, 1, 1, 1], ![0, -2, 1, 1, 0], ![2, 0, 0, 0, -2], ![0, 3, -2, -2, 1]]⟩

def canonicalOutput4312 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code756

theorem canonicalSound4312 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4312.moment H = canonicalOutput4312.moment H :=
  canonical_of_padded canonicalInput4312 canonicalOutput4312 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation175, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput4313 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, -1, -2, 0, 3], ![0, 2, 0, -1, -1], ![1, 0, 0, -1, 0], ![1, 0, 1, 1, -3]]⟩

def canonicalOutput4313 : ExponentCode := normalNode8577

theorem canonicalSound4313 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4313.moment H = canonicalOutput4313.moment H :=
  canonical_of_padded canonicalInput4313 canonicalOutput4313 (by decide) (by decide)
    ⟨true, false, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation193⟩ (by decide +kernel) hH

def canonicalInput4314 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, -1, -1, -1, 3], ![0, 2, -1, 0, -1], ![1, 0, 0, -1, 0], ![1, 0, 1, 1, -3]]⟩

def canonicalOutput4314 : ExponentCode := normalNode10014

theorem canonicalSound4314 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4314.moment H = canonicalOutput4314.moment H :=
  canonical_of_padded canonicalInput4314 canonicalOutput4314 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation23⟩ (by decide +kernel) hH

def canonicalInput4315 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, -1, -1, 0, 2], ![0, 0, 1, -1, 0], ![0, 1, 0, 0, -1], ![2, 1, -1, 0, -2]]⟩

def canonicalOutput4315 : ExponentCode := normalNode10465

theorem canonicalSound4315 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4315.moment H = canonicalOutput4315.moment H :=
  canonical_of_padded canonicalInput4315 canonicalOutput4315 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation195, canonicalPermutation35⟩ (by decide +kernel) hH

def canonicalInput4316 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, -1, -1, 0, 2], ![0, 0, 1, -1, 0], ![0, 1, 0, 1, -2], ![2, 1, -1, -1, -1]]⟩

def canonicalOutput4316 : ExponentCode := normalNode10807

theorem canonicalSound4316 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4316.moment H = canonicalOutput4316.moment H :=
  canonical_of_padded canonicalInput4316 canonicalOutput4316 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation187, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput4317 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, -1, -1, 0, 2], ![0, 0, 1, -1, 0], ![1, 1, -1, -1, 0], ![1, 1, 0, 1, -3]]⟩

def canonicalOutput4317 : ExponentCode := normalNode8773

theorem canonicalSound4317 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4317.moment H = canonicalOutput4317.moment H :=
  canonical_of_padded canonicalInput4317 canonicalOutput4317 (by decide) (by decide)
    ⟨true, false, canonicalPermutation75, canonicalPermutation35⟩ (by decide +kernel) hH

def canonicalInput4318 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, -1, -1, 0, 2], ![0, 0, 1, -1, 0], ![1, 1, -1, 0, -1], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput4318 : ExponentCode := normalNode9507

theorem canonicalSound4318 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4318.moment H = canonicalOutput4318.moment H :=
  canonical_of_padded canonicalInput4318 canonicalOutput4318 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, canonicalPermutation53⟩ (by decide +kernel) hH

def canonicalInput4319 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, -1, -1, 0, 2], ![0, 0, 1, 0, -1], ![0, 1, 0, -1, 0], ![2, 1, -1, 0, -2]]⟩

def canonicalOutput4319 : ExponentCode := normalNode10464

theorem canonicalSound4319 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4319.moment H = canonicalOutput4319.moment H :=
  canonical_of_padded canonicalInput4319 canonicalOutput4319 (by decide) (by decide)
    ⟨true, false, canonicalPermutation58, OAI.MUB6.Certificate.PairSemantics.permutation193⟩ (by decide +kernel) hH

def canonicalInput4320 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, -1, -1, 0, 2], ![0, 0, 1, 0, -1], ![0, 1, 0, 0, -1], ![2, 1, -1, -1, -1]]⟩

def canonicalOutput4320 : ExponentCode := normalNode9539

theorem canonicalSound4320 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4320.moment H = canonicalOutput4320.moment H :=
  canonical_of_padded canonicalInput4320 canonicalOutput4320 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, OAI.MUB6.Certificate.PairSemantics.permutation193⟩ (by decide +kernel) hH

def canonicalInput4321 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, -1, -1, 0, 2], ![0, 0, 1, 0, -1], ![1, 0, 0, -1, 0], ![1, 2, -1, 0, -2]]⟩

def canonicalOutput4321 : ExponentCode := normalNode10423

theorem canonicalSound4321 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4321.moment H = canonicalOutput4321.moment H :=
  canonical_of_padded canonicalInput4321 canonicalOutput4321 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation193⟩ (by decide +kernel) hH

def canonicalInput4322 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, -1, -1, 0, 2], ![0, 0, 1, 0, -1], ![1, 0, 0, 0, -1], ![1, 2, -1, -1, -1]]⟩

def canonicalOutput4322 : ExponentCode := normalNode9537

theorem canonicalSound4322 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4322.moment H = canonicalOutput4322.moment H :=
  canonical_of_padded canonicalInput4322 canonicalOutput4322 (by decide) (by decide)
    ⟨true, false, canonicalPermutation13, OAI.MUB6.Certificate.PairSemantics.permutation193⟩ (by decide +kernel) hH

def canonicalInput4323 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, -1, -1, 0, 2], ![0, 0, 1, 0, -1], ![1, 1, -1, -1, 0], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput4323 : ExponentCode := normalNode6633

theorem canonicalSound4323 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4323.moment H = canonicalOutput4323.moment H :=
  canonical_of_padded canonicalInput4323 canonicalOutput4323 (by decide) (by decide)
    ⟨true, false, canonicalPermutation74, canonicalPermutation22⟩ (by decide +kernel) hH

def canonicalInput4324 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, -1, -1, 0, 2], ![0, 0, 1, 0, -1], ![1, 1, -1, 0, -1], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput4324 : ExponentCode := normalNode7639

theorem canonicalSound4324 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4324.moment H = canonicalOutput4324.moment H :=
  canonical_of_padded canonicalInput4324 canonicalOutput4324 (by decide) (by decide)
    ⟨true, false, canonicalPermutation74, canonicalPermutation22⟩ (by decide +kernel) hH

def canonicalInput4325 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, -1, -1, 0, 2], ![0, 0, 1, 1, -2], ![0, 1, 0, -1, 0], ![2, 1, -1, -1, -1]]⟩

def canonicalOutput4325 : ExponentCode := normalNode10802

theorem canonicalSound4325 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4325.moment H = canonicalOutput4325.moment H :=
  canonical_of_padded canonicalInput4325 canonicalOutput4325 (by decide) (by decide)
    ⟨true, false, canonicalPermutation61, OAI.MUB6.Certificate.PairSemantics.permutation189⟩ (by decide +kernel) hH

def canonicalInput4326 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, -1, -1, 0, 2], ![0, 0, 1, 1, -2], ![1, 0, 0, -1, 0], ![1, 2, -1, -1, -1]]⟩

def canonicalOutput4326 : ExponentCode := normalNode10392

theorem canonicalSound4326 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4326.moment H = canonicalOutput4326.moment H :=
  canonical_of_padded canonicalInput4326 canonicalOutput4326 (by decide) (by decide)
    ⟨true, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation189⟩ (by decide +kernel) hH

def canonicalInput4327 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, -1, -1, 0, 2], ![0, 0, 1, 1, -2], ![1, 1, -1, -1, 0], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput4327 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code385

theorem canonicalSound4327 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4327.moment H = canonicalOutput4327.moment H :=
  canonical_of_padded canonicalInput4327 canonicalOutput4327 (by decide) (by decide)
    ⟨true, false, canonicalPermutation68, canonicalPermutation22⟩ (by decide +kernel) hH

def canonicalInput4328 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, -1, -1, 0, 2], ![0, 1, -1, 0, 0], ![0, 1, 1, 1, -3], ![2, 0, 0, -2, 0]]⟩

def canonicalOutput4328 : ExponentCode := normalNode8626

theorem canonicalSound4328 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4328.moment H = canonicalOutput4328.moment H :=
  canonical_of_padded canonicalInput4328 canonicalOutput4328 (by decide) (by decide)
    ⟨true, false, canonicalPermutation36, canonicalPermutation79⟩ (by decide +kernel) hH

def canonicalInput4329 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, -1, -1, 0, 2], ![0, 1, -1, 0, 0], ![1, 0, 0, -2, 1], ![1, 1, 1, 1, -4]]⟩

def canonicalOutput4329 : ExponentCode := normalNode8618

theorem canonicalSound4329 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4329.moment H = canonicalOutput4329.moment H :=
  canonical_of_padded canonicalInput4329 canonicalOutput4329 (by decide) (by decide)
    ⟨true, false, canonicalPermutation36, canonicalPermutation32⟩ (by decide +kernel) hH

def canonicalInput4330 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, -1, -1, 0, 2], ![0, 1, -1, 0, 0], ![1, 0, 0, 1, -2], ![1, 1, 1, -2, -1]]⟩

def canonicalOutput4330 : ExponentCode := normalNode8766

theorem canonicalSound4330 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4330.moment H = canonicalOutput4330.moment H :=
  canonical_of_padded canonicalInput4330 canonicalOutput4330 (by decide) (by decide)
    ⟨true, false, canonicalPermutation36, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput4331 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, -1, -1, 0, 2], ![0, 1, -1, 1, -1], ![1, 0, 0, 0, -1], ![1, 1, 1, -2, -1]]⟩

def canonicalOutput4331 : ExponentCode := normalNode9531

theorem canonicalSound4331 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4331.moment H = canonicalOutput4331.moment H :=
  canonical_of_padded canonicalInput4331 canonicalOutput4331 (by decide) (by decide)
    ⟨true, false, canonicalPermutation33, OAI.MUB6.Certificate.PairSemantics.permutation193⟩ (by decide +kernel) hH

def canonicalInput4332 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, -1, -1, 0, 2], ![0, 1, -1, 1, -1], ![1, 1, 0, 0, -2], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput4332 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code376

theorem canonicalSound4332 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4332.moment H = canonicalOutput4332.moment H :=
  canonical_of_padded canonicalInput4332 canonicalOutput4332 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, canonicalPermutation23⟩ (by decide +kernel) hH

def canonicalInput4333 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, -1, -1, 0, 2], ![0, 1, 0, -1, 0], ![0, 1, 1, 0, -2], ![2, 0, -1, 0, -1]]⟩

def canonicalOutput4333 : ExponentCode := normalNode8544

theorem canonicalSound4333 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4333.moment H = canonicalOutput4333.moment H :=
  canonical_of_padded canonicalInput4333 canonicalOutput4333 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation170, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput4334 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, -1, -1, 0, 2], ![0, 1, 0, -1, 0], ![1, 0, 0, 1, -2], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput4334 : ExponentCode := normalNode8445

theorem canonicalSound4334 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4334.moment H = canonicalOutput4334.moment H :=
  canonical_of_padded canonicalInput4334 canonicalOutput4334 (by decide) (by decide)
    ⟨false, false, canonicalPermutation40, canonicalPermutation32⟩ (by decide +kernel) hH

def canonicalInput4335 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, -1, -1, 0, 2], ![0, 1, 0, -1, 0], ![1, 0, 1, 0, -2], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput4335 : ExponentCode := normalNode8482

theorem canonicalSound4335 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4335.moment H = canonicalOutput4335.moment H :=
  canonical_of_padded canonicalInput4335 canonicalOutput4335 (by decide) (by decide)
    ⟨true, true, canonicalPermutation41, canonicalPermutation22⟩ (by decide +kernel) hH

def canonicalInput4336 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, -1, -1, 0, 2], ![0, 1, 0, -1, 0], ![1, 0, 1, 1, -3], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput4336 : ExponentCode := normalNode8488

theorem canonicalSound4336 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4336.moment H = canonicalOutput4336.moment H :=
  canonical_of_padded canonicalInput4336 canonicalOutput4336 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation194, canonicalPermutation17⟩ (by decide +kernel) hH

def canonicalInput4337 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, -1, -1, 0, 2], ![0, 1, 0, 0, -1], ![1, 0, -1, 1, -1], ![1, 1, 1, -2, -1]]⟩

def canonicalOutput4337 : ExponentCode := normalNode9532

theorem canonicalSound4337 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4337.moment H = canonicalOutput4337.moment H :=
  canonical_of_padded canonicalInput4337 canonicalOutput4337 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, canonicalPermutation35⟩ (by decide +kernel) hH

def canonicalInput4338 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, -1, -1, 0, 2], ![0, 1, 0, 0, -1], ![1, 0, 0, 1, -2], ![1, 1, 0, -2, 0]]⟩

def canonicalOutput4338 : ExponentCode := normalNode6635

theorem canonicalSound4338 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4338.moment H = canonicalOutput4338.moment H :=
  canonical_of_padded canonicalInput4338 canonicalOutput4338 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput4339 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, -1, -1, 0, 2], ![0, 1, 0, 0, -1], ![1, 0, 1, -1, -1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput4339 : ExponentCode := normalNode7638

theorem canonicalSound4339 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4339.moment H = canonicalOutput4339.moment H :=
  canonical_of_padded canonicalInput4339 canonicalOutput4339 (by decide) (by decide)
    ⟨true, false, canonicalPermutation46, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput4340 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, -1, -1, 0, 2], ![0, 1, 0, 0, -1], ![1, 0, 1, 0, -2], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput4340 : ExponentCode := normalNode6632

theorem canonicalSound4340 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4340.moment H = canonicalOutput4340.moment H :=
  canonical_of_padded canonicalInput4340 canonicalOutput4340 (by decide) (by decide)
    ⟨true, false, canonicalPermutation46, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput4341 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, -1, -1, 0, 2], ![0, 1, 0, 0, -1], ![1, 1, -1, 1, -2], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput4341 : ExponentCode := normalNode10791

theorem canonicalSound4341 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4341.moment H = canonicalOutput4341.moment H :=
  canonical_of_padded canonicalInput4341 canonicalOutput4341 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation166, canonicalPermutation17⟩ (by decide +kernel) hH

def canonicalInput4342 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, -1, -1, 0, 2], ![0, 1, 0, 1, -2], ![0, 1, 1, -2, 0], ![2, 0, -1, 0, -1]]⟩

def canonicalOutput4342 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code380

theorem canonicalSound4342 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4342.moment H = canonicalOutput4342.moment H :=
  canonical_of_padded canonicalInput4342 canonicalOutput4342 (by decide) (by decide)
    ⟨true, false, canonicalPermutation43, canonicalPermutation22⟩ (by decide +kernel) hH

def canonicalInput4343 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, -1, -1, 0, 2], ![0, 1, 0, 1, -2], ![1, 0, -1, 0, 0], ![1, 1, 1, -2, -1]]⟩

def canonicalOutput4343 : ExponentCode := normalNode8531

theorem canonicalSound4343 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4343.moment H = canonicalOutput4343.moment H :=
  canonical_of_padded canonicalInput4343 canonicalOutput4343 (by decide) (by decide)
    ⟨true, false, canonicalPermutation28, OAI.MUB6.Certificate.PairSemantics.permutation188⟩ (by decide +kernel) hH

def canonicalInput4344 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, -1, -1, 0, 2], ![0, 1, 0, 1, -2], ![1, 0, 0, -1, 0], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput4344 : ExponentCode := normalNode8078

theorem canonicalSound4344 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4344.moment H = canonicalOutput4344.moment H :=
  canonical_of_padded canonicalInput4344 canonicalOutput4344 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation52⟩ (by decide +kernel) hH

def canonicalInput4345 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, -1, -1, 0, 2], ![0, 1, 0, 1, -2], ![1, 0, 0, 0, -1], ![1, 1, 0, -2, 0]]⟩

def canonicalOutput4345 : ExponentCode := normalNode6634

theorem canonicalSound4345 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4345.moment H = canonicalOutput4345.moment H :=
  canonical_of_padded canonicalInput4345 canonicalOutput4345 (by decide) (by decide)
    ⟨true, false, canonicalPermutation20, canonicalPermutation23⟩ (by decide +kernel) hH

def canonicalInput4346 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, -1, -1, 0, 2], ![0, 1, 0, 1, -2], ![1, 0, 1, -1, -1], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput4346 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code384

theorem canonicalSound4346 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4346.moment H = canonicalOutput4346.moment H :=
  canonical_of_padded canonicalInput4346 canonicalOutput4346 (by decide) (by decide)
    ⟨true, false, canonicalPermutation43, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput4347 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, -1, -1, 0, 2], ![0, 1, 0, 1, -2], ![1, 1, -1, 0, -1], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput4347 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code378

theorem canonicalSound4347 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4347.moment H = canonicalOutput4347.moment H :=
  canonical_of_padded canonicalInput4347 canonicalOutput4347 (by decide) (by decide)
    ⟨true, false, canonicalPermutation43, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput4348 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, -1, -1, 0, 2], ![0, 1, 0, 1, -2], ![1, 1, 0, -2, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput4348 : ExponentCode := normalNode6634

theorem canonicalSound4348 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4348.moment H = canonicalOutput4348.moment H :=
  canonical_of_padded canonicalInput4348 canonicalOutput4348 (by decide) (by decide)
    ⟨true, false, canonicalPermutation20, canonicalPermutation20⟩ (by decide +kernel) hH

def canonicalInput4349 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, -1, -1, 0, 2], ![0, 1, 1, -2, 0], ![1, 0, -1, 0, 0], ![1, 1, 0, 1, -3]]⟩

def canonicalOutput4349 : ExponentCode := normalNode9210

theorem canonicalSound4349 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4349.moment H = canonicalOutput4349.moment H :=
  canonical_of_padded canonicalInput4349 canonicalOutput4349 (by decide) (by decide)
    ⟨true, false, canonicalPermutation28, OAI.MUB6.Certificate.PairSemantics.permutation189⟩ (by decide +kernel) hH

def canonicalInput4350 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, -1, -1, 0, 2], ![0, 1, 1, -2, 0], ![1, 0, -1, 1, -1], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput4350 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code375

theorem canonicalSound4350 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4350.moment H = canonicalOutput4350.moment H :=
  canonical_of_padded canonicalInput4350 canonicalOutput4350 (by decide) (by decide)
    ⟨true, false, canonicalPermutation20, canonicalPermutation56⟩ (by decide +kernel) hH

def canonicalInput4351 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, -1, -1, 0, 2], ![0, 1, 1, -2, 0], ![1, 1, -1, 0, -1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput4351 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code377

theorem canonicalSound4351 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4351.moment H = canonicalOutput4351.moment H :=
  canonical_of_padded canonicalInput4351 canonicalOutput4351 (by decide) (by decide)
    ⟨true, false, canonicalPermutation33, canonicalPermutation56⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
