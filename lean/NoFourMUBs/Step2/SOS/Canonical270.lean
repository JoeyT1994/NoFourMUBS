import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes018
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes38
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes40
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput17280 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, 0, 2, -2], ![0, 0, 0, 0], ![1, 1, -2, 0]]⟩

def canonicalOutput17280 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node207⟩

theorem canonicalSound17280 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17280.moment H = canonicalOutput17280.moment H :=
  canonical_of_padded canonicalInput17280 canonicalOutput17280 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput17281 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![0, 0, 2, -2], ![0, 1, -3, 2], ![0, -1, 1, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput17281 : ExponentCode := normalNode8971

theorem canonicalSound17281 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17281.moment H = canonicalOutput17281.moment H :=
  canonical_of_padded canonicalInput17281 canonicalOutput17281 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17282 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![0, 0, 2, -2], ![0, 1, -3, 2], ![1, -1, 0, 0], ![0, 1, 1, -2]]⟩

def canonicalOutput17282 : ExponentCode := normalNode9105

theorem canonicalSound17282 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17282.moment H = canonicalOutput17282.moment H :=
  canonical_of_padded canonicalInput17282 canonicalOutput17282 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17283 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![0, 0, 2, -2], ![0, 1, -2, 1], ![0, -1, 1, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput17283 : ExponentCode := normalNode8972

theorem canonicalSound17283 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17283.moment H = canonicalOutput17283.moment H :=
  canonical_of_padded canonicalInput17283 canonicalOutput17283 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17284 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![0, 0, 2, -2], ![0, 1, -2, 1], ![1, -1, 0, 0], ![0, 1, 0, -1]]⟩

def canonicalOutput17284 : ExponentCode := normalNode9107

theorem canonicalSound17284 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17284.moment H = canonicalOutput17284.moment H :=
  canonical_of_padded canonicalInput17284 canonicalOutput17284 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17285 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, 0, 2, -2], ![0, 3, -3, 0], ![1, -2, 1, 0]]⟩

def canonicalOutput17285 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1269⟩

theorem canonicalSound17285 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17285.moment H = canonicalOutput17285.moment H :=
  canonical_of_padded canonicalInput17285 canonicalOutput17285 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput17286 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, 0, 2, -2], ![0, 3, -2, -1], ![1, -2, 0, 1]]⟩

def canonicalOutput17286 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1235⟩

theorem canonicalSound17286 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17286.moment H = canonicalOutput17286.moment H :=
  canonical_of_padded canonicalInput17286 canonicalOutput17286 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput17287 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, 0, 2, -2], ![1, 0, -3, 2], ![0, 1, 1, -2]]⟩

def canonicalOutput17287 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1052⟩

theorem canonicalSound17287 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17287.moment H = canonicalOutput17287.moment H :=
  canonical_of_padded canonicalInput17287 canonicalOutput17287 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput17288 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![0, 0, 3, -3], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput17288 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2600⟩

theorem canonicalSound17288 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17288.moment H = canonicalOutput17288.moment H :=
  canonical_of_padded canonicalInput17288 canonicalOutput17288 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17289 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, 0, 3, -3], ![0, 0, 0, 0], ![1, 1, -3, 1]]⟩

def canonicalOutput17289 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node188⟩

theorem canonicalSound17289 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17289.moment H = canonicalOutput17289.moment H :=
  canonical_of_padded canonicalInput17289 canonicalOutput17289 (by decide) (by decide)
    ⟨true, true, canonicalPermutation2, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput17290 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![0, 0, 3, -3], ![0, 1, -1, 0], ![0, 0, -1, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput17290 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2600⟩

theorem canonicalSound17290 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17290.moment H = canonicalOutput17290.moment H :=
  canonical_of_padded canonicalInput17290 canonicalOutput17290 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17291 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, 0, 3, -3], ![0, 1, 0, -1], ![1, 0, -3, 2]]⟩

def canonicalOutput17291 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1062⟩

theorem canonicalSound17291 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17291.moment H = canonicalOutput17291.moment H :=
  canonical_of_padded canonicalInput17291 canonicalOutput17291 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput17292 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![0, 0, 4, -4], ![-1, 2, -3, 2], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput17292 : ExponentCode := normalNode4854

theorem canonicalSound17292 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17292.moment H = canonicalOutput17292.moment H :=
  canonical_of_padded canonicalInput17292 canonicalOutput17292 (by decide) (by decide)
    ⟨false, true, canonicalPermutation17, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput17293 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![0, 0, 4, -4], ![0, 1, -3, 2], ![0, 0, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput17293 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1069⟩

theorem canonicalSound17293 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17293.moment H = canonicalOutput17293.moment H :=
  canonical_of_padded canonicalInput17293 canonicalOutput17293 (by decide) (by decide)
    ⟨false, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17294 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![0, 0, 4, -4], ![0, 1, -3, 2], ![1, -1, 0, 0], ![0, 1, -1, 0]]⟩

def canonicalOutput17294 : ExponentCode := normalNode9114

theorem canonicalSound17294 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17294.moment H = canonicalOutput17294.moment H :=
  canonical_of_padded canonicalInput17294 canonicalOutput17294 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17295 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, 0, 4, -4], ![0, 1, -1, 0], ![1, 0, -3, 2]]⟩

def canonicalOutput17295 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1069⟩

theorem canonicalSound17295 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17295.moment H = canonicalOutput17295.moment H :=
  canonical_of_padded canonicalInput17295 canonicalOutput17295 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput17296 : ExponentCode := ⟨3, 4, ![![-1, -1, 0, 2], ![0, 1, -4, 3], ![1, 0, 4, -5]]⟩

def canonicalOutput17296 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node130⟩

theorem canonicalSound17296 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17296.moment H = canonicalOutput17296.moment H :=
  canonical_of_padded canonicalInput17296 canonicalOutput17296 (by decide) (by decide)
    ⟨true, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17297 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![0, 1, -3, 2], ![-1, 1, 0, 0], ![1, -1, 3, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput17297 : ExponentCode := normalNode8874

theorem canonicalSound17297 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17297.moment H = canonicalOutput17297.moment H :=
  canonical_of_padded canonicalInput17297 canonicalOutput17297 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17298 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, 1, -3, 2], ![0, 0, 1, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput17298 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1046⟩

theorem canonicalSound17298 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17298.moment H = canonicalOutput17298.moment H :=
  canonical_of_padded canonicalInput17298 canonicalOutput17298 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17299 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![0, 1, -3, 2], ![0, 1, -1, 0], ![0, -1, 4, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput17299 : ExponentCode := normalNode9037

theorem canonicalSound17299 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17299.moment H = canonicalOutput17299.moment H :=
  canonical_of_padded canonicalInput17299 canonicalOutput17299 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17300 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![0, 1, -3, 2], ![0, 1, -1, 0], ![1, -1, 3, -3], ![0, 0, 1, -1]]⟩

def canonicalOutput17300 : ExponentCode := normalNode9093

theorem canonicalSound17300 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17300.moment H = canonicalOutput17300.moment H :=
  canonical_of_padded canonicalInput17300 canonicalOutput17300 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17301 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, 1, -3, 2], ![0, 1, -1, 0], ![1, -1, 4, -4]]⟩

def canonicalOutput17301 : ExponentCode := normalNode9678

theorem canonicalSound17301 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17301.moment H = canonicalOutput17301.moment H :=
  canonical_of_padded canonicalInput17301 canonicalOutput17301 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput17302 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![0, 1, -3, 2], ![0, 1, 0, -1], ![0, -1, 3, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput17302 : ExponentCode := normalNode9024

theorem canonicalSound17302 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17302.moment H = canonicalOutput17302.moment H :=
  canonical_of_padded canonicalInput17302 canonicalOutput17302 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17303 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![0, 1, -3, 2], ![0, 1, 0, -1], ![1, -1, 3, -3], ![0, 0, 0, 0]]⟩

def canonicalOutput17303 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1072⟩

theorem canonicalSound17303 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17303.moment H = canonicalOutput17303.moment H :=
  canonical_of_padded canonicalInput17303 canonicalOutput17303 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17304 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, 1, -3, 2], ![0, 2, 1, -3], ![1, -2, 2, -1]]⟩

def canonicalOutput17304 : ExponentCode := normalNode7108

theorem canonicalSound17304 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17304.moment H = canonicalOutput17304.moment H :=
  canonical_of_padded canonicalInput17304 canonicalOutput17304 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput17305 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, 1, -3, 2], ![1, -1, 1, -1], ![0, 1, 2, -3]]⟩

def canonicalOutput17305 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1074⟩

theorem canonicalSound17305 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17305.moment H = canonicalOutput17305.moment H :=
  canonical_of_padded canonicalInput17305 canonicalOutput17305 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17306 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, 1, -3, 2], ![1, -1, 3, -3], ![0, 1, 0, -1]]⟩

def canonicalOutput17306 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1072⟩

theorem canonicalSound17306 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17306.moment H = canonicalOutput17306.moment H :=
  canonical_of_padded canonicalInput17306 canonicalOutput17306 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17307 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![0, 1, -2, 1], ![0, -2, 3, -1], ![0, 2, 0, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput17307 : ExponentCode := normalNode8907

theorem canonicalSound17307 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17307.moment H = canonicalOutput17307.moment H :=
  canonical_of_padded canonicalInput17307 canonicalOutput17307 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17308 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, 1, -2, 1], ![0, -1, 3, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput17308 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1013⟩

theorem canonicalSound17308 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17308.moment H = canonicalOutput17308.moment H :=
  canonical_of_padded canonicalInput17308 canonicalOutput17308 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17309 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, 1, -2, 1], ![0, 0, -1, 1], ![1, 0, 3, -4]]⟩

def canonicalOutput17309 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1042⟩

theorem canonicalSound17309 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17309.moment H = canonicalOutput17309.moment H :=
  canonical_of_padded canonicalInput17309 canonicalOutput17309 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17310 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, 1, -2, 1], ![0, 0, 0, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput17310 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node185⟩

theorem canonicalSound17310 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17310.moment H = canonicalOutput17310.moment H :=
  canonical_of_padded canonicalInput17310 canonicalOutput17310 (by decide) (by decide)
    ⟨true, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput17311 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, 1, -2, 1], ![0, 2, -1, -1], ![1, -2, 3, -2]]⟩

def canonicalOutput17311 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node731⟩

theorem canonicalSound17311 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17311.moment H = canonicalOutput17311.moment H :=
  canonical_of_padded canonicalInput17311 canonicalOutput17311 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput17312 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, 1, -2, 1], ![0, 2, 0, -2], ![1, -2, 2, -1]]⟩

def canonicalOutput17312 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node844⟩

theorem canonicalSound17312 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17312.moment H = canonicalOutput17312.moment H :=
  canonical_of_padded canonicalInput17312 canonicalOutput17312 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput17313 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, 1, -2, 1], ![0, 2, 1, -3], ![1, -2, 1, 0]]⟩

def canonicalOutput17313 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1016⟩

theorem canonicalSound17313 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17313.moment H = canonicalOutput17313.moment H :=
  canonical_of_padded canonicalInput17313 canonicalOutput17313 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput17314 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, 1, -2, 1], ![1, -1, 2, -2], ![0, 1, 0, -1]]⟩

def canonicalOutput17314 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node837⟩

theorem canonicalSound17314 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17314.moment H = canonicalOutput17314.moment H :=
  canonical_of_padded canonicalInput17314 canonicalOutput17314 (by decide) (by decide)
    ⟨false, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput17315 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![0, 1, -1, 0], ![-1, 1, 0, 0], ![1, -1, -2, 2], ![1, 0, 3, -4]]⟩

def canonicalOutput17315 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2567⟩

theorem canonicalSound17315 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17315.moment H = canonicalOutput17315.moment H :=
  canonical_of_padded canonicalInput17315 canonicalOutput17315 (by decide) (by decide)
    ⟨false, false, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput17316 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![0, 1, -1, 0], ![-1, 1, 1, -1], ![1, -1, -1, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput17316 : ExponentCode := normalNode8866

theorem canonicalSound17316 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17316.moment H = canonicalOutput17316.moment H :=
  canonical_of_padded canonicalInput17316 canonicalOutput17316 (by decide) (by decide)
    ⟨false, false, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput17317 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![0, 1, -1, 0], ![-1, 1, 1, -1], ![1, -1, 1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput17317 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2088⟩

theorem canonicalSound17317 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17317.moment H = canonicalOutput17317.moment H :=
  canonical_of_padded canonicalInput17317 canonicalOutput17317 (by decide) (by decide)
    ⟨false, true, canonicalPermutation0, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput17318 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![0, 1, -1, 0], ![-1, 1, 1, -1], ![1, -1, 2, -2], ![1, 0, -2, 1]]⟩

def canonicalOutput17318 : ExponentCode := normalNode8886

theorem canonicalSound17318 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17318.moment H = canonicalOutput17318.moment H :=
  canonical_of_padded canonicalInput17318 canonicalOutput17318 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17319 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![0, 1, -1, 0], ![-1, 1, 1, -1], ![1, -1, 3, -3], ![1, 0, -3, 2]]⟩

def canonicalOutput17319 : ExponentCode := normalNode8887

theorem canonicalSound17319 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17319.moment H = canonicalOutput17319.moment H :=
  canonical_of_padded canonicalInput17319 canonicalOutput17319 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17320 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![0, 1, -1, 0], ![-1, 1, 2, -2], ![1, -1, 1, -1], ![1, 0, -2, 1]]⟩

def canonicalOutput17320 : ExponentCode := normalNode8885

theorem canonicalSound17320 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17320.moment H = canonicalOutput17320.moment H :=
  canonical_of_padded canonicalInput17320 canonicalOutput17320 (by decide) (by decide)
    ⟨false, false, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput17321 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![0, 1, -1, 0], ![-1, 1, 3, -3], ![1, -1, -2, 2], ![1, 0, 0, -1]]⟩

def canonicalOutput17321 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2566⟩

theorem canonicalSound17321 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17321.moment H = canonicalOutput17321.moment H :=
  canonical_of_padded canonicalInput17321 canonicalOutput17321 (by decide) (by decide)
    ⟨false, false, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput17322 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![0, 1, -1, 0], ![-1, 1, 3, -3], ![1, -1, -1, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput17322 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2571⟩

theorem canonicalSound17322 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17322.moment H = canonicalOutput17322.moment H :=
  canonical_of_padded canonicalInput17322 canonicalOutput17322 (by decide) (by decide)
    ⟨false, false, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput17323 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![0, 1, -1, 0], ![-1, 1, 4, -4], ![1, -1, -2, 2], ![1, 0, -1, 0]]⟩

def canonicalOutput17323 : ExponentCode := normalNode8850

theorem canonicalSound17323 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17323.moment H = canonicalOutput17323.moment H :=
  canonical_of_padded canonicalInput17323 canonicalOutput17323 (by decide) (by decide)
    ⟨false, false, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput17324 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, 1, -1, 0], ![0, 0, 0, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput17324 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node294⟩

theorem canonicalSound17324 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17324.moment H = canonicalOutput17324.moment H :=
  canonical_of_padded canonicalInput17324 canonicalOutput17324 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput17325 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, 1, -1, 0], ![0, 0, 3, -3], ![1, 0, -2, 1]]⟩

def canonicalOutput17325 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1063⟩

theorem canonicalSound17325 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17325.moment H = canonicalOutput17325.moment H :=
  canonical_of_padded canonicalInput17325 canonicalOutput17325 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput17326 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, 1, -1, 0], ![0, 0, 4, -4], ![1, 0, -3, 2]]⟩

def canonicalOutput17326 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1069⟩

theorem canonicalSound17326 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17326.moment H = canonicalOutput17326.moment H :=
  canonical_of_padded canonicalInput17326 canonicalOutput17326 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput17327 : ExponentCode := ⟨6, 4, ![![-1, -1, 0, 2], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-1, -1, 0, 2], ![1, 0, 3, -4]]⟩

def canonicalOutput17327 : ExponentCode := normalNode8775

theorem canonicalSound17327 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17327.moment H = canonicalOutput17327.moment H :=
  canonical_of_padded canonicalInput17327 canonicalOutput17327 (by decide) (by decide)
    ⟨false, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17328 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![0, -1, -2, 3], ![1, 0, 3, -4]]⟩

def canonicalOutput17328 : ExponentCode := normalNode8916

theorem canonicalSound17328 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17328.moment H = canonicalOutput17328.moment H :=
  canonical_of_padded canonicalInput17328 canonicalOutput17328 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17329 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![0, -1, 0, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput17329 : ExponentCode := normalNode9073

theorem canonicalSound17329 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17329.moment H = canonicalOutput17329.moment H :=
  canonical_of_padded canonicalInput17329 canonicalOutput17329 (by decide) (by decide)
    ⟨false, true, canonicalPermutation20, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput17330 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![0, -1, 3, -2], ![1, 0, -2, 1]]⟩

def canonicalOutput17330 : ExponentCode := normalNode9030

theorem canonicalSound17330 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17330.moment H = canonicalOutput17330.moment H :=
  canonical_of_padded canonicalInput17330 canonicalOutput17330 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17331 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![0, -1, 4, -3], ![1, 0, -3, 2]]⟩

def canonicalOutput17331 : ExponentCode := normalNode9038

theorem canonicalSound17331 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17331.moment H = canonicalOutput17331.moment H :=
  canonical_of_padded canonicalInput17331 canonicalOutput17331 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17332 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, -2, 2], ![0, 0, 3, -3]]⟩

def canonicalOutput17332 : ExponentCode := normalNode9109

theorem canonicalSound17332 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17332.moment H = canonicalOutput17332.moment H :=
  canonical_of_padded canonicalInput17332 canonicalOutput17332 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17333 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, -1, 1], ![0, 0, 2, -2]]⟩

def canonicalOutput17333 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2614⟩

theorem canonicalSound17333 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17333.moment H = canonicalOutput17333.moment H :=
  canonical_of_padded canonicalInput17333 canonicalOutput17333 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17334 : ExponentCode := ⟨6, 4, ![![-1, -1, 0, 2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-1, 0, -2, 3], ![1, 0, 3, -4]]⟩

def canonicalOutput17334 : ExponentCode := normalNode8792

theorem canonicalSound17334 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17334.moment H = canonicalOutput17334.moment H :=
  canonical_of_padded canonicalInput17334 canonicalOutput17334 (by decide) (by decide)
    ⟨false, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17335 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 2, -2], ![0, 0, -1, 1]]⟩

def canonicalOutput17335 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2442⟩

theorem canonicalSound17335 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17335.moment H = canonicalOutput17335.moment H :=
  canonical_of_padded canonicalInput17335 canonicalOutput17335 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput17336 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 3, -3], ![0, 0, -2, 2]]⟩

def canonicalOutput17336 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2591⟩

theorem canonicalSound17336 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17336.moment H = canonicalOutput17336.moment H :=
  canonical_of_padded canonicalInput17336 canonicalOutput17336 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17337 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![0, 1, -1, 0], ![0, 1, 1, -2], ![0, -1, 1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput17337 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2586⟩

theorem canonicalSound17337 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17337.moment H = canonicalOutput17337.moment H :=
  canonical_of_padded canonicalInput17337 canonicalOutput17337 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17338 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![0, 1, -1, 0], ![0, 1, 1, -2], ![0, -1, 2, -1], ![1, 0, -2, 1]]⟩

def canonicalOutput17338 : ExponentCode := normalNode9004

theorem canonicalSound17338 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17338.moment H = canonicalOutput17338.moment H :=
  canonical_of_padded canonicalInput17338 canonicalOutput17338 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17339 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![0, 1, -1, 0], ![0, 1, 1, -2], ![1, -1, 1, -1], ![0, 0, -1, 1]]⟩

def canonicalOutput17339 : ExponentCode := normalNode9084

theorem canonicalSound17339 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17339.moment H = canonicalOutput17339.moment H :=
  canonical_of_padded canonicalInput17339 canonicalOutput17339 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17340 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![0, 1, -1, 0], ![0, 1, 2, -3], ![0, -1, 0, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput17340 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2579⟩

theorem canonicalSound17340 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17340.moment H = canonicalOutput17340.moment H :=
  canonical_of_padded canonicalInput17340 canonicalOutput17340 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17341 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![0, 1, -1, 0], ![0, 1, 2, -3], ![1, -1, -1, 1], ![0, 0, 0, 0]]⟩

def canonicalOutput17341 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1081⟩

theorem canonicalSound17341 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17341.moment H = canonicalOutput17341.moment H :=
  canonical_of_padded canonicalInput17341 canonicalOutput17341 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17342 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![0, 1, -1, 0], ![0, 1, 3, -4], ![0, -1, -2, 3], ![1, 0, 0, -1]]⟩

def canonicalOutput17342 : ExponentCode := normalNode8917

theorem canonicalSound17342 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17342.moment H = canonicalOutput17342.moment H :=
  canonical_of_padded canonicalInput17342 canonicalOutput17342 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17343 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![0, 1, -1, 0], ![0, 1, 3, -4], ![0, -1, -1, 2], ![1, 0, -1, 0]]⟩

def canonicalOutput17343 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2577⟩

theorem canonicalSound17343 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17343.moment H = canonicalOutput17343.moment H :=
  canonical_of_padded canonicalInput17343 canonicalOutput17343 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
