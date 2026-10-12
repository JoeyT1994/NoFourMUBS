import OAI.Analysis.MutuallyUnbiased.PairSemantics.Coordinates

namespace NoFourMUBs.Step2.SOS.Semantics
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def code0 : ExponentCode := OAI.MUB6.Certificate.PairSemantics.coordinate0

def code1 : ExponentCode := ⟨3, 2, ![![-6, 6], ![2, -2], ![4, -4]]⟩

def code2 : ExponentCode := ⟨3, 2, ![![-6, 6], ![3, -3], ![3, -3]]⟩

def code3 : ExponentCode := OAI.MUB6.Certificate.PairSemantics.coordinate9

def code4 : ExponentCode := OAI.MUB6.Certificate.PairSemantics.coordinate58

def code5 : ExponentCode := ⟨4, 3, ![![-4, 0, 4], ![0, 2, -2], ![0, 2, -2], ![4, -4, 0]]⟩

def code6 : ExponentCode := ⟨4, 3, ![![-4, 1, 3], ![0, 2, -2], ![1, 1, -2], ![3, -4, 1]]⟩

def code7 : ExponentCode := ⟨4, 3, ![![-4, 1, 3], ![0, 3, -3], ![1, -2, 1], ![3, -2, -1]]⟩

def code8 : ExponentCode := ⟨4, 3, ![![-4, 1, 3], ![0, 3, -3], ![2, -3, 1], ![2, -1, -1]]⟩

def code9 : ExponentCode := ⟨3, 3, ![![-4, 1, 3], ![1, 3, -4], ![3, -4, 1]]⟩

def code10 : ExponentCode := ⟨4, 3, ![![-4, 2, 2], ![0, -2, 2], ![0, 2, -2], ![4, -2, -2]]⟩

def code11 : ExponentCode := ⟨4, 3, ![![-4, 2, 2], ![0, -2, 2], ![1, 2, -3], ![3, -2, -1]]⟩

def code12 : ExponentCode := ⟨4, 3, ![![-4, 2, 2], ![0, -2, 2], ![2, -2, 0], ![2, 2, -4]]⟩

def code13 : ExponentCode := ⟨4, 3, ![![-4, 2, 2], ![1, -3, 2], ![1, 2, -3], ![2, -1, -1]]⟩

def code14 : ExponentCode := ⟨5, 3, ![![-4, 2, 2], ![1, -2, 1], ![1, -2, 1], ![1, 1, -2], ![1, 1, -2]]⟩

def code15 : ExponentCode := ⟨4, 3, ![![-4, 2, 2], ![1, -2, 1], ![1, -2, 1], ![2, 2, -4]]⟩

def code16 : ExponentCode := ⟨3, 3, ![![-4, 2, 2], ![2, -4, 2], ![2, 2, -4]]⟩

def code17 : ExponentCode := ⟨4, 2, ![![-4, 4], ![-2, 2], ![2, -2], ![4, -4]]⟩

def code18 : ExponentCode := ⟨4, 2, ![![-4, 4], ![-2, 2], ![3, -3], ![3, -3]]⟩

def code19 : ExponentCode := OAI.MUB6.Certificate.PairSemantics.coordinate5

def code20 : ExponentCode := OAI.MUB6.Certificate.PairSemantics.coordinate6

def code21 : ExponentCode := ⟨3, 3, ![![-3, -3, 6], ![1, 2, -3], ![2, 1, -3]]⟩

def code22 : ExponentCode := ⟨4, 3, ![![-3, -2, 5], ![0, 2, -2], ![0, 2, -2], ![3, -2, -1]]⟩

def code23 : ExponentCode := OAI.MUB6.Certificate.PairSemantics.coordinate256

def code24 : ExponentCode := ⟨4, 3, ![![-3, -2, 5], ![0, 2, -2], ![1, 2, -3], ![2, -2, 0]]⟩

def code25 : ExponentCode := ⟨4, 3, ![![-3, -2, 5], ![0, 3, -3], ![1, 1, -2], ![2, -2, 0]]⟩

def code26 : ExponentCode := OAI.MUB6.Certificate.PairSemantics.coordinate257

def code27 : ExponentCode := ⟨3, 3, ![![-3, -2, 5], ![0, 4, -4], ![3, -2, -1]]⟩

def code28 : ExponentCode := ⟨5, 4, ![![-3, -1, 1, 3], ![0, -1, 2, -1], ![0, 2, -2, 0], ![1, 1, -1, -1], ![2, -1, 0, -1]]⟩

def code29 : ExponentCode := ⟨5, 4, ![![-3, -1, 1, 3], ![0, -1, 2, -1], ![0, 2, -1, -1], ![1, 1, -2, 0], ![2, -1, 0, -1]]⟩

def code30 : ExponentCode := ⟨5, 4, ![![-3, -1, 1, 3], ![0, 2, -2, 0], ![1, -1, 1, -1], ![1, -1, 1, -1], ![1, 1, -1, -1]]⟩

def code31 : ExponentCode := ⟨5, 4, ![![-3, -1, 1, 3], ![0, 2, -1, -1], ![1, -1, 1, -1], ![1, -1, 1, -1], ![1, 1, -2, 0]]⟩

def code32 : ExponentCode := ⟨4, 3, ![![-3, -1, 4], ![0, -2, 2], ![0, 2, -2], ![3, 1, -4]]⟩

def code33 : ExponentCode := ⟨4, 3, ![![-3, -1, 4], ![0, -2, 2], ![1, 1, -2], ![2, 2, -4]]⟩

def code34 : ExponentCode := ⟨4, 3, ![![-3, -1, 4], ![0, -2, 2], ![1, 2, -3], ![2, 1, -3]]⟩

def code35 : ExponentCode := ⟨4, 3, ![![-3, -1, 4], ![0, -2, 2], ![1, 3, -4], ![2, 0, -2]]⟩

def code36 : ExponentCode := OAI.MUB6.Certificate.PairSemantics.coordinate258

def code37 : ExponentCode := OAI.MUB6.Certificate.PairSemantics.coordinate259

def code38 : ExponentCode := OAI.MUB6.Certificate.PairSemantics.coordinate59

def code39 : ExponentCode := ⟨4, 3, ![![-3, -1, 4], ![0, 2, -2], ![1, 2, -3], ![2, -3, 1]]⟩

def code40 : ExponentCode := OAI.MUB6.Certificate.PairSemantics.coordinate260

def code41 : ExponentCode := ⟨4, 3, ![![-3, -1, 4], ![0, 3, -3], ![1, 1, -2], ![2, -3, 1]]⟩

def code42 : ExponentCode := OAI.MUB6.Certificate.PairSemantics.coordinate60

def code43 : ExponentCode := ⟨4, 3, ![![-3, -1, 4], ![0, 4, -4], ![1, -2, 1], ![2, -1, -1]]⟩

def code44 : ExponentCode := OAI.MUB6.Certificate.PairSemantics.coordinate261

def code45 : ExponentCode := OAI.MUB6.Certificate.PairSemantics.coordinate262

def code46 : ExponentCode := ⟨3, 3, ![![-3, -1, 4], ![1, 4, -5], ![2, -3, 1]]⟩

def code47 : ExponentCode := ⟨4, 4, ![![-3, 0, 1, 2], ![0, -3, 2, 1], ![1, 2, -3, 0], ![2, 1, 0, -3]]⟩

def code48 : ExponentCode := ⟨5, 4, ![![-3, 0, 1, 2], ![0, -2, 1, 1], ![0, 1, 1, -2], ![1, 2, -3, 0], ![2, -1, 0, -1]]⟩

def code49 : ExponentCode := ⟨5, 4, ![![-3, 0, 1, 2], ![0, -2, 1, 1], ![1, -1, 1, -1], ![1, 1, 0, -2], ![1, 2, -3, 0]]⟩

def code50 : ExponentCode := ⟨4, 4, ![![-3, 0, 1, 2], ![1, -3, 1, 1], ![1, 1, 1, -3], ![1, 2, -3, 0]]⟩

def code51 : ExponentCode := ⟨4, 3, ![![-3, 0, 3], ![0, -3, 3], ![1, 2, -3], ![2, 1, -3]]⟩

def code52 : ExponentCode := OAI.MUB6.Certificate.PairSemantics.coordinate263

def code53 : ExponentCode := OAI.MUB6.Certificate.PairSemantics.coordinate264

def code54 : ExponentCode := ⟨4, 3, ![![-3, 0, 3], ![0, -2, 2], ![1, 4, -5], ![2, -2, 0]]⟩

def code55 : ExponentCode := OAI.MUB6.Certificate.PairSemantics.coordinate266

def code56 : ExponentCode := OAI.MUB6.Certificate.PairSemantics.coordinate61

def code57 : ExponentCode := ⟨4, 3, ![![-3, 0, 3], ![0, 2, -2], ![1, 2, -3], ![2, -4, 2]]⟩

def code58 : ExponentCode := OAI.MUB6.Certificate.PairSemantics.coordinate62

def code59 : ExponentCode := ⟨4, 3, ![![-3, 0, 3], ![0, 3, -3], ![1, 1, -2], ![2, -4, 2]]⟩

def code60 : ExponentCode := OAI.MUB6.Certificate.PairSemantics.coordinate32

def code61 : ExponentCode := OAI.MUB6.Certificate.PairSemantics.coordinate267

def code62 : ExponentCode := OAI.MUB6.Certificate.PairSemantics.coordinate268

def code63 : ExponentCode := ⟨4, 3, ![![-3, 0, 3], ![1, -2, 1], ![1, -2, 1], ![1, 4, -5]]⟩

end NoFourMUBs.Step2.SOS.Semantics
