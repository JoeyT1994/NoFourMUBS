import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes13
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.MomentCodes19
import NoFourMUBs.Step2.SOS.MomentCodes20
import NoFourMUBs.Step2.SOS.MomentCodes21
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes44
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput18304 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![0, -1, 1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput18304 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2846⟩

theorem canonicalSound18304 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18304.moment H = canonicalOutput18304.moment H :=
  canonical_of_padded canonicalInput18304 canonicalOutput18304 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput18305 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, -1, 1, -1], ![0, 0, 0, 0]]⟩

def canonicalOutput18305 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1114⟩

theorem canonicalSound18305 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18305.moment H = canonicalOutput18305.moment H :=
  canonical_of_padded canonicalInput18305 canonicalOutput18305 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, canonicalPermutation81⟩ (by decide +kernel) hH

def canonicalInput18306 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![0, -1, 1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput18306 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2783⟩

theorem canonicalSound18306 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18306.moment H = canonicalOutput18306.moment H :=
  canonical_of_padded canonicalInput18306 canonicalOutput18306 (by decide) (by decide)
    ⟨false, false, canonicalPermutation28, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput18307 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![0, -1, 2, -1], ![1, 0, -2, 1]]⟩

def canonicalOutput18307 : ExponentCode := normalNode9084

theorem canonicalSound18307 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18307.moment H = canonicalOutput18307.moment H :=
  canonical_of_padded canonicalInput18307 canonicalOutput18307 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation199, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput18308 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![0, -1, 3, -2], ![1, 0, -3, 2]]⟩

def canonicalOutput18308 : ExponentCode := normalNode9365

theorem canonicalSound18308 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18308.moment H = canonicalOutput18308.moment H :=
  canonical_of_padded canonicalInput18308 canonicalOutput18308 (by decide) (by decide)
    ⟨false, false, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput18309 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 1, -1], ![0, 0, -1, 1]]⟩

def canonicalOutput18309 : ExponentCode := normalNode9465

theorem canonicalSound18309 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18309.moment H = canonicalOutput18309.moment H :=
  canonical_of_padded canonicalInput18309 canonicalOutput18309 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18310 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 2, -2], ![0, 0, -2, 2]]⟩

def canonicalOutput18310 : ExponentCode := normalNode9452

theorem canonicalSound18310 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18310.moment H = canonicalOutput18310.moment H :=
  canonical_of_padded canonicalInput18310 canonicalOutput18310 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18311 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 3, -3], ![0, 0, -3, 3]]⟩

def canonicalOutput18311 : ExponentCode := normalNode9437

theorem canonicalSound18311 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18311.moment H = canonicalOutput18311.moment H :=
  canonical_of_padded canonicalInput18311 canonicalOutput18311 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18312 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![0, 1, -1, 0], ![0, 1, 3, -4], ![0, -1, -2, 3], ![1, 0, -1, 0]]⟩

def canonicalOutput18312 : ExponentCode := normalNode9367

theorem canonicalSound18312 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18312.moment H = canonicalOutput18312.moment H :=
  canonical_of_padded canonicalInput18312 canonicalOutput18312 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18313 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![0, 1, -1, 0], ![0, 1, 3, -4], ![0, -1, 0, 1], ![1, 0, -3, 2]]⟩

def canonicalOutput18313 : ExponentCode := normalNode9424

theorem canonicalSound18313 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18313.moment H = canonicalOutput18313.moment H :=
  canonical_of_padded canonicalInput18313 canonicalOutput18313 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18314 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![0, 1, -1, 0], ![0, 1, 3, -4], ![1, -1, -3, 3]]⟩

def canonicalOutput18314 : ExponentCode := normalNode9474

theorem canonicalSound18314 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18314.moment H = canonicalOutput18314.moment H :=
  canonical_of_padded canonicalInput18314 canonicalOutput18314 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput18315 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![0, 1, -1, 0], ![0, 1, 3, -4], ![1, -1, -2, 2], ![0, 0, -1, 1]]⟩

def canonicalOutput18315 : ExponentCode := normalNode9466

theorem canonicalSound18315 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18315.moment H = canonicalOutput18315.moment H :=
  canonical_of_padded canonicalInput18315 canonicalOutput18315 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18316 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![0, 1, -1, 0], ![0, 1, 3, -4], ![1, -1, 0, 0], ![0, 0, -3, 3]]⟩

def canonicalOutput18316 : ExponentCode := normalNode9438

theorem canonicalSound18316 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18316.moment H = canonicalOutput18316.moment H :=
  canonical_of_padded canonicalInput18316 canonicalOutput18316 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18317 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![0, 1, -1, 0], ![1, -1, 1, -1], ![0, 1, -1, 0]]⟩

def canonicalOutput18317 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1114⟩

theorem canonicalSound18317 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18317.moment H = canonicalOutput18317.moment H :=
  canonical_of_padded canonicalInput18317 canonicalOutput18317 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput18318 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![0, 1, 0, -1], ![-1, 1, 2, -2], ![1, -2, -2, 3], ![1, 1, -1, -1]]⟩

def canonicalOutput18318 : ExponentCode := normalNode9337

theorem canonicalSound18318 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18318.moment H = canonicalOutput18318.moment H :=
  canonical_of_padded canonicalInput18318 canonicalOutput18318 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18319 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![0, 1, 0, -1], ![-1, 1, 2, -2], ![1, -1, -3, 3], ![1, 0, 0, -1]]⟩

def canonicalOutput18319 : ExponentCode := normalNode9299

theorem canonicalSound18319 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18319.moment H = canonicalOutput18319.moment H :=
  canonical_of_padded canonicalInput18319 canonicalOutput18319 (by decide) (by decide)
    ⟨false, false, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput18320 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![0, 1, 0, -1], ![0, 0, 1, -1], ![1, 0, -2, 1]]⟩

def canonicalOutput18320 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1117⟩

theorem canonicalSound18320 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18320.moment H = canonicalOutput18320.moment H :=
  canonical_of_padded canonicalInput18320 canonicalOutput18320 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput18321 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![0, 1, 0, -1], ![0, 0, 2, -2], ![1, 0, -3, 2]]⟩

def canonicalOutput18321 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1109⟩

theorem canonicalSound18321 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18321.moment H = canonicalOutput18321.moment H :=
  canonical_of_padded canonicalInput18321 canonicalOutput18321 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput18322 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![0, 1, 0, -1], ![0, 1, 1, -2], ![0, -2, -1, 3], ![1, 1, -1, -1]]⟩

def canonicalOutput18322 : ExponentCode := normalNode11083

theorem canonicalSound18322 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18322.moment H = canonicalOutput18322.moment H :=
  canonical_of_padded canonicalInput18322 canonicalOutput18322 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput18323 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![0, 1, 0, -1], ![0, 1, 1, -2], ![1, -2, -2, 3], ![0, 1, 0, -1]]⟩

def canonicalOutput18323 : ExponentCode := normalNode11125

theorem canonicalSound18323 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18323.moment H = canonicalOutput18323.moment H :=
  canonical_of_padded canonicalInput18323 canonicalOutput18323 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput18324 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![0, 1, 0, -1], ![0, 1, 2, -3], ![0, -1, -3, 4], ![1, 0, 0, -1]]⟩

def canonicalOutput18324 : ExponentCode := normalNode9356

theorem canonicalSound18324 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18324.moment H = canonicalOutput18324.moment H :=
  canonical_of_padded canonicalInput18324 canonicalOutput18324 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18325 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![0, 1, 0, -1], ![0, 1, 2, -3], ![1, -1, -3, 3], ![0, 0, 0, 0]]⟩

def canonicalOutput18325 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1128⟩

theorem canonicalSound18325 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18325.moment H = canonicalOutput18325.moment H :=
  canonical_of_padded canonicalInput18325 canonicalOutput18325 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18326 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![0, 1, 1, -2], ![0, 0, 1, -1], ![1, 0, -3, 2]]⟩

def canonicalOutput18326 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1116⟩

theorem canonicalSound18326 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18326.moment H = canonicalOutput18326.moment H :=
  canonical_of_padded canonicalInput18326 canonicalOutput18326 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput18327 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![0, 1, 1, -2], ![0, 2, -3, 1], ![1, -2, 1, 0]]⟩

def canonicalOutput18327 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1249⟩

theorem canonicalSound18327 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18327.moment H = canonicalOutput18327.moment H :=
  canonical_of_padded canonicalInput18327 canonicalOutput18327 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput18328 : ExponentCode := ⟨3, 4, ![![-1, -1, 1, 1], ![0, 2, -4, 2], ![1, -1, 3, -3]]⟩

def canonicalOutput18328 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node247⟩

theorem canonicalSound18328 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18328.moment H = canonicalOutput18328.moment H :=
  canonical_of_padded canonicalInput18328 canonicalOutput18328 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput18329 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![0, 2, 2, -4], ![0, -2, 0, 2], ![1, 1, -3, 1]]⟩

def canonicalOutput18329 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1090⟩

theorem canonicalSound18329 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18329.moment H = canonicalOutput18329.moment H :=
  canonical_of_padded canonicalInput18329 canonicalOutput18329 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18330 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![0, 2, 2, -4], ![1, -2, 0, 1], ![0, 1, -3, 2]]⟩

def canonicalOutput18330 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1125⟩

theorem canonicalSound18330 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18330.moment H = canonicalOutput18330.moment H :=
  canonical_of_padded canonicalInput18330 canonicalOutput18330 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18331 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![0, 3, 1, -4], ![0, -1, -1, 2], ![1, -1, -1, 1]]⟩

def canonicalOutput18331 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1341⟩

theorem canonicalSound18331 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18331.moment H = canonicalOutput18331.moment H :=
  canonical_of_padded canonicalInput18331 canonicalOutput18331 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput18332 : ExponentCode := ⟨3, 4, ![![-1, -1, 1, 1], ![0, 4, -4, 0], ![1, -3, 3, -1]]⟩

def canonicalOutput18332 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node242⟩

theorem canonicalSound18332 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18332.moment H = canonicalOutput18332.moment H :=
  canonical_of_padded canonicalInput18332 canonicalOutput18332 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput18333 : ExponentCode := ⟨3, 4, ![![-1, -1, 1, 1], ![1, -3, 3, -1], ![0, 4, -4, 0]]⟩

def canonicalOutput18333 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node242⟩

theorem canonicalSound18333 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18333.moment H = canonicalOutput18333.moment H :=
  canonical_of_padded canonicalInput18333 canonicalOutput18333 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18334 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![1, -2, -2, 3], ![0, 0, 2, -2], ![0, 3, -1, -2]]⟩

def canonicalOutput18334 : ExponentCode := normalNode9472

theorem canonicalSound18334 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18334.moment H = canonicalOutput18334.moment H :=
  canonical_of_padded canonicalInput18334 canonicalOutput18334 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18335 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![1, -2, -1, 2], ![0, 0, 2, -2], ![0, 3, -2, -1]]⟩

def canonicalOutput18335 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node852⟩

theorem canonicalSound18335 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18335.moment H = canonicalOutput18335.moment H :=
  canonical_of_padded canonicalInput18335 canonicalOutput18335 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation161, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput18336 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![1, -2, 0, 1], ![0, 1, -2, 1], ![0, 2, 1, -3]]⟩

def canonicalOutput18336 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1249⟩

theorem canonicalSound18336 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18336.moment H = canonicalOutput18336.moment H :=
  canonical_of_padded canonicalInput18336 canonicalOutput18336 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput18337 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![1, -1, -3, 3], ![0, 0, 3, -3], ![0, 2, -1, -1]]⟩

def canonicalOutput18337 : ExponentCode := normalNode9441

theorem canonicalSound18337 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18337.moment H = canonicalOutput18337.moment H :=
  canonical_of_padded canonicalInput18337 canonicalOutput18337 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput18338 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![1, -1, -2, 2], ![0, 0, 2, -2], ![0, 2, -1, -1]]⟩

def canonicalOutput18338 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1111⟩

theorem canonicalSound18338 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18338.moment H = canonicalOutput18338.moment H :=
  canonical_of_padded canonicalInput18338 canonicalOutput18338 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput18339 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![1, -1, -1, 1], ![0, -1, 2, -1], ![0, 3, -2, -1]]⟩

def canonicalOutput18339 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1123⟩

theorem canonicalSound18339 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18339.moment H = canonicalOutput18339.moment H :=
  canonical_of_padded canonicalInput18339 canonicalOutput18339 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput18340 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![1, -1, -1, 1], ![0, 0, -2, 2], ![0, 2, 2, -4]]⟩

def canonicalOutput18340 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1113⟩

theorem canonicalSound18340 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18340.moment H = canonicalOutput18340.moment H :=
  canonical_of_padded canonicalInput18340 canonicalOutput18340 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18341 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![1, -1, -1, 1], ![0, 0, 2, -2], ![0, 2, -2, 0]]⟩

def canonicalOutput18341 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1112⟩

theorem canonicalSound18341 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18341.moment H = canonicalOutput18341.moment H :=
  canonical_of_padded canonicalInput18341 canonicalOutput18341 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput18342 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![1, -1, -1, 1], ![0, 1, -2, 1], ![0, 1, 2, -3]]⟩

def canonicalOutput18342 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1123⟩

theorem canonicalSound18342 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18342.moment H = canonicalOutput18342.moment H :=
  canonical_of_padded canonicalInput18342 canonicalOutput18342 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput18343 : ExponentCode := ⟨6, 4, ![![-1, -1, 1, 1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, 2, -1, 0], ![0, 0, -3, 3], ![0, 0, 3, -3]]⟩

def canonicalOutput18343 : ExponentCode := normalNode5371

theorem canonicalSound18343 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18343.moment H = canonicalOutput18343.moment H :=
  canonical_of_padded canonicalInput18343 canonicalOutput18343 (by decide) (by decide)
    ⟨false, true, canonicalPermutation133, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput18344 : ExponentCode := ⟨3, 4, ![![-1, -1, 1, 1], ![1, 0, -4, 3], ![0, 1, 3, -4]]⟩

def canonicalOutput18344 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node249⟩

theorem canonicalSound18344 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18344.moment H = canonicalOutput18344.moment H :=
  canonical_of_padded canonicalInput18344 canonicalOutput18344 (by decide) (by decide)
    ⟨true, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18345 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![-3, 1, -1, 1, 2], ![2, -1, 1, 0, -2], ![2, 1, -1, -2, 0]]⟩

def canonicalOutput18345 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1378

theorem canonicalSound18345 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18345.moment H = canonicalOutput18345.moment H :=
  canonical_of_padded canonicalInput18345 canonicalOutput18345 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput18346 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![-2, 0, -1, 1, 2], ![0, 2, -1, 0, -1], ![3, -1, 1, -2, -1]]⟩

def canonicalOutput18346 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1165

theorem canonicalSound18346 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18346.moment H = canonicalOutput18346.moment H :=
  canonical_of_padded canonicalInput18346 canonicalOutput18346 (by decide) (by decide)
    ⟨true, true, canonicalPermutation45, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput18347 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![-2, 1, -1, 1, 1], ![1, -1, 1, 0, -1], ![2, 1, -1, -2, 0]]⟩

def canonicalOutput18347 : ExponentCode := normalNode9278

theorem canonicalSound18347 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18347.moment H = canonicalOutput18347.moment H :=
  canonical_of_padded canonicalInput18347 canonicalOutput18347 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput18348 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![-2, 1, -1, 1, 1], ![2, -1, 1, 0, -2], ![1, 1, -1, -2, 1]]⟩

def canonicalOutput18348 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1311

theorem canonicalSound18348 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18348.moment H = canonicalOutput18348.moment H :=
  canonical_of_padded canonicalInput18348 canonicalOutput18348 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput18349 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![-2, 2, 0, 0, 0], ![1, -1, -2, 1, 1], ![2, 0, 1, -2, -1]]⟩

def canonicalOutput18349 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1782⟩

theorem canonicalSound18349 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18349.moment H = canonicalOutput18349.moment H :=
  canonical_of_padded canonicalInput18349 canonicalOutput18349 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput18350 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![-1, -2, 1, 1, 1], ![2, 0, 0, 0, -2], ![0, 3, -2, -2, 1]]⟩

def canonicalOutput18350 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code959

theorem canonicalSound18350 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18350.moment H = canonicalOutput18350.moment H :=
  canonical_of_padded canonicalInput18350 canonicalOutput18350 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation199, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput18351 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![-1, -1, -1, 1, 2], ![0, 1, 1, -2, 0], ![2, 1, -1, 0, -2]]⟩

def canonicalOutput18351 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1168

theorem canonicalSound18351 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18351.moment H = canonicalOutput18351.moment H :=
  canonical_of_padded canonicalInput18351 canonicalOutput18351 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation185, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput18352 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![-1, -1, -1, 1, 2], ![0, 1, 1, -1, -1], ![2, 1, -1, -1, -1]]⟩

def canonicalOutput18352 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1383

theorem canonicalSound18352 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18352.moment H = canonicalOutput18352.moment H :=
  canonical_of_padded canonicalInput18352 canonicalOutput18352 (by decide) (by decide)
    ⟨true, true, canonicalPermutation19, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput18353 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![-1, -1, -1, 1, 2], ![1, 0, 1, -1, -1], ![1, 2, -1, -1, -1]]⟩

def canonicalOutput18353 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1383

theorem canonicalSound18353 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18353.moment H = canonicalOutput18353.moment H :=
  canonical_of_padded canonicalInput18353 canonicalOutput18353 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput18354 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![-1, -1, -1, 1, 2], ![1, 0, 1, 0, -2], ![1, 2, -1, -2, 0]]⟩

def canonicalOutput18354 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code884

theorem canonicalSound18354 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18354.moment H = canonicalOutput18354.moment H :=
  canonical_of_padded canonicalInput18354 canonicalOutput18354 (by decide) (by decide)
    ⟨true, false, canonicalPermutation71, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput18355 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![-1, -1, -1, 2, 1], ![0, 0, 1, -2, 1], ![2, 2, -1, -1, -2]]⟩

def canonicalOutput18355 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1238

theorem canonicalSound18355 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18355.moment H = canonicalOutput18355.moment H :=
  canonical_of_padded canonicalInput18355 canonicalOutput18355 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation182, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput18356 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![-1, -1, -1, 2, 1], ![0, 1, 1, -3, 1], ![2, 1, -1, 0, -2]]⟩

def canonicalOutput18356 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1303

theorem canonicalSound18356 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18356.moment H = canonicalOutput18356.moment H :=
  canonical_of_padded canonicalInput18356 canonicalOutput18356 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput18357 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![-1, -1, 1, 1, 0], ![-1, 2, -2, 0, 1], ![3, 0, 0, -2, -1]]⟩

def canonicalOutput18357 : ExponentCode := normalNode7661

theorem canonicalSound18357 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18357.moment H = canonicalOutput18357.moment H :=
  canonical_of_padded canonicalInput18357 canonicalOutput18357 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18358 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![-1, -1, 1, 1, 0], ![-1, 3, -1, 0, -1], ![3, -1, -1, -2, 1]]⟩

def canonicalOutput18358 : ExponentCode := normalNode7674

theorem canonicalSound18358 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18358.moment H = canonicalOutput18358.moment H :=
  canonical_of_padded canonicalInput18358 canonicalOutput18358 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18359 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![-1, -1, 1, 1, 0], ![0, 1, -2, 0, 1], ![2, 1, 0, -2, -1]]⟩

def canonicalOutput18359 : ExponentCode := normalNode5626

theorem canonicalSound18359 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18359.moment H = canonicalOutput18359.moment H :=
  canonical_of_padded canonicalInput18359 canonicalOutput18359 (by decide) (by decide)
    ⟨true, false, canonicalPermutation42, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput18360 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![-1, -1, 1, 1, 0], ![1, 0, -2, 0, 1], ![1, 2, 0, -2, -1]]⟩

def canonicalOutput18360 : ExponentCode := normalNode5626

theorem canonicalSound18360 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18360.moment H = canonicalOutput18360.moment H :=
  canonical_of_padded canonicalInput18360 canonicalOutput18360 (by decide) (by decide)
    ⟨true, false, canonicalPermutation32, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput18361 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![-1, -1, 1, 1, 0], ![1, 1, -1, 0, -1], ![1, 1, -1, -2, 1]]⟩

def canonicalOutput18361 : ExponentCode := normalNode8779

theorem canonicalSound18361 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18361.moment H = canonicalOutput18361.moment H :=
  canonical_of_padded canonicalInput18361 canonicalOutput18361 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18362 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![-1, -1, 1, 1, 0], ![2, 0, -1, 0, -1], ![0, 2, -1, -2, 1]]⟩

def canonicalOutput18362 : ExponentCode := normalNode5626

theorem canonicalSound18362 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18362.moment H = canonicalOutput18362.moment H :=
  canonical_of_padded canonicalInput18362 canonicalOutput18362 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput18363 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![-1, -1, 1, 1, 0], ![3, -1, -1, 0, -1], ![-1, 3, -1, -2, 1]]⟩

def canonicalOutput18363 : ExponentCode := normalNode7674

theorem canonicalSound18363 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18363.moment H = canonicalOutput18363.moment H :=
  canonical_of_padded canonicalInput18363 canonicalOutput18363 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation168, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18364 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![-1, 0, -2, 1, 2], ![-1, 2, 1, -1, -1], ![3, -1, 0, -1, -1]]⟩

def canonicalOutput18364 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1345

theorem canonicalSound18364 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18364.moment H = canonicalOutput18364.moment H :=
  canonical_of_padded canonicalInput18364 canonicalOutput18364 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18365 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![-1, 0, -2, 1, 2], ![0, 2, 0, -1, -1], ![2, -1, 1, -1, -1]]⟩

def canonicalOutput18365 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1172

theorem canonicalSound18365 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18365.moment H = canonicalOutput18365.moment H :=
  canonical_of_padded canonicalInput18365 canonicalOutput18365 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation169, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput18366 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![-1, 0, -2, 1, 2], ![0, 2, 0, 0, -2], ![2, -1, 1, -2, 0]]⟩

def canonicalOutput18366 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code883

theorem canonicalSound18366 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18366.moment H = canonicalOutput18366.moment H :=
  canonical_of_padded canonicalInput18366 canonicalOutput18366 (by decide) (by decide)
    ⟨true, false, canonicalPermutation21, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput18367 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![-1, 0, -1, 1, 1], ![-1, 2, -1, 0, 0], ![3, -1, 1, -2, -1]]⟩

def canonicalOutput18367 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2059⟩

theorem canonicalSound18367 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18367.moment H = canonicalOutput18367.moment H :=
  canonical_of_padded canonicalInput18367 canonicalOutput18367 (by decide) (by decide)
    ⟨true, true, canonicalPermutation29, canonicalPermutation6⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
