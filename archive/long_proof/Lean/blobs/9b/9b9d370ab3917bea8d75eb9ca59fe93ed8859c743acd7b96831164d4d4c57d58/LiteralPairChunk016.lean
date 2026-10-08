import LiteralPairChunk015
set_option autoImplicit false
set_option maxRecDepth 16384
set_option maxHeartbeats 3200000
namespace Mub6.Numerical.ClusterTube48
open Mub6.Numerical.GraphKernel
def pairCert384 : PairCertificate (Fin 48) := .split 5 pairCert296 pairCert383
theorem pairCheck384 : checkPairSized orthGraph ubGraph (labelSet 280924513304416) (labelSet 281474976710655) 6 6 pairCert384=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 280924513304416) (labelSet 281474976710655) (labelSet 32298247417088)
    (labelSet 249314236356317) (labelSet 280924513304384) 5 5 6
    pairCert296 pairCert383 (by decide) (by decide) (by decide) (by decide)
    pairCheck296 pairCheck383
def pairCert385 : PairCertificate (Fin 48) := .split 4 pairCert273 pairCert384
theorem pairCheck385 : checkPairSized orthGraph ubGraph (labelSet 280924513304432) (labelSet 281474976710655) 6 6 pairCert385=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 280924513304432) (labelSet 281474976710655) (labelSet 70632146513472)
    (labelSet 210434875348911) (labelSet 280924513304416) 4 5 6
    pairCert273 pairCert384 (by decide) (by decide) (by decide) (by decide)
    pairCheck273 pairCheck384
def pairCert386 : PairCertificate (Fin 48) := .split 0 pairCert252 pairCert385
theorem pairCheck386 : checkPairSized orthGraph ubGraph (labelSet 280924513304433) (labelSet 281474976710655) 6 6 pairCert386=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 280924513304433) (labelSet 281474976710655) (labelSet 186227634521344)
    (labelSet 105168548903678) (labelSet 280924513304432) 0 5 6
    pairCert252 pairCert385 (by decide) (by decide) (by decide) (by decide)
    pairCheck252 pairCheck385
def pairCert387 : PairCertificate (Fin 48) := .split 27 pairCert229 pairCert386
theorem pairCheck387 : checkPairSized orthGraph ubGraph (labelSet 280924647522161) (labelSet 281474976710655) 6 6 pairCert387=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 280924647522161) (labelSet 281474976710655) (labelSet 42906995928065)
    (labelSet 275400951005048) (labelSet 280924513304433) 27 5 6
    pairCert229 pairCert386 (by decide) (by decide) (by decide) (by decide)
    pairCheck229 pairCheck386
def pairCert388 : PairCertificate (Fin 48) := .split 25 pairCert226 pairCert387
theorem pairCheck388 : checkPairSized orthGraph ubGraph (labelSet 280924681076593) (labelSet 281474976710655) 6 6 pairCert388=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 280924681076593) (labelSet 281474976710655) (labelSet 44127651660849)
    (labelSet 272118874275700) (labelSet 280924647522161) 25 5 6
    pairCert226 pairCert387 (by decide) (by decide) (by decide) (by decide)
    pairCheck226 pairCheck387
def pairCert389 : PairCertificate (Fin 48) := .split 19 pairCert225 pairCert388
theorem pairCheck389 : checkPairSized orthGraph ubGraph (labelSet 280924681600881) (labelSet 281474976710655) 6 6 pairCert389=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 280924681600881) (labelSet 281474976710655) (labelSet 165253195258432)
    (labelSet 118145387261813) (labelSet 280924681076593) 19 5 6
    pairCert225 pairCert388 (by decide) (by decide) (by decide) (by decide)
    pairCheck225 pairCheck388
def pairCert390 : PairCertificate (Fin 48) := .split 18 pairCert224 pairCert389
theorem pairCheck390 : checkPairSized orthGraph ubGraph (labelSet 280924681863025) (labelSet 281474976710655) 6 6 pairCert390=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 280924681863025) (labelSet 281474976710655) (labelSet 79407654916192)
    (labelSet 201723186179961) (labelSet 280924681600881) 18 5 6
    pairCert224 pairCert389 (by decide) (by decide) (by decide) (by decide)
    pairCheck224 pairCheck389
def pairCert391 : PairCertificate (Fin 48) := .split 3 pairCert223 pairCert390
theorem pairCheck391 : checkPairSized orthGraph ubGraph (labelSet 280924681863033) (labelSet 281474976710655) 6 6 pairCert391=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 280924681863033) (labelSet 281474976710655) (labelSet 71543734018304)
    (labelSet 209453975928437) (labelSet 280924681863025) 3 5 6
    pairCert223 pairCert390 (by decide) (by decide) (by decide) (by decide)
    pairCheck223 pairCheck390
def pairCert392 : PairCertificate (Fin 48) := .split 2 pairCert222 pairCert391
theorem pairCheck392 : checkPairSized orthGraph ubGraph (labelSet 280924681863037) (labelSet 281474976710655) 6 6 pairCert392=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 280924681863037) (labelSet 281474976710655) (labelSet 158610131157776)
    (labelSet 122593799077497) (labelSet 280924681863033) 2 5 6
    pairCert222 pairCert391 (by decide) (by decide) (by decide) (by decide)
    pairCheck222 pairCheck391
def pairCert393 : PairCertificate (Fin 48) := .split 39 pairCert219 pairCert392
theorem pairCheck393 : checkPairSized orthGraph ubGraph (labelSet 281474437676925) (labelSet 281474976710655) 6 6 pairCert393=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 281474437676925) (labelSet 281474976710655) (labelSet 158610165236508)
    (labelSet 280645267095009) (labelSet 280924681863037) 39 5 6
    pairCert219 pairCert392 (by decide) (by decide) (by decide) (by decide)
    pairCheck219 pairCheck392
def pairCert394 : PairCertificate (Fin 48) := .split 21 pairCert190 pairCert393
theorem pairCheck394 : checkPairSized orthGraph ubGraph (labelSet 281474439774077) (labelSet 281474976710655) 6 6 pairCert394=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 281474439774077) (labelSet 281474976710655) (labelSet 165253330262604)
    (labelSet 279000904807731) (labelSet 281474437676925) 21 5 6
    pairCert190 pairCert393 (by decide) (by decide) (by decide) (by decide)
    pairCheck190 pairCheck393
def pairCert395 : PairCertificate (Fin 48) := .split 29 pairCert161 pairCert394
theorem pairCheck395 : checkPairSized orthGraph ubGraph (labelSet 281474976644989) (labelSet 281474976710655) 6 6 pairCert395=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 281474976644989) (labelSet 281474976710655) (labelSet 43456920300557)
    (labelSet 243541115917297) (labelSet 281474439774077) 29 5 6
    pairCert161 pairCert394 (by decide) (by decide) (by decide) (by decide)
    pairCheck161 pairCheck394
def pairCert396 : PairCertificate (Fin 48) := .split 16 pairCert132 pairCert395
theorem pairCheck396 : checkPairSized orthGraph ubGraph (labelSet 281474976710525) (labelSet 281474976710655) 6 6 pairCert396=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 281474976710525) (labelSet 281474976710655) (labelSet 44127822316605)
    (labelSet 246152927836995) (labelSet 281474976644989) 16 5 6
    pairCert132 pairCert395 (by decide) (by decide) (by decide) (by decide)
    pairCheck132 pairCheck395
def pairCert397 : PairCertificate (Fin 48) := .split 7 pairCert103 pairCert396
theorem pairCheck397 : checkPairSized orthGraph ubGraph (labelSet 281474976710653) (labelSet 281474976710655) 6 6 pairCert397=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 281474976710653) (labelSet 281474976710655) (labelSet 71543870660876)
    (labelSet 281401777905523) (labelSet 281474976710525) 7 5 6
    pairCert103 pairCert396 (by decide) (by decide) (by decide) (by decide)
    pairCheck103 pairCheck396
def pairCert398 : PairCertificate (Fin 48) := .split 1 pairCert54 pairCert397
theorem pairCheck398 : checkPairSized orthGraph ubGraph (labelSet 281474976710655) (labelSet 281474976710655) 6 6 pairCert398=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 281474976710655) (labelSet 281474976710655) (labelSet 79957981941868)
    (labelSet 280718355971985) (labelSet 281474976710653) 1 5 6
    pairCert54 pairCert397 (by decide) (by decide) (by decide) (by decide)
    pairCheck54 pairCheck397
end Mub6.Numerical.ClusterTube48
#print axioms Mub6.Numerical.ClusterTube48.pairCheck384
#print axioms Mub6.Numerical.ClusterTube48.pairCheck385
#print axioms Mub6.Numerical.ClusterTube48.pairCheck386
#print axioms Mub6.Numerical.ClusterTube48.pairCheck387
#print axioms Mub6.Numerical.ClusterTube48.pairCheck388
#print axioms Mub6.Numerical.ClusterTube48.pairCheck389
#print axioms Mub6.Numerical.ClusterTube48.pairCheck390
#print axioms Mub6.Numerical.ClusterTube48.pairCheck391
#print axioms Mub6.Numerical.ClusterTube48.pairCheck392
#print axioms Mub6.Numerical.ClusterTube48.pairCheck393
#print axioms Mub6.Numerical.ClusterTube48.pairCheck394
#print axioms Mub6.Numerical.ClusterTube48.pairCheck395
#print axioms Mub6.Numerical.ClusterTube48.pairCheck396
#print axioms Mub6.Numerical.ClusterTube48.pairCheck397
#print axioms Mub6.Numerical.ClusterTube48.pairCheck398
