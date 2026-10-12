import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes005
import NoFourMUBs.Step2.SOS.NormalizationNodes008
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes033
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput20544 : ExponentCode := ⟨6, 6, ![![-1, 0, 0, 0, 0, 1], ![0, -2, 1, 1, 0, 0], ![0, 1, -2, 1, 0, 0], ![-1, 1, 1, -2, 1, 0], ![1, 0, 0, 0, -2, 1], ![1, 0, 0, 0, 1, -2]]⟩

def canonicalOutput20544 : ExponentCode := normalNode8459

theorem canonicalSound20544 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20544.moment H = canonicalOutput20544.moment H :=
  canonical_of_padded canonicalInput20544 canonicalOutput20544 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation386, OAI.MUB6.Certificate.PairSemantics.permutation182⟩ (by decide +kernel) hH

def canonicalInput20545 : ExponentCode := ⟨6, 6, ![![-1, 0, 0, 0, 0, 1], ![0, -2, 1, 1, 0, 0], ![0, 1, -2, 1, 0, 0], ![0, 1, 1, -2, 0, 0], ![0, 0, 0, 0, -1, 1], ![1, 0, 0, 0, 1, -2]]⟩

def canonicalOutput20545 : ExponentCode := normalNode8064

theorem canonicalSound20545 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20545.moment H = canonicalOutput20545.moment H :=
  canonical_of_padded canonicalInput20545 canonicalOutput20545 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation386, canonicalPermutation34⟩ (by decide +kernel) hH

def canonicalInput20546 : ExponentCode := ⟨6, 6, ![![-1, 0, 0, 0, 0, 1], ![0, -2, 1, 1, 0, 0], ![0, 1, -2, 1, 0, 0], ![0, 1, 1, -2, 0, 0], ![1, 0, 0, 0, -2, 1], ![0, 0, 0, 0, 2, -2]]⟩

def canonicalOutput20546 : ExponentCode := normalNode8065

theorem canonicalSound20546 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20546.moment H = canonicalOutput20546.moment H :=
  canonical_of_padded canonicalInput20546 canonicalOutput20546 (by decide) (by decide)
    ⟨false, true, canonicalPermutation128, OAI.MUB6.Certificate.PairSemantics.permutation197⟩ (by decide +kernel) hH

def canonicalInput20547 : ExponentCode := ⟨6, 6, ![![-1, 0, 0, 0, 0, 1], ![0, -1, -1, 2, 0, 0], ![-1, -1, 2, -1, 1, 0], ![0, 2, -1, -1, 0, 0], ![1, 0, 0, 0, -2, 1], ![1, 0, 0, 0, 1, -2]]⟩

def canonicalOutput20547 : ExponentCode := normalNode8457

theorem canonicalSound20547 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20547.moment H = canonicalOutput20547.moment H :=
  canonical_of_padded canonicalInput20547 canonicalOutput20547 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation380, OAI.MUB6.Certificate.PairSemantics.permutation184⟩ (by decide +kernel) hH

def canonicalInput20548 : ExponentCode := ⟨6, 6, ![![-1, 0, 0, 0, 0, 1], ![0, -1, -1, 2, 0, 0], ![0, -1, 2, -1, 0, 0], ![-1, 2, -1, -1, 1, 0], ![1, 0, 0, 0, -2, 1], ![1, 0, 0, 0, 1, -2]]⟩

def canonicalOutput20548 : ExponentCode := normalNode8457

theorem canonicalSound20548 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20548.moment H = canonicalOutput20548.moment H :=
  canonical_of_padded canonicalInput20548 canonicalOutput20548 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation386, OAI.MUB6.Certificate.PairSemantics.permutation182⟩ (by decide +kernel) hH

def canonicalInput20549 : ExponentCode := ⟨6, 6, ![![-1, 0, 0, 0, 0, 1], ![0, -1, -1, 2, 0, 0], ![0, -1, 2, -1, 0, 0], ![0, 2, -1, -1, 0, 0], ![0, 0, 0, 0, -1, 1], ![1, 0, 0, 0, 1, -2]]⟩

def canonicalOutput20549 : ExponentCode := normalNode8062

theorem canonicalSound20549 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20549.moment H = canonicalOutput20549.moment H :=
  canonical_of_padded canonicalInput20549 canonicalOutput20549 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation386, canonicalPermutation34⟩ (by decide +kernel) hH

def canonicalInput20550 : ExponentCode := ⟨6, 6, ![![-1, 0, 0, 0, 0, 1], ![0, -1, -1, 2, 0, 0], ![0, -1, 2, -1, 0, 0], ![0, 2, -1, -1, 0, 0], ![1, 0, 0, 0, -2, 1], ![0, 0, 0, 0, 2, -2]]⟩

def canonicalOutput20550 : ExponentCode := normalNode8063

theorem canonicalSound20550 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20550.moment H = canonicalOutput20550.moment H :=
  canonical_of_padded canonicalInput20550 canonicalOutput20550 (by decide) (by decide)
    ⟨false, true, canonicalPermutation128, OAI.MUB6.Certificate.PairSemantics.permutation197⟩ (by decide +kernel) hH

def canonicalInput20551 : ExponentCode := ⟨5, 6, ![![-1, 0, 0, 0, 0, 1], ![0, 0, -2, 1, 1, 0], ![0, 0, 1, -2, 1, 0], ![0, 0, 1, 1, -2, 0], ![1, 0, 0, 0, 0, -1]]⟩

def canonicalOutput20551 : ExponentCode := normalNode11165

theorem canonicalSound20551 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20551.moment H = canonicalOutput20551.moment H :=
  canonical_of_padded canonicalInput20551 canonicalOutput20551 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, canonicalPermutation173⟩ (by decide +kernel) hH

def canonicalInput20552 : ExponentCode := ⟨5, 6, ![![-1, 0, 0, 0, 0, 1], ![0, 0, -1, -1, 2, 0], ![0, 0, -1, 2, -1, 0], ![0, 0, 2, -1, -1, 0], ![1, 0, 0, 0, 0, -1]]⟩

def canonicalOutput20552 : ExponentCode := normalNode11165

theorem canonicalSound20552 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20552.moment H = canonicalOutput20552.moment H :=
  canonical_of_padded canonicalInput20552 canonicalOutput20552 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, canonicalPermutation173⟩ (by decide +kernel) hH

def canonicalInput20553 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 0, 1], ![-3, 0, 1, 2, 0], ![2, -2, 1, -1, 0], ![2, 2, -2, -1, -1]]⟩

def canonicalOutput20553 : ExponentCode := normalNode6216

theorem canonicalSound20553 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20553.moment H = canonicalOutput20553.moment H :=
  canonical_of_padded canonicalInput20553 canonicalOutput20553 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20554 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 0, 1], ![-3, 0, 1, 2, 0], ![2, -2, 1, 0, -1], ![2, 2, -2, -2, 0]]⟩

def canonicalOutput20554 : ExponentCode := normalNode6217

theorem canonicalSound20554 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20554.moment H = canonicalOutput20554.moment H :=
  canonical_of_padded canonicalInput20554 canonicalOutput20554 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20555 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 0, 1], ![-2, -1, 1, 1, 1], ![0, 2, -2, 1, -1], ![3, -1, 1, -2, -1]]⟩

def canonicalOutput20555 : ExponentCode := normalNode6699

theorem canonicalSound20555 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20555.moment H = canonicalOutput20555.moment H :=
  canonical_of_padded canonicalInput20555 canonicalOutput20555 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20556 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 0, 1], ![-2, 0, 0, 2, 0], ![1, -2, 2, -1, 0], ![2, 2, -2, -1, -1]]⟩

def canonicalOutput20556 : ExponentCode := normalNode6967

theorem canonicalSound20556 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20556.moment H = canonicalOutput20556.moment H :=
  canonical_of_padded canonicalInput20556 canonicalOutput20556 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20557 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 0, 1], ![-2, 0, 0, 2, 0], ![1, -2, 2, 0, -1], ![2, 2, -2, -2, 0]]⟩

def canonicalOutput20557 : ExponentCode := normalNode6968

theorem canonicalSound20557 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20557.moment H = canonicalOutput20557.moment H :=
  canonical_of_padded canonicalInput20557 canonicalOutput20557 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20558 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 0, 1], ![-2, 0, 1, 2, -1], ![1, -2, 1, -1, 1], ![2, 2, -2, -1, -1]]⟩

def canonicalOutput20558 : ExponentCode := normalNode6977

theorem canonicalSound20558 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20558.moment H = canonicalOutput20558.moment H :=
  canonical_of_padded canonicalInput20558 canonicalOutput20558 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20559 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 0, 1], ![-2, 0, 1, 2, -1], ![1, -2, 1, 0, 0], ![2, 2, -2, -2, 0]]⟩

def canonicalOutput20559 : ExponentCode := normalNode10832

theorem canonicalSound20559 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20559.moment H = canonicalOutput20559.moment H :=
  canonical_of_padded canonicalInput20559 canonicalOutput20559 (by decide) (by decide)
    ⟨true, true, canonicalPermutation20, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput20560 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 0, 1], ![-2, 0, 1, 2, -1], ![2, -2, 1, -1, 0], ![1, 2, -2, -1, 0]]⟩

def canonicalOutput20560 : ExponentCode := normalNode7044

theorem canonicalSound20560 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20560.moment H = canonicalOutput20560.moment H :=
  canonical_of_padded canonicalInput20560 canonicalOutput20560 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput20561 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 0, 1], ![-2, 0, 1, 2, -1], ![2, -2, 1, 0, -1], ![1, 2, -2, -2, 1]]⟩

def canonicalOutput20561 : ExponentCode := normalNode7124

theorem canonicalSound20561 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20561.moment H = canonicalOutput20561.moment H :=
  canonical_of_padded canonicalInput20561 canonicalOutput20561 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20562 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 0, 1], ![-1, -2, 0, 2, 1], ![0, 0, 2, -1, -1], ![2, 2, -2, -1, -1]]⟩

def canonicalOutput20562 : ExponentCode := normalNode10292

theorem canonicalSound20562 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20562.moment H = canonicalOutput20562.moment H :=
  canonical_of_padded canonicalInput20562 canonicalOutput20562 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput20563 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 0, 1], ![-1, -2, 0, 2, 1], ![0, 0, 2, 0, -2], ![2, 2, -2, -2, 0]]⟩

def canonicalOutput20563 : ExponentCode := normalNode10314

theorem canonicalSound20563 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20563.moment H = canonicalOutput20563.moment H :=
  canonical_of_padded canonicalInput20563 canonicalOutput20563 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput20564 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 0, 1], ![-1, -2, 0, 2, 1], ![0, 1, 2, -2, -1], ![2, 1, -2, 0, -1]]⟩

def canonicalOutput20564 : ExponentCode := normalNode8894

theorem canonicalSound20564 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20564.moment H = canonicalOutput20564.moment H :=
  canonical_of_padded canonicalInput20564 canonicalOutput20564 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20565 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 0, 1], ![-1, -2, 0, 2, 1], ![1, 0, 2, -2, -1], ![1, 2, -2, 0, -1]]⟩

def canonicalOutput20565 : ExponentCode := normalNode9349

theorem canonicalSound20565 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20565.moment H = canonicalOutput20565.moment H :=
  canonical_of_padded canonicalInput20565 canonicalOutput20565 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20566 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 0, 1], ![-1, -2, 1, 1, 1], ![0, 0, 1, 1, -2], ![2, 2, -2, -2, 0]]⟩

def canonicalOutput20566 : ExponentCode := normalNode10318

theorem canonicalSound20566 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20566.moment H = canonicalOutput20566.moment H :=
  canonical_of_padded canonicalInput20566 canonicalOutput20566 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput20567 : ExponentCode := ⟨6, 5, ![![-1, 0, 0, 0, 1], ![-1, -2, 1, 1, 1], ![0, 1, -2, 0, 1], ![0, 1, 1, 0, -2], ![1, 0, 0, -2, 1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput20567 : ExponentCode := normalNode2186

theorem canonicalSound20567 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20567.moment H = canonicalOutput20567.moment H :=
  canonical_of_padded canonicalInput20567 canonicalOutput20567 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation206, OAI.MUB6.Certificate.PairSemantics.permutation167⟩ (by decide +kernel) hH

def canonicalInput20568 : ExponentCode := ⟨6, 5, ![![-1, 0, 0, 0, 1], ![-1, -2, 1, 1, 1], ![0, 1, -2, 1, 0], ![0, 1, 1, -1, -1], ![1, 0, 0, -2, 1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput20568 : ExponentCode := normalNode2189

theorem canonicalSound20568 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20568.moment H = canonicalOutput20568.moment H :=
  canonical_of_padded canonicalInput20568 canonicalOutput20568 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation206, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput20569 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 0, 1], ![-1, -2, 1, 1, 1], ![0, 1, -2, 1, 0], ![2, 1, 1, -2, -2]]⟩

def canonicalOutput20569 : ExponentCode := normalNode10226

theorem canonicalSound20569 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20569.moment H = canonicalOutput20569.moment H :=
  canonical_of_padded canonicalInput20569 canonicalOutput20569 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput20570 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 0, 1], ![-1, -2, 1, 1, 1], ![0, 1, -2, 2, -1], ![2, 1, 1, -3, -1]]⟩

def canonicalOutput20570 : ExponentCode := normalNode8897

theorem canonicalSound20570 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20570.moment H = canonicalOutput20570.moment H :=
  canonical_of_padded canonicalInput20570 canonicalOutput20570 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20571 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 0, 1], ![-1, -2, 1, 1, 1], ![0, 2, -2, 1, -1], ![2, 0, 1, -2, -1]]⟩

def canonicalOutput20571 : ExponentCode := normalNode8902

theorem canonicalSound20571 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20571.moment H = canonicalOutput20571.moment H :=
  canonical_of_padded canonicalInput20571 canonicalOutput20571 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20572 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 0, 1], ![-1, -2, 1, 1, 1], ![1, 1, -2, 1, -1], ![1, 1, 1, -2, -1]]⟩

def canonicalOutput20572 : ExponentCode := normalNode9351

theorem canonicalSound20572 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20572.moment H = canonicalOutput20572.moment H :=
  canonical_of_padded canonicalInput20572 canonicalOutput20572 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20573 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 0, 1], ![-1, -2, 1, 2, 0], ![1, 1, -2, 1, -1], ![1, 1, 1, -3, 0]]⟩

def canonicalOutput20573 : ExponentCode := normalNode9352

theorem canonicalSound20573 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20573.moment H = canonicalOutput20573.moment H :=
  canonical_of_padded canonicalInput20573 canonicalOutput20573 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20574 : ExponentCode := ⟨6, 5, ![![-1, 0, 0, 0, 1], ![-1, -1, -1, 1, 2], ![0, -1, 2, 0, -1], ![0, 2, -1, 0, -1], ![1, 0, 0, -2, 1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput20574 : ExponentCode := normalNode3681

theorem canonicalSound20574 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20574.moment H = canonicalOutput20574.moment H :=
  canonical_of_padded canonicalInput20574 canonicalOutput20574 (by decide) (by decide)
    ⟨false, true, canonicalPermutation174, OAI.MUB6.Certificate.PairSemantics.permutation167⟩ (by decide +kernel) hH

def canonicalInput20575 : ExponentCode := ⟨6, 5, ![![-1, 0, 0, 0, 1], ![-1, -1, -1, 2, 1], ![0, -1, 2, -1, 0], ![0, 2, -1, 0, -1], ![1, 0, 0, -2, 1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput20575 : ExponentCode := normalNode4138

theorem canonicalSound20575 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20575.moment H = canonicalOutput20575.moment H :=
  canonical_of_padded canonicalInput20575 canonicalOutput20575 (by decide) (by decide)
    ⟨false, true, canonicalPermutation175, OAI.MUB6.Certificate.PairSemantics.permutation177⟩ (by decide +kernel) hH

def canonicalInput20576 : ExponentCode := ⟨6, 5, ![![-1, 0, 0, 0, 1], ![-1, -1, 0, 0, 2], ![0, -1, 0, 1, 0], ![0, 1, -2, 1, 0], ![0, 1, 1, -2, 0], ![2, 0, 1, 0, -3]]⟩

def canonicalOutput20576 : ExponentCode := normalNode1453

theorem canonicalSound20576 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20576.moment H = canonicalOutput20576.moment H :=
  canonical_of_padded canonicalInput20576 canonicalOutput20576 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation404, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20577 : ExponentCode := ⟨6, 5, ![![-1, 0, 0, 0, 1], ![-1, -1, 0, 0, 2], ![0, -1, 2, -1, 0], ![0, 2, 0, -1, -1], ![1, 0, -2, 1, 0], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput20577 : ExponentCode := normalNode3685

theorem canonicalSound20577 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20577.moment H = canonicalOutput20577.moment H :=
  canonical_of_padded canonicalInput20577 canonicalOutput20577 (by decide) (by decide)
    ⟨false, true, canonicalPermutation174, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput20578 : ExponentCode := ⟨6, 5, ![![-1, 0, 0, 0, 1], ![-1, -1, 0, 1, 1], ![0, -1, 1, 0, 0], ![0, 1, -2, 1, 0], ![0, 1, 1, -3, 1], ![2, 0, 0, 1, -3]]⟩

def canonicalOutput20578 : ExponentCode := normalNode3646

theorem canonicalSound20578 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20578.moment H = canonicalOutput20578.moment H :=
  canonical_of_padded canonicalInput20578 canonicalOutput20578 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation404, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20579 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 0, 1], ![-1, -1, 0, 2, 0], ![1, -1, 2, -1, -1], ![1, 2, -2, -1, 0]]⟩

def canonicalOutput20579 : ExponentCode := normalNode9388

theorem canonicalSound20579 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20579.moment H = canonicalOutput20579.moment H :=
  canonical_of_padded canonicalInput20579 canonicalOutput20579 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20580 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 0, 1], ![-1, -1, 0, 2, 0], ![2, -1, -2, 0, 1], ![0, 2, 2, -2, -2]]⟩

def canonicalOutput20580 : ExponentCode := normalNode9549

theorem canonicalSound20580 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20580.moment H = canonicalOutput20580.moment H :=
  canonical_of_padded canonicalInput20580 canonicalOutput20580 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20581 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 0, 1], ![-1, -1, 1, 1, 0], ![-1, 2, -2, 1, 0], ![3, -1, 1, -2, -1]]⟩

def canonicalOutput20581 : ExponentCode := normalNode7902

theorem canonicalSound20581 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20581.moment H = canonicalOutput20581.moment H :=
  canonical_of_padded canonicalInput20581 canonicalOutput20581 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20582 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 0, 1], ![-1, -1, 1, 1, 0], ![0, 2, -2, 1, -1], ![2, -1, 1, -2, 0]]⟩

def canonicalOutput20582 : ExponentCode := normalNode9001

theorem canonicalSound20582 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20582.moment H = canonicalOutput20582.moment H :=
  canonical_of_padded canonicalInput20582 canonicalOutput20582 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20583 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 0, 1], ![-1, -1, 1, 1, 0], ![1, -1, -2, 1, 1], ![1, 2, 1, -2, -2]]⟩

def canonicalOutput20583 : ExponentCode := normalNode9393

theorem canonicalSound20583 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20583.moment H = canonicalOutput20583.moment H :=
  canonical_of_padded canonicalInput20583 canonicalOutput20583 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20584 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 0, 1], ![-1, 0, 0, 2, -1], ![0, -2, 2, -1, 1], ![2, 2, -2, -1, -1]]⟩

def canonicalOutput20584 : ExponentCode := normalNode9061

theorem canonicalSound20584 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20584.moment H = canonicalOutput20584.moment H :=
  canonical_of_padded canonicalInput20584 canonicalOutput20584 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20585 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 0, 1], ![-1, 0, 0, 2, -1], ![0, -2, 2, 0, 0], ![2, 2, -2, -2, 0]]⟩

def canonicalOutput20585 : ExponentCode := normalNode9062

theorem canonicalSound20585 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20585.moment H = canonicalOutput20585.moment H :=
  canonical_of_padded canonicalInput20585 canonicalOutput20585 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20586 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 0, 1], ![-1, 0, 0, 2, -1], ![1, -2, 2, -1, 0], ![1, 2, -2, -1, 0]]⟩

def canonicalOutput20586 : ExponentCode := normalNode9449

theorem canonicalSound20586 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20586.moment H = canonicalOutput20586.moment H :=
  canonical_of_padded canonicalInput20586 canonicalOutput20586 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20587 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 0, 1], ![-1, 0, 0, 2, -1], ![1, -2, 2, 0, -1], ![1, 2, -2, -2, 1]]⟩

def canonicalOutput20587 : ExponentCode := normalNode9450

theorem canonicalSound20587 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20587.moment H = canonicalOutput20587.moment H :=
  canonical_of_padded canonicalInput20587 canonicalOutput20587 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20588 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 0, 1], ![0, -2, 0, 2, 0], ![-1, 0, 2, -1, 0], ![2, 2, -2, -1, -1]]⟩

def canonicalOutput20588 : ExponentCode := normalNode8986

theorem canonicalSound20588 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20588.moment H = canonicalOutput20588.moment H :=
  canonical_of_padded canonicalInput20588 canonicalOutput20588 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput20589 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 0, 1], ![0, -2, 0, 2, 0], ![-1, 0, 2, 0, -1], ![2, 2, -2, -2, 0]]⟩

def canonicalOutput20589 : ExponentCode := normalNode9062

theorem canonicalSound20589 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20589.moment H = canonicalOutput20589.moment H :=
  canonical_of_padded canonicalInput20589 canonicalOutput20589 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput20590 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 0, 1], ![0, -2, 0, 2, 0], ![-1, 1, 2, -2, 0], ![2, 1, -2, 0, -1]]⟩

def canonicalOutput20590 : ExponentCode := normalNode10222

theorem canonicalSound20590 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20590.moment H = canonicalOutput20590.moment H :=
  canonical_of_padded canonicalInput20590 canonicalOutput20590 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20591 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 0, 1], ![0, -2, 0, 2, 0], ![0, 0, 2, -2, 0], ![1, 2, -2, 0, -1]]⟩

def canonicalOutput20591 : ExponentCode := normalNode10519

theorem canonicalSound20591 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20591.moment H = canonicalOutput20591.moment H :=
  canonical_of_padded canonicalInput20591 canonicalOutput20591 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20592 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 0, 1], ![0, -2, 0, 2, 0], ![0, 0, 2, -1, -1], ![1, 2, -2, -1, 0]]⟩

def canonicalOutput20592 : ExponentCode := normalNode10520

theorem canonicalSound20592 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20592.moment H = canonicalOutput20592.moment H :=
  canonical_of_padded canonicalInput20592 canonicalOutput20592 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20593 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 0, 1], ![0, -2, 0, 2, 0], ![0, 0, 2, 0, -2], ![1, 2, -2, -2, 1]]⟩

def canonicalOutput20593 : ExponentCode := normalNode10521

theorem canonicalSound20593 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20593.moment H = canonicalOutput20593.moment H :=
  canonical_of_padded canonicalInput20593 canonicalOutput20593 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20594 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 0, 1], ![0, -2, 0, 2, 0], ![0, 1, 2, -2, -1], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput20594 : ExponentCode := normalNode10520

theorem canonicalSound20594 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20594.moment H = canonicalOutput20594.moment H :=
  canonical_of_padded canonicalInput20594 canonicalOutput20594 (by decide) (by decide)
    ⟨true, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput20595 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 0, 1], ![0, -2, 0, 2, 0], ![1, 0, 2, -2, -1], ![0, 2, -2, 0, 0]]⟩

def canonicalOutput20595 : ExponentCode := normalNode10519

theorem canonicalSound20595 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20595.moment H = canonicalOutput20595.moment H :=
  canonical_of_padded canonicalInput20595 canonicalOutput20595 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput20596 : ExponentCode := ⟨6, 5, ![![-1, 0, 0, 0, 1], ![0, -2, 1, 0, 1], ![-1, 1, -2, 1, 1], ![0, 1, 1, 0, -2], ![1, 0, 0, -2, 1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput20596 : ExponentCode := normalNode2186

theorem canonicalSound20596 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20596.moment H = canonicalOutput20596.moment H :=
  canonical_of_padded canonicalInput20596 canonicalOutput20596 (by decide) (by decide)
    ⟨false, false, canonicalPermutation176, canonicalPermutation42⟩ (by decide +kernel) hH

def canonicalInput20597 : ExponentCode := ⟨6, 5, ![![-1, 0, 0, 0, 1], ![0, -2, 1, 0, 1], ![-1, 1, -2, 2, 0], ![0, 1, 1, -1, -1], ![1, 0, 0, -2, 1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput20597 : ExponentCode := normalNode2148

theorem canonicalSound20597 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20597.moment H = canonicalOutput20597.moment H :=
  canonical_of_padded canonicalInput20597 canonicalOutput20597 (by decide) (by decide)
    ⟨false, false, canonicalPermutation177, OAI.MUB6.Certificate.PairSemantics.permutation177⟩ (by decide +kernel) hH

def canonicalInput20598 : ExponentCode := ⟨6, 5, ![![-1, 0, 0, 0, 1], ![0, -2, 1, 0, 1], ![0, 1, -2, 0, 1], ![-1, 1, 1, 1, -2], ![1, 0, 0, -2, 1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput20598 : ExponentCode := normalNode3671

theorem canonicalSound20598 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20598.moment H = canonicalOutput20598.moment H :=
  canonical_of_padded canonicalInput20598 canonicalOutput20598 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation214, canonicalPermutation45⟩ (by decide +kernel) hH

def canonicalInput20599 : ExponentCode := ⟨6, 5, ![![-1, 0, 0, 0, 1], ![0, -2, 1, 0, 1], ![0, 1, -2, 0, 1], ![0, 1, 1, 0, -2], ![0, 0, 0, -1, 1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput20599 : ExponentCode := normalNode8310

theorem canonicalSound20599 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20599.moment H = canonicalOutput20599.moment H :=
  canonical_of_padded canonicalInput20599 canonicalOutput20599 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation386, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput20600 : ExponentCode := ⟨6, 5, ![![-1, 0, 0, 0, 1], ![0, -2, 1, 0, 1], ![0, 1, -2, 0, 1], ![0, 1, 1, 0, -2], ![1, 0, 0, -2, 1], ![0, 0, 0, 2, -2]]⟩

def canonicalOutput20600 : ExponentCode := normalNode10440

theorem canonicalSound20600 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20600.moment H = canonicalOutput20600.moment H :=
  canonical_of_padded canonicalInput20600 canonicalOutput20600 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput20601 : ExponentCode := ⟨6, 5, ![![-1, 0, 0, 0, 1], ![0, -2, 1, 0, 1], ![0, 1, -2, 1, 0], ![-1, 1, 1, 0, -1], ![1, 0, 0, -2, 1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput20601 : ExponentCode := normalNode3670

theorem canonicalSound20601 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20601.moment H = canonicalOutput20601.moment H :=
  canonical_of_padded canonicalInput20601 canonicalOutput20601 (by decide) (by decide)
    ⟨false, false, canonicalPermutation172, canonicalPermutation45⟩ (by decide +kernel) hH

def canonicalInput20602 : ExponentCode := ⟨6, 5, ![![-1, 0, 0, 0, 1], ![0, -2, 1, 0, 1], ![0, 1, -2, 1, 0], ![0, 1, 1, -1, -1], ![0, 0, 0, -1, 1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput20602 : ExponentCode := normalNode8124

theorem canonicalSound20602 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20602.moment H = canonicalOutput20602.moment H :=
  canonical_of_padded canonicalInput20602 canonicalOutput20602 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation360, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput20603 : ExponentCode := ⟨6, 5, ![![-1, 0, 0, 0, 1], ![0, -2, 1, 0, 1], ![0, 1, -2, 1, 0], ![0, 1, 1, -1, -1], ![1, 0, 0, -2, 1], ![0, 0, 0, 2, -2]]⟩

def canonicalOutput20603 : ExponentCode := normalNode10393

theorem canonicalSound20603 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20603.moment H = canonicalOutput20603.moment H :=
  canonical_of_padded canonicalInput20603 canonicalOutput20603 (by decide) (by decide)
    ⟨false, true, canonicalPermutation131, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput20604 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 0, 1], ![0, -2, 1, 1, 0], ![-1, 0, 1, 1, -1], ![2, 2, -2, -2, 0]]⟩

def canonicalOutput20604 : ExponentCode := normalNode9065

theorem canonicalSound20604 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20604.moment H = canonicalOutput20604.moment H :=
  canonical_of_padded canonicalInput20604 canonicalOutput20604 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput20605 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 0, 1], ![0, -2, 1, 1, 0], ![-1, 1, -2, 1, 1], ![2, 1, 1, -2, -2]]⟩

def canonicalOutput20605 : ExponentCode := normalNode10226

theorem canonicalSound20605 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20605.moment H = canonicalOutput20605.moment H :=
  canonical_of_padded canonicalInput20605 canonicalOutput20605 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20606 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 0, 1], ![0, -2, 1, 1, 0], ![-1, 1, -2, 2, 0], ![2, 1, 1, -3, -1]]⟩

def canonicalOutput20606 : ExponentCode := normalNode10227

theorem canonicalSound20606 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20606.moment H = canonicalOutput20606.moment H :=
  canonical_of_padded canonicalInput20606 canonicalOutput20606 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20607 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 0, 1], ![0, -2, 1, 1, 0], ![-1, 2, -2, 1, 0], ![2, 0, 1, -2, -1]]⟩

def canonicalOutput20607 : ExponentCode := normalNode10235

theorem canonicalSound20607 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20607.moment H = canonicalOutput20607.moment H :=
  canonical_of_padded canonicalInput20607 canonicalOutput20607 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
