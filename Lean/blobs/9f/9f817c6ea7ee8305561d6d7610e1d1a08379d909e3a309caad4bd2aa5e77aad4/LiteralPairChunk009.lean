import LiteralPairChunk008
set_option autoImplicit false
set_option maxRecDepth 16384
set_option maxHeartbeats 3200000
namespace Mub6.Numerical.ClusterTube48
open Mub6.Numerical.GraphKernel
def pairCert216 : PairCertificate (Fin 48) := .split 9 pairCert212 pairCert215
theorem pairCheck216 : checkPairSized orthGraph ubGraph (labelSet 158335278940940) (labelSet 280645267095009) 5 6 pairCert216=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 158335278940940) (labelSet 280645267095009) (labelSet 158329674924036)
    (labelSet 51800527075809) (labelSet 158335278940428) 9 4 6
    pairCert212 pairCert215 (by decide) (by decide) (by decide) (by decide)
    pairCheck212 pairCheck215
def pairCert217 : PairCertificate (Fin 48) := .split 38 pairCert211 pairCert216
theorem pairCheck217 : checkPairSized orthGraph ubGraph (labelSet 158610156847884) (labelSet 280645267095009) 5 6 pairCert217=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 158610156847884) (labelSet 280645267095009) (labelSet 158334037000708)
    (labelSet 77164746890688) (labelSet 158335278940940) 38 4 6
    pairCert211 pairCert216 (by decide) (by decide) (by decide) (by decide)
    pairCheck211 pairCheck216
def pairCert218 : PairCertificate (Fin 48) := .split 23 pairCert204 pairCert217
theorem pairCheck218 : checkPairSized orthGraph ubGraph (labelSet 158610165236492) (labelSet 280645267095009) 5 6 pairCert218=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 158610165236492) (labelSet 280645267095009) (labelSet 4362208012)
    (labelSet 241054241645569) (labelSet 158610156847884) 23 4 6
    pairCert204 pairCert217 (by decide) (by decide) (by decide) (by decide)
    pairCheck204 pairCheck217
def pairCert219 : PairCertificate (Fin 48) := .split 4 pairCert197 pairCert218
theorem pairCheck219 : checkPairSized orthGraph ubGraph (labelSet 158610165236508) (labelSet 280645267095009) 5 6 pairCert219=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 158610165236508) (labelSet 280645267095009) (labelSet 5469405700)
    (labelSet 210154921547169) (labelSet 158610165236492) 4 4 6
    pairCert197 pairCert218 (by decide) (by decide) (by decide) (by decide)
    pairCheck197 pairCheck218
def pairCert220 : PairCertificate (Fin 48) := .first cliqueCert52
theorem pairCheck220 : checkPairSized orthGraph ubGraph (labelSet 17596489564160) (labelSet 118157072675408) 4 6 pairCert220=true := by
  exact cliqueCheck52
def pairCert221 : PairCertificate (Fin 48) := .first cliqueCert53
theorem pairCheck221 : checkPairSized orthGraph ubGraph (labelSet 158610131157520) (labelSet 122593799077497) 5 6 pairCert221=true := by
  exact cliqueCheck53
def pairCert222 : PairCertificate (Fin 48) := .split 8 pairCert220 pairCert221
theorem pairCheck222 : checkPairSized orthGraph ubGraph (labelSet 158610131157776) (labelSet 122593799077497) 5 6 pairCert222=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 158610131157776) (labelSet 122593799077497) (labelSet 17596489564160)
    (labelSet 118157072675408) (labelSet 158610131157520) 8 4 6
    pairCert220 pairCert221 (by decide) (by decide) (by decide) (by decide)
    pairCheck220 pairCheck221
def pairCert223 : PairCertificate (Fin 48) := .first cliqueCert54
theorem pairCheck223 : checkPairSized orthGraph ubGraph (labelSet 71543734018304) (labelSet 209453975928437) 5 6 pairCert223=true := by
  exact cliqueCheck54
def pairCert224 : PairCertificate (Fin 48) := .first cliqueCert55
theorem pairCheck224 : checkPairSized orthGraph ubGraph (labelSet 79407654916192) (labelSet 201723186179961) 5 6 pairCert224=true := by
  exact cliqueCheck55
def pairCert225 : PairCertificate (Fin 48) := .first cliqueCert56
theorem pairCheck225 : checkPairSized orthGraph ubGraph (labelSet 165253195258432) (labelSet 118145387261813) 5 6 pairCert225=true := by
  exact cliqueCheck56
def pairCert226 : PairCertificate (Fin 48) := .first cliqueCert57
theorem pairCheck226 : checkPairSized orthGraph ubGraph (labelSet 44127651660849) (labelSet 272118874275700) 5 6 pairCert226=true := by
  exact cliqueCheck57
def pairCert227 : PairCertificate (Fin 48) := .first cliqueCert58
theorem pairCheck227 : checkPairSized orthGraph ubGraph (labelSet 36309653521408) (labelSet 99094657415800) 4 6 pairCert227=true := by
  exact cliqueCheck58
def pairCert228 : PairCertificate (Fin 48) := .first cliqueCert59
theorem pairCheck228 : checkPairSized orthGraph ubGraph (labelSet 42906995928064) (labelSet 275400951005048) 5 6 pairCert228=true := by
  exact cliqueCheck59
def pairCert229 : PairCertificate (Fin 48) := .split 0 pairCert227 pairCert228
theorem pairCheck229 : checkPairSized orthGraph ubGraph (labelSet 42906995928065) (labelSet 275400951005048) 5 6 pairCert229=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 42906995928065) (labelSet 275400951005048) (labelSet 36309653521408)
    (labelSet 99094657415800) (labelSet 42906995928064) 0 4 6
    pairCert227 pairCert228 (by decide) (by decide) (by decide) (by decide)
    pairCheck227 pairCheck228
def pairCert230 : PairCertificate (Fin 48) := .first cliqueCert60
theorem pairCheck230 : checkPairSized orthGraph ubGraph (labelSet 141922899345664) (labelSet 33683041886954) 4 6 pairCert230=true := by
  exact cliqueCheck60
def pairCert231 : PairCertificate (Fin 48) := .first cliqueCert61
theorem pairCheck231 : checkPairSized orthGraph ubGraph (labelSet 1432371593216) (labelSet 75327115729630) 4 6 pairCert231=true := by
  exact cliqueCheck61
def pairCert232 : PairCertificate (Fin 48) := .first cliqueCert62
theorem pairCheck232 : checkPairSized orthGraph ubGraph (labelSet 140844862537728) (labelSet 23650068935406) 4 6 pairCert232=true := by
  exact cliqueCheck62
def pairCert233 : PairCertificate (Fin 48) := .first cliqueCert63
theorem pairCheck233 : checkPairSized orthGraph ubGraph (labelSet 277025407232) (labelSet 77680686861014) 4 6 pairCert233=true := by
  exact cliqueCheck63
def pairCert234 : PairCertificate (Fin 48) := .first cliqueCert64
theorem pairCheck234 : checkPairSized orthGraph ubGraph (labelSet 35184372089856) (labelSet 17199019174078) 4 6 pairCert234=true := by
  exact cliqueCheck64
def pairCert235 : PairCertificate (Fin 48) := .cross cliqueCert65
theorem pairCheck235 : checkPairSized orthGraph ubGraph (labelSet 34359739392) (labelSet 87971401114192) 2 6 pairCert235=true := by
  exact cliqueCheck65
def pairCert236 : PairCertificate (Fin 48) := .first cliqueCert66
theorem pairCheck236 : checkPairSized orthGraph ubGraph (labelSet 377957123072) (labelSet 92369472793212) 3 6 pairCert236=true := by
  exact cliqueCheck66
def pairCert237 : PairCertificate (Fin 48) := .split 8 pairCert235 pairCert236
theorem pairCheck237 : checkPairSized orthGraph ubGraph (labelSet 377957123328) (labelSet 92369472793212) 3 6 pairCert237=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 377957123328) (labelSet 92369472793212) (labelSet 34359739392)
    (labelSet 87971401114192) (labelSet 377957123072) 8 2 6
    pairCert235 pairCert236 (by decide) (by decide) (by decide) (by decide)
    pairCheck235 pairCheck236
def pairCert238 : PairCertificate (Fin 48) := .first cliqueCert67
theorem pairCheck238 : checkPairSized orthGraph ubGraph (labelSet 377957123328) (labelSet 104068963838716) 4 6 pairCert238=true := by
  exact cliqueCheck67
def pairCert239 : PairCertificate (Fin 48) := .split 32 pairCert237 pairCert238
theorem pairCheck239 : checkPairSized orthGraph ubGraph (labelSet 382252090624) (labelSet 104068963838716) 4 6 pairCert239=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 382252090624) (labelSet 104068963838716) (labelSet 377957123328)
    (labelSet 92369472793212) (labelSet 377957123328) 32 3 6
    pairCert237 pairCert238 (by decide) (by decide) (by decide) (by decide)
    pairCheck237 pairCheck238
end Mub6.Numerical.ClusterTube48
#print axioms Mub6.Numerical.ClusterTube48.pairCheck216
#print axioms Mub6.Numerical.ClusterTube48.pairCheck217
#print axioms Mub6.Numerical.ClusterTube48.pairCheck218
#print axioms Mub6.Numerical.ClusterTube48.pairCheck219
#print axioms Mub6.Numerical.ClusterTube48.pairCheck220
#print axioms Mub6.Numerical.ClusterTube48.pairCheck221
#print axioms Mub6.Numerical.ClusterTube48.pairCheck222
#print axioms Mub6.Numerical.ClusterTube48.pairCheck223
#print axioms Mub6.Numerical.ClusterTube48.pairCheck224
#print axioms Mub6.Numerical.ClusterTube48.pairCheck225
#print axioms Mub6.Numerical.ClusterTube48.pairCheck226
#print axioms Mub6.Numerical.ClusterTube48.pairCheck227
#print axioms Mub6.Numerical.ClusterTube48.pairCheck228
#print axioms Mub6.Numerical.ClusterTube48.pairCheck229
#print axioms Mub6.Numerical.ClusterTube48.pairCheck230
#print axioms Mub6.Numerical.ClusterTube48.pairCheck231
#print axioms Mub6.Numerical.ClusterTube48.pairCheck232
#print axioms Mub6.Numerical.ClusterTube48.pairCheck233
#print axioms Mub6.Numerical.ClusterTube48.pairCheck234
#print axioms Mub6.Numerical.ClusterTube48.pairCheck235
#print axioms Mub6.Numerical.ClusterTube48.pairCheck236
#print axioms Mub6.Numerical.ClusterTube48.pairCheck237
#print axioms Mub6.Numerical.ClusterTube48.pairCheck238
#print axioms Mub6.Numerical.ClusterTube48.pairCheck239
