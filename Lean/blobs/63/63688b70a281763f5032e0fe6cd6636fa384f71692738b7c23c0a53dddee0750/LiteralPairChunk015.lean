import LiteralPairChunk014
set_option autoImplicit false
set_option maxRecDepth 16384
set_option maxHeartbeats 3200000
namespace Mub6.Numerical.ClusterTube48
open Mub6.Numerical.GraphKernel
def pairCert360 : PairCertificate (Fin 48) := .split 6 pairCert342 pairCert359
theorem pairCheck360 : checkPairSized orthGraph ubGraph (labelSet 229119615831104) (labelSet 52080480877055) 5 6 pairCert360=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 229119615831104) (labelSet 52080480877055) (labelSet 146298372096)
    (labelSet 16860666775981) (labelSet 229119615831040) 6 4 6
    pairCert342 pairCert359 (by decide) (by decide) (by decide) (by decide)
    pairCheck342 pairCheck359
def pairCert361 : PairCertificate (Fin 48) := .split 23 pairCert341 pairCert360
theorem pairCheck361 : checkPairSized orthGraph ubGraph (labelSet 229119624219712) (labelSet 52080480877055) 5 6 pairCert361=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 229119624219712) (labelSet 52080480877055) (labelSet 8611956800)
    (labelSet 12498053750815) (labelSet 229119615831104) 23 4 6
    pairCert341 pairCert360 (by decide) (by decide) (by decide) (by decide)
    pairCheck341 pairCheck360
def pairCert362 : PairCertificate (Fin 48) := .first cliqueCert127
theorem pairCheck362 : checkPairSized orthGraph ubGraph (labelSet 93497168415744) (labelSet 277038250308306) 5 6 pairCert362=true := by
  exact cliqueCheck127
def pairCert363 : PairCertificate (Fin 48) := .first cliqueCert128
theorem pairCheck363 : checkPairSized orthGraph ubGraph (labelSet 177227891271680) (labelSet 139499644333439) 5 6 pairCert363=true := by
  exact cliqueCheck128
def pairCert364 : PairCertificate (Fin 48) := .first cliqueCert129
theorem pairCheck364 : checkPairSized orthGraph ubGraph (labelSet 30831759499328) (labelSet 274839955824555) 5 6 pairCert364=true := by
  exact cliqueCheck129
def pairCert365 : PairCertificate (Fin 48) := .first cliqueCert130
theorem pairCheck365 : checkPairSized orthGraph ubGraph (labelSet 224545453803520) (labelSet 199883348080623) 5 6 pairCert365=true := by
  exact cliqueCheck130
def pairCert366 : PairCertificate (Fin 48) := .first cliqueCert131
theorem pairCheck366 : checkPairSized orthGraph ubGraph (labelSet 92438509134912) (labelSet 186905097402749) 5 6 pairCert366=true := by
  exact cliqueCheck131
def pairCert367 : PairCertificate (Fin 48) := .first cliqueCert132
theorem pairCheck367 : checkPairSized orthGraph ubGraph (labelSet 203484880199680) (labelSet 77169822785502) 5 6 pairCert367=true := by
  exact cliqueCheck132
def pairCert368 : PairCertificate (Fin 48) := .first cliqueCert133
theorem pairCheck368 : checkPairSized orthGraph ubGraph (labelSet 184870701629504) (labelSet 235127976095667) 5 6 pairCert368=true := by
  exact cliqueCheck133
def pairCert369 : PairCertificate (Fin 48) := .first cliqueCert134
theorem pairCheck369 : checkPairSized orthGraph ubGraph (labelSet 224446677813248) (labelSet 136201671275743) 5 6 pairCert369=true := by
  exact cliqueCheck134
def pairCert370 : PairCertificate (Fin 48) := .first cliqueCert135
theorem pairCheck370 : checkPairSized orthGraph ubGraph (labelSet 123192546977792) (labelSet 193466263845118) 5 6 pairCert370=true := by
  exact cliqueCheck135
def pairCert371 : PairCertificate (Fin 48) := .first cliqueCert136
theorem pairCheck371 : checkPairSized orthGraph ubGraph (labelSet 278432336373824) (labelSet 281474976710655) 6 6 pairCert371=true := by
  exact cliqueCheck136
def pairCert372 : PairCertificate (Fin 48) := .split 10 pairCert370 pairCert371
theorem pairCheck372 : checkPairSized orthGraph ubGraph (labelSet 278432336374848) (labelSet 281474976710655) 6 6 pairCert372=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 278432336374848) (labelSet 281474976710655) (labelSet 123192546977792)
    (labelSet 193466263845118) (labelSet 278432336373824) 10 5 6
    pairCert370 pairCert371 (by decide) (by decide) (by decide) (by decide)
    pairCheck370 pairCheck371
def pairCert373 : PairCertificate (Fin 48) := .split 24 pairCert369 pairCert372
theorem pairCheck373 : checkPairSized orthGraph ubGraph (labelSet 278432353152064) (labelSet 281474976710655) 6 6 pairCert373=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 278432353152064) (labelSet 281474976710655) (labelSet 224446677813248)
    (labelSet 136201671275743) (labelSet 278432336374848) 24 5 6
    pairCert369 pairCert372 (by decide) (by decide) (by decide) (by decide)
    pairCheck369 pairCheck372
def pairCert374 : PairCertificate (Fin 48) := .split 17 pairCert368 pairCert373
theorem pairCheck374 : checkPairSized orthGraph ubGraph (labelSet 278432353283136) (labelSet 281474976710655) 6 6 pairCert374=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 278432353283136) (labelSet 281474976710655) (labelSet 184870701629504)
    (labelSet 235127976095667) (labelSet 278432353152064) 17 5 6
    pairCert368 pairCert373 (by decide) (by decide) (by decide) (by decide)
    pairCheck368 pairCheck373
def pairCert375 : PairCertificate (Fin 48) := .split 38 pairCert367 pairCert374
theorem pairCheck375 : checkPairSized orthGraph ubGraph (labelSet 278707231190080) (labelSet 281474976710655) 6 6 pairCert375=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 278707231190080) (labelSet 281474976710655) (labelSet 203484880199680)
    (labelSet 77169822785502) (labelSet 278432353283136) 38 5 6
    pairCert367 pairCert374 (by decide) (by decide) (by decide) (by decide)
    pairCheck367 pairCheck374
def pairCert376 : PairCertificate (Fin 48) := .split 20 pairCert366 pairCert375
theorem pairCheck376 : checkPairSized orthGraph ubGraph (labelSet 278707232238656) (labelSet 281474976710655) 6 6 pairCert376=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 278707232238656) (labelSet 281474976710655) (labelSet 92438509134912)
    (labelSet 186905097402749) (labelSet 278707231190080) 20 5 6
    pairCert366 pairCert375 (by decide) (by decide) (by decide) (by decide)
    pairCheck366 pairCheck375
def pairCert377 : PairCertificate (Fin 48) := .split 34 pairCert365 pairCert376
theorem pairCheck377 : checkPairSized orthGraph ubGraph (labelSet 278724412107840) (labelSet 281474976710655) 6 6 pairCert377=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 278724412107840) (labelSet 281474976710655) (labelSet 224545453803520)
    (labelSet 199883348080623) (labelSet 278707232238656) 34 5 6
    pairCert365 pairCert376 (by decide) (by decide) (by decide) (by decide)
    pairCheck365 pairCheck376
def pairCert378 : PairCertificate (Fin 48) := .split 30 pairCert364 pairCert377
theorem pairCheck378 : checkPairSized orthGraph ubGraph (labelSet 278725485849664) (labelSet 281474976710655) 6 6 pairCert378=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 278725485849664) (labelSet 281474976710655) (labelSet 30831759499328)
    (labelSet 274839955824555) (labelSet 278724412107840) 30 5 6
    pairCert364 pairCert377 (by decide) (by decide) (by decide) (by decide)
    pairCheck364 pairCheck377
def pairCert379 : PairCertificate (Fin 48) := .split 22 pairCert363 pairCert378
theorem pairCheck379 : checkPairSized orthGraph ubGraph (labelSet 278725490043968) (labelSet 281474976710655) 6 6 pairCert379=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 278725490043968) (labelSet 281474976710655) (labelSet 177227891271680)
    (labelSet 139499644333439) (labelSet 278725485849664) 22 5 6
    pairCert363 pairCert378 (by decide) (by decide) (by decide) (by decide)
    pairCheck363 pairCheck378
def pairCert380 : PairCertificate (Fin 48) := .split 8 pairCert362 pairCert379
theorem pairCheck380 : checkPairSized orthGraph ubGraph (labelSet 278725490044224) (labelSet 281474976710655) 6 6 pairCert380=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 278725490044224) (labelSet 281474976710655) (labelSet 93497168415744)
    (labelSet 277038250308306) (labelSet 278725490043968) 8 5 6
    pairCert362 pairCert379 (by decide) (by decide) (by decide) (by decide)
    pairCheck362 pairCheck379
def pairCert381 : PairCertificate (Fin 48) := .split 9 pairCert361 pairCert380
theorem pairCheck381 : checkPairSized orthGraph ubGraph (labelSet 278725490044736) (labelSet 281474976710655) 6 6 pairCert381=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 278725490044736) (labelSet 281474976710655) (labelSet 229119624219712)
    (labelSet 52080480877055) (labelSet 278725490044224) 9 5 6
    pairCert361 pairCert380 (by decide) (by decide) (by decide) (by decide)
    pairCheck361 pairCheck380
def pairCert382 : PairCertificate (Fin 48) := .split 41 pairCert340 pairCert381
theorem pairCheck382 : checkPairSized orthGraph ubGraph (labelSet 280924513300288) (labelSet 281474976710655) 6 6 pairCert382=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 280924513300288) (labelSet 281474976710655) (labelSet 48815592843328)
    (labelSet 265919071649791) (labelSet 278725490044736) 41 5 6
    pairCert340 pairCert381 (by decide) (by decide) (by decide) (by decide)
    pairCheck340 pairCheck381
def pairCert383 : PairCertificate (Fin 48) := .split 12 pairCert317 pairCert382
theorem pairCheck383 : checkPairSized orthGraph ubGraph (labelSet 280924513304384) (labelSet 281474976710655) 6 6 pairCert383=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 280924513304384) (labelSet 281474976710655) (labelSet 181464612388928)
    (labelSet 245182422396863) (labelSet 280924513300288) 12 5 6
    pairCert317 pairCert382 (by decide) (by decide) (by decide) (by decide)
    pairCheck317 pairCheck382
end Mub6.Numerical.ClusterTube48
#print axioms Mub6.Numerical.ClusterTube48.pairCheck360
#print axioms Mub6.Numerical.ClusterTube48.pairCheck361
#print axioms Mub6.Numerical.ClusterTube48.pairCheck362
#print axioms Mub6.Numerical.ClusterTube48.pairCheck363
#print axioms Mub6.Numerical.ClusterTube48.pairCheck364
#print axioms Mub6.Numerical.ClusterTube48.pairCheck365
#print axioms Mub6.Numerical.ClusterTube48.pairCheck366
#print axioms Mub6.Numerical.ClusterTube48.pairCheck367
#print axioms Mub6.Numerical.ClusterTube48.pairCheck368
#print axioms Mub6.Numerical.ClusterTube48.pairCheck369
#print axioms Mub6.Numerical.ClusterTube48.pairCheck370
#print axioms Mub6.Numerical.ClusterTube48.pairCheck371
#print axioms Mub6.Numerical.ClusterTube48.pairCheck372
#print axioms Mub6.Numerical.ClusterTube48.pairCheck373
#print axioms Mub6.Numerical.ClusterTube48.pairCheck374
#print axioms Mub6.Numerical.ClusterTube48.pairCheck375
#print axioms Mub6.Numerical.ClusterTube48.pairCheck376
#print axioms Mub6.Numerical.ClusterTube48.pairCheck377
#print axioms Mub6.Numerical.ClusterTube48.pairCheck378
#print axioms Mub6.Numerical.ClusterTube48.pairCheck379
#print axioms Mub6.Numerical.ClusterTube48.pairCheck380
#print axioms Mub6.Numerical.ClusterTube48.pairCheck381
#print axioms Mub6.Numerical.ClusterTube48.pairCheck382
#print axioms Mub6.Numerical.ClusterTube48.pairCheck383
