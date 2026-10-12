import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes001
import NoFourMUBs.Step2.SOS.NormalizationNodes005
import NoFourMUBs.Step2.SOS.NormalizationNodes006
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes45
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes47
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes49
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput31296 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -2, 1], ![0, 1, 0, -1], ![-2, 1, 0, 1], ![2, 0, -1, -1], ![0, -3, 2, 1]]⟩

def canonicalOutput31296 : ExponentCode := normalNode4195

theorem canonicalSound31296 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31296.moment H = canonicalOutput31296.moment H :=
  canonical_of_padded canonicalInput31296 canonicalOutput31296 (by decide) (by decide)
    ⟨false, false, canonicalPermutation168, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput31297 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -2, 1], ![0, 1, 0, -1], ![-1, -1, 0, 2], ![-1, -1, 2, 0], ![2, 0, -1, -1]]⟩

def canonicalOutput31297 : ExponentCode := normalNode4244

theorem canonicalSound31297 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31297.moment H = canonicalOutput31297.moment H :=
  canonical_of_padded canonicalInput31297 canonicalOutput31297 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation337, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31298 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -2, 1], ![0, 1, 0, -1], ![-1, -1, 0, 2], ![-1, 0, 2, -1], ![2, -1, -1, 0]]⟩

def canonicalOutput31298 : ExponentCode := normalNode5278

theorem canonicalSound31298 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31298.moment H = canonicalOutput31298.moment H :=
  canonical_of_padded canonicalInput31298 canonicalOutput31298 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation338, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31299 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -2, 1], ![0, 1, 0, -1], ![-1, -1, 1, 1], ![-1, -1, 1, 1], ![2, 0, -1, -1]]⟩

def canonicalOutput31299 : ExponentCode := normalNode4245

theorem canonicalSound31299 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31299.moment H = canonicalOutput31299.moment H :=
  canonical_of_padded canonicalInput31299 canonicalOutput31299 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation337, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31300 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -2, 1], ![0, 1, 0, -1], ![-1, -1, 1, 1], ![-1, 0, -1, 2], ![2, -1, 1, -2]]⟩

def canonicalOutput31300 : ExponentCode := normalNode5046

theorem canonicalSound31300 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31300.moment H = canonicalOutput31300.moment H :=
  canonical_of_padded canonicalInput31300 canonicalOutput31300 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation358, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31301 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -2, 1], ![0, 1, 0, -1], ![-1, -1, 1, 1], ![-1, 1, -1, 1], ![2, -2, 1, -1]]⟩

def canonicalOutput31301 : ExponentCode := normalNode2477

theorem canonicalSound31301 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31301.moment H = canonicalOutput31301.moment H :=
  canonical_of_padded canonicalInput31301 canonicalOutput31301 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation314, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput31302 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -2, 1], ![0, 1, 0, -1], ![-1, 0, -1, 2], ![-1, 0, 2, -1], ![2, -2, 0, 0]]⟩

def canonicalOutput31302 : ExponentCode := normalNode5938

theorem canonicalSound31302 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31302.moment H = canonicalOutput31302.moment H :=
  canonical_of_padded canonicalInput31302 canonicalOutput31302 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation337, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31303 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -2, 1], ![0, 1, 0, -1], ![-1, 0, -1, 2], ![-1, 1, 1, -1], ![2, -3, 1, 0]]⟩

def canonicalOutput31303 : ExponentCode := normalNode1777

theorem canonicalSound31303 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31303.moment H = canonicalOutput31303.moment H :=
  canonical_of_padded canonicalInput31303 canonicalOutput31303 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation315, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput31304 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -2, 1], ![0, 1, 0, -1], ![-1, 0, -1, 2], ![2, 0, 0, -2], ![-1, -2, 2, 1]]⟩

def canonicalOutput31304 : ExponentCode := normalNode2910

theorem canonicalSound31304 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31304.moment H = canonicalOutput31304.moment H :=
  canonical_of_padded canonicalInput31304 canonicalOutput31304 (by decide) (by decide)
    ⟨false, false, canonicalPermutation301, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput31305 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -2, 1], ![0, 1, 0, -1], ![-1, 0, 2, -1], ![2, -1, 0, -1], ![-1, -1, -1, 3]]⟩

def canonicalOutput31305 : ExponentCode := normalNode5323

theorem canonicalSound31305 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31305.moment H = canonicalOutput31305.moment H :=
  canonical_of_padded canonicalInput31305 canonicalOutput31305 (by decide) (by decide)
    ⟨false, true, canonicalPermutation119, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31306 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -2, 1], ![0, 1, 0, -1], ![-1, 0, 2, -1], ![2, 0, -1, -1], ![-1, -2, 0, 3]]⟩

def canonicalOutput31306 : ExponentCode := normalNode1840

theorem canonicalSound31306 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31306.moment H = canonicalOutput31306.moment H :=
  canonical_of_padded canonicalInput31306 canonicalOutput31306 (by decide) (by decide)
    ⟨false, false, canonicalPermutation301, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput31307 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -2, 1], ![0, 1, 0, -1], ![0, -1, -1, 2], ![2, -2, 0, 0], ![-2, 1, 2, -1]]⟩

def canonicalOutput31307 : ExponentCode := normalNode2337

theorem canonicalSound31307 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31307.moment H = canonicalOutput31307.moment H :=
  canonical_of_padded canonicalInput31307 canonicalOutput31307 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation314, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput31308 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -2, 1], ![0, 1, 0, -1], ![0, -1, -1, 2], ![2, 0, 0, -2], ![-2, -1, 2, 1]]⟩

def canonicalOutput31308 : ExponentCode := normalNode2908

theorem canonicalSound31308 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31308.moment H = canonicalOutput31308.moment H :=
  canonical_of_padded canonicalInput31308 canonicalOutput31308 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31309 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -2, 1], ![0, 1, 0, -1], ![0, -1, 2, -1], ![2, -1, 0, -1], ![-2, 0, -1, 3]]⟩

def canonicalOutput31309 : ExponentCode := normalNode3500

theorem canonicalSound31309 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31309.moment H = canonicalOutput31309.moment H :=
  canonical_of_padded canonicalInput31309 canonicalOutput31309 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31310 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -2, 1], ![0, 1, 0, -1], ![0, -1, 2, -1], ![2, 0, -1, -1], ![-2, -1, 0, 3]]⟩

def canonicalOutput31310 : ExponentCode := normalNode1829

theorem canonicalSound31310 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31310.moment H = canonicalOutput31310.moment H :=
  canonical_of_padded canonicalInput31310 canonicalOutput31310 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31311 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -2, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, 2, -3], ![-2, -1, -1, 4]]⟩

def canonicalOutput31311 : ExponentCode := normalNode1371

theorem canonicalSound31311 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31311.moment H = canonicalOutput31311.moment H :=
  canonical_of_padded canonicalInput31311 canonicalOutput31311 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31312 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -2, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, -1, 0, 3], ![1, -1, 2, -2]]⟩

def canonicalOutput31312 : ExponentCode := normalNode2021

theorem canonicalSound31312 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31312.moment H = canonicalOutput31312.moment H :=
  canonical_of_padded canonicalInput31312 canonicalOutput31312 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation259, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31313 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -2, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 2, -3], ![-2, -2, 0, 4]]⟩

def canonicalOutput31313 : ExponentCode := normalNode446

theorem canonicalSound31313 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31313.moment H = canonicalOutput31313.moment H :=
  canonical_of_padded canonicalInput31313 canonicalOutput31313 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31314 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -2, 1], ![0, 1, 0, -1], ![2, -1, 0, -1], ![-1, -1, 3, -1], ![-1, 0, -2, 3]]⟩

def canonicalOutput31314 : ExponentCode := normalNode5324

theorem canonicalSound31314 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31314.moment H = canonicalOutput31314.moment H :=
  canonical_of_padded canonicalInput31314 canonicalOutput31314 (by decide) (by decide)
    ⟨false, true, canonicalPermutation145, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31315 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -2, 1], ![0, 1, 0, -1], ![2, 0, -1, -1], ![-1, -1, -1, 3], ![-1, -1, 3, -1]]⟩

def canonicalOutput31315 : ExponentCode := normalNode4243

theorem canonicalSound31315 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31315.moment H = canonicalOutput31315.moment H :=
  canonical_of_padded canonicalInput31315 canonicalOutput31315 (by decide) (by decide)
    ⟨false, true, canonicalPermutation169, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31316 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -2, 1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![0, 1, 2, -3], ![-2, -1, -1, 4]]⟩

def canonicalOutput31316 : ExponentCode := normalNode1375

theorem canonicalSound31316 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31316.moment H = canonicalOutput31316.moment H :=
  canonical_of_padded canonicalInput31316 canonicalOutput31316 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation312, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31317 : ExponentCode := ⟨4, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![-1, 1, 2, -2], ![1, -2, -2, 3]]⟩

def canonicalOutput31317 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1216⟩

theorem canonicalSound31317 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31317.moment H = canonicalOutput31317.moment H :=
  canonical_of_padded canonicalInput31317 canonicalOutput31317 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31318 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![0, -1, 0, 1], ![1, -1, 0, 0], ![0, 0, -3, 3], ![-1, 1, 3, -3]]⟩

def canonicalOutput31318 : ExponentCode := normalNode10973

theorem canonicalSound31318 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31318.moment H = canonicalOutput31318.moment H :=
  canonical_of_padded canonicalInput31318 canonicalOutput31318 (by decide) (by decide)
    ⟨false, false, canonicalPermutation106, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31319 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![-2, 0, 0, 2], ![0, -2, 2, 0], ![2, 0, -1, -1]]⟩

def canonicalOutput31319 : ExponentCode := normalNode3802

theorem canonicalSound31319 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31319.moment H = canonicalOutput31319.moment H :=
  canonical_of_padded canonicalInput31319 canonicalOutput31319 (by decide) (by decide)
    ⟨false, false, canonicalPermutation331, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput31320 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![-2, 0, 0, 2], ![0, -1, 2, -1], ![2, -1, -1, 0]]⟩

def canonicalOutput31320 : ExponentCode := normalNode4447

theorem canonicalSound31320 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31320.moment H = canonicalOutput31320.moment H :=
  canonical_of_padded canonicalInput31320 canonicalOutput31320 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation338, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput31321 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![-2, 0, 1, 1], ![0, -2, 1, 1], ![2, 0, -1, -1]]⟩

def canonicalOutput31321 : ExponentCode := normalNode4200

theorem canonicalSound31321 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31321.moment H = canonicalOutput31321.moment H :=
  canonical_of_padded canonicalInput31321 canonicalOutput31321 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31322 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![-2, 0, 1, 1], ![0, -1, -1, 2], ![2, -1, 1, -2]]⟩

def canonicalOutput31322 : ExponentCode := normalNode4263

theorem canonicalSound31322 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31322.moment H = canonicalOutput31322.moment H :=
  canonical_of_padded canonicalInput31322 canonicalOutput31322 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31323 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![-2, 0, 1, 1], ![1, -1, -2, 2], ![1, -1, 2, -2]]⟩

def canonicalOutput31323 : ExponentCode := normalNode4481

theorem canonicalSound31323 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31323.moment H = canonicalOutput31323.moment H :=
  canonical_of_padded canonicalInput31323 canonicalOutput31323 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation242, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31324 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![-2, 1, 0, 1], ![0, -1, 2, -1], ![2, -2, -1, 1]]⟩

def canonicalOutput31324 : ExponentCode := normalNode2724

theorem canonicalSound31324 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31324.moment H = canonicalOutput31324.moment H :=
  canonical_of_padded canonicalInput31324 canonicalOutput31324 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation341, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput31325 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![-2, 1, 0, 1], ![2, 0, -1, -1], ![0, -3, 2, 1]]⟩

def canonicalOutput31325 : ExponentCode := normalNode5382

theorem canonicalSound31325 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31325.moment H = canonicalOutput31325.moment H :=
  canonical_of_padded canonicalInput31325 canonicalOutput31325 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation242, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput31326 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![-1, -1, 0, 2], ![-1, -1, 2, 0], ![2, 0, -1, -1]]⟩

def canonicalOutput31326 : ExponentCode := normalNode4317

theorem canonicalSound31326 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31326.moment H = canonicalOutput31326.moment H :=
  canonical_of_padded canonicalInput31326 canonicalOutput31326 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation337, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31327 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![-1, -1, 0, 2], ![-1, 0, 2, -1], ![2, -1, -1, 0]]⟩

def canonicalOutput31327 : ExponentCode := normalNode4448

theorem canonicalSound31327 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31327.moment H = canonicalOutput31327.moment H :=
  canonical_of_padded canonicalInput31327 canonicalOutput31327 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation337, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput31328 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![-1, -1, 1, 1], ![-1, -1, 1, 1], ![2, 0, -1, -1]]⟩

def canonicalOutput31328 : ExponentCode := normalNode4318

theorem canonicalSound31328 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31328.moment H = canonicalOutput31328.moment H :=
  canonical_of_padded canonicalInput31328 canonicalOutput31328 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation337, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31329 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![-1, -1, 1, 1], ![-1, 0, -1, 2], ![2, -1, 1, -2]]⟩

def canonicalOutput31329 : ExponentCode := normalNode5075

theorem canonicalSound31329 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31329.moment H = canonicalOutput31329.moment H :=
  canonical_of_padded canonicalInput31329 canonicalOutput31329 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation338, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31330 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![-1, -1, 1, 1], ![-1, 1, -1, 1], ![2, -2, 1, -1]]⟩

def canonicalOutput31330 : ExponentCode := normalNode5230

theorem canonicalSound31330 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31330.moment H = canonicalOutput31330.moment H :=
  canonical_of_padded canonicalInput31330 canonicalOutput31330 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation337, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput31331 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![-1, 0, -1, 2], ![-1, 0, 2, -1], ![2, -2, 0, 0]]⟩

def canonicalOutput31331 : ExponentCode := normalNode4326

theorem canonicalSound31331 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31331.moment H = canonicalOutput31331.moment H :=
  canonical_of_padded canonicalInput31331 canonicalOutput31331 (by decide) (by decide)
    ⟨false, true, canonicalPermutation338, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput31332 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![-1, 0, -1, 2], ![-1, 1, 1, -1], ![2, -3, 1, 0]]⟩

def canonicalOutput31332 : ExponentCode := normalNode3593

theorem canonicalSound31332 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31332.moment H = canonicalOutput31332.moment H :=
  canonical_of_padded canonicalInput31332 canonicalOutput31332 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation337, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput31333 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![-1, 0, -1, 2], ![2, 0, 0, -2], ![-1, -2, 2, 1]]⟩

def canonicalOutput31333 : ExponentCode := normalNode2536

theorem canonicalSound31333 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31333.moment H = canonicalOutput31333.moment H :=
  canonical_of_padded canonicalInput31333 canonicalOutput31333 (by decide) (by decide)
    ⟨false, false, canonicalPermutation301, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput31334 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![-1, 0, 2, -1], ![2, -1, 0, -1], ![-1, -1, -1, 3]]⟩

def canonicalOutput31334 : ExponentCode := normalNode5364

theorem canonicalSound31334 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31334.moment H = canonicalOutput31334.moment H :=
  canonical_of_padded canonicalInput31334 canonicalOutput31334 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation280, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31335 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![-1, 0, 2, -1], ![2, 0, -1, -1], ![-1, -2, 0, 3]]⟩

def canonicalOutput31335 : ExponentCode := normalNode1841

theorem canonicalSound31335 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31335.moment H = canonicalOutput31335.moment H :=
  canonical_of_padded canonicalInput31335 canonicalOutput31335 (by decide) (by decide)
    ⟨false, false, canonicalPermutation301, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput31336 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![0, -1, -1, 2], ![2, -2, 0, 0], ![-2, 1, 2, -1]]⟩

def canonicalOutput31336 : ExponentCode := normalNode2363

theorem canonicalSound31336 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31336.moment H = canonicalOutput31336.moment H :=
  canonical_of_padded canonicalInput31336 canonicalOutput31336 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput31337 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![0, -1, -1, 2], ![2, 0, 0, -2], ![-2, -1, 2, 1]]⟩

def canonicalOutput31337 : ExponentCode := normalNode2533

theorem canonicalSound31337 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31337.moment H = canonicalOutput31337.moment H :=
  canonical_of_padded canonicalInput31337 canonicalOutput31337 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31338 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![0, -1, 2, -1], ![2, -1, 0, -1], ![-2, 0, -1, 3]]⟩

def canonicalOutput31338 : ExponentCode := normalNode3502

theorem canonicalSound31338 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31338.moment H = canonicalOutput31338.moment H :=
  canonical_of_padded canonicalInput31338 canonicalOutput31338 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31339 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![0, -1, 2, -1], ![2, 0, -1, -1], ![-2, -1, 0, 3]]⟩

def canonicalOutput31339 : ExponentCode := normalNode1831

theorem canonicalSound31339 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31339.moment H = canonicalOutput31339.moment H :=
  canonical_of_padded canonicalInput31339 canonicalOutput31339 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31340 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, 2, -3], ![-2, -1, -1, 4]]⟩

def canonicalOutput31340 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node2936⟩

theorem canonicalSound31340 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31340.moment H = canonicalOutput31340.moment H :=
  canonical_of_padded canonicalInput31340 canonicalOutput31340 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31341 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-2, -1, 0, 3], ![1, -1, 2, -2]]⟩

def canonicalOutput31341 : ExponentCode := normalNode2024

theorem canonicalSound31341 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31341.moment H = canonicalOutput31341.moment H :=
  canonical_of_padded canonicalInput31341 canonicalOutput31341 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation259, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31342 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 0, 2, -3], ![-2, -2, 0, 4]]⟩

def canonicalOutput31342 : ExponentCode := normalNode449

theorem canonicalSound31342 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31342.moment H = canonicalOutput31342.moment H :=
  canonical_of_padded canonicalInput31342 canonicalOutput31342 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31343 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![2, -1, 0, -1], ![-1, -1, 3, -1], ![-1, 0, -2, 3]]⟩

def canonicalOutput31343 : ExponentCode := normalNode5628

theorem canonicalSound31343 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31343.moment H = canonicalOutput31343.moment H :=
  canonical_of_padded canonicalInput31343 canonicalOutput31343 (by decide) (by decide)
    ⟨false, true, canonicalPermutation168, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31344 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![2, 0, -1, -1], ![-1, -1, -1, 3], ![-1, -1, 3, -1]]⟩

def canonicalOutput31344 : ExponentCode := normalNode4316

theorem canonicalSound31344 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31344.moment H = canonicalOutput31344.moment H :=
  canonical_of_padded canonicalInput31344 canonicalOutput31344 (by decide) (by decide)
    ⟨false, true, canonicalPermutation169, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31345 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-2, 0, -1, 3], ![0, -2, 2, 0], ![2, 0, -1, -1]]⟩

def canonicalOutput31345 : ExponentCode := normalNode3347

theorem canonicalSound31345 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31345.moment H = canonicalOutput31345.moment H :=
  canonical_of_padded canonicalInput31345 canonicalOutput31345 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31346 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-2, 0, -1, 3], ![0, -1, 2, -1], ![2, -1, -1, 0]]⟩

def canonicalOutput31346 : ExponentCode := normalNode3503

theorem canonicalSound31346 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31346.moment H = canonicalOutput31346.moment H :=
  canonical_of_padded canonicalInput31346 canonicalOutput31346 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31347 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-2, 0, 0, 2], ![0, -2, 1, 1], ![2, 0, -1, -1]]⟩

def canonicalOutput31347 : ExponentCode := normalNode3747

theorem canonicalSound31347 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31347.moment H = canonicalOutput31347.moment H :=
  canonical_of_padded canonicalInput31347 canonicalOutput31347 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31348 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-2, 0, 0, 2], ![0, -2, 2, 0], ![2, 0, -2, 0]]⟩

def canonicalOutput31348 : ExponentCode := normalNode3803

theorem canonicalSound31348 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31348.moment H = canonicalOutput31348.moment H :=
  canonical_of_padded canonicalInput31348 canonicalOutput31348 (by decide) (by decide)
    ⟨false, false, canonicalPermutation192, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput31349 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-2, 0, 0, 2], ![0, -2, 3, -1], ![2, 0, -3, 1]]⟩

def canonicalOutput31349 : ExponentCode := normalNode3345

theorem canonicalSound31349 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31349.moment H = canonicalOutput31349.moment H :=
  canonical_of_padded canonicalInput31349 canonicalOutput31349 (by decide) (by decide)
    ⟨false, false, canonicalPermutation192, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput31350 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-2, 0, 0, 2], ![0, -1, -1, 2], ![2, -1, 1, -2]]⟩

def canonicalOutput31350 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3020⟩

theorem canonicalSound31350 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31350.moment H = canonicalOutput31350.moment H :=
  canonical_of_padded canonicalInput31350 canonicalOutput31350 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation315, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput31351 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-2, 0, 0, 2], ![0, -1, 1, 0], ![2, -1, -1, 0]]⟩

def canonicalOutput31351 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3173⟩

theorem canonicalSound31351 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31351.moment H = canonicalOutput31351.moment H :=
  canonical_of_padded canonicalInput31351 canonicalOutput31351 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31352 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-2, 0, 0, 2], ![0, -1, 2, -1], ![2, -1, -2, 1]]⟩

def canonicalOutput31352 : ExponentCode := normalNode3978

theorem canonicalSound31352 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31352.moment H = canonicalOutput31352.moment H :=
  canonical_of_padded canonicalInput31352 canonicalOutput31352 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31353 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-2, 0, 0, 2], ![1, -1, -2, 2], ![1, -1, 2, -2]]⟩

def canonicalOutput31353 : ExponentCode := normalNode4085

theorem canonicalSound31353 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31353.moment H = canonicalOutput31353.moment H :=
  canonical_of_padded canonicalInput31353 canonicalOutput31353 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation241, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31354 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-2, 0, 1, 1], ![0, -2, 0, 2], ![2, 0, -1, -1]]⟩

def canonicalOutput31354 : ExponentCode := normalNode3752

theorem canonicalSound31354 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31354.moment H = canonicalOutput31354.moment H :=
  canonical_of_padded canonicalInput31354 canonicalOutput31354 (by decide) (by decide)
    ⟨false, false, canonicalPermutation331, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput31355 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-2, 0, 1, 1], ![0, -2, 1, 1], ![2, 0, -2, 0]]⟩

def canonicalOutput31355 : ExponentCode := normalNode3853

theorem canonicalSound31355 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31355.moment H = canonicalOutput31355.moment H :=
  canonical_of_padded canonicalInput31355 canonicalOutput31355 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation338, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31356 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-2, 0, 1, 1], ![0, -1, -2, 3], ![2, -1, 1, -2]]⟩

def canonicalOutput31356 : ExponentCode := normalNode4222

theorem canonicalSound31356 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31356.moment H = canonicalOutput31356.moment H :=
  canonical_of_padded canonicalInput31356 canonicalOutput31356 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31357 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-2, 0, 1, 1], ![0, -1, -1, 2], ![2, -1, 0, -1]]⟩

def canonicalOutput31357 : ExponentCode := normalNode4264

theorem canonicalSound31357 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31357.moment H = canonicalOutput31357.moment H :=
  canonical_of_padded canonicalInput31357 canonicalOutput31357 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31358 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-2, 0, 1, 1], ![1, -1, -3, 3], ![1, -1, 2, -2]]⟩

def canonicalOutput31358 : ExponentCode := normalNode4470

theorem canonicalSound31358 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31358.moment H = canonicalOutput31358.moment H :=
  canonical_of_padded canonicalInput31358 canonicalOutput31358 (by decide) (by decide)
    ⟨false, false, canonicalPermutation163, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31359 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-2, 0, 1, 1], ![1, -1, -2, 2], ![1, -1, 1, -1]]⟩

def canonicalOutput31359 : ExponentCode := normalNode4471

theorem canonicalSound31359 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31359.moment H = canonicalOutput31359.moment H :=
  canonical_of_padded canonicalInput31359 canonicalOutput31359 (by decide) (by decide)
    ⟨false, false, canonicalPermutation163, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
