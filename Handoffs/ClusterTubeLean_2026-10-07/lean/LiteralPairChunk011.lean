import LiteralPairChunk010
set_option autoImplicit false
set_option maxRecDepth 16384
set_option maxHeartbeats 3200000
namespace Mub6.Numerical.ClusterTube48
open Mub6.Numerical.GraphKernel
def pairCert264 : PairCertificate (Fin 48) := .first cliqueCert80
theorem pairCheck264 : checkPairSized orthGraph ubGraph (labelSet 70455717265408) (labelSet 209335258843051) 4 6 pairCert264=true := by
  exact cliqueCheck80
def pairCert265 : PairCertificate (Fin 48) := .split 11 pairCert263 pairCert264
theorem pairCheck265 : checkPairSized orthGraph ubGraph (labelSet 70455717267456) (labelSet 209335258843051) 4 6 pairCert265=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 70455717267456) (labelSet 209335258843051) (labelSet 70454643523584)
    (labelSet 204936648197771) (labelSet 70455717265408) 11 3 6
    pairCert263 pairCert264 (by decide) (by decide) (by decide) (by decide)
    pairCheck263 pairCheck264
def pairCert266 : PairCertificate (Fin 48) := .first cliqueCert81
theorem pairCheck266 : checkPairSized orthGraph ubGraph (labelSet 70490077014080) (labelSet 210434875348911) 5 6 pairCert266=true := by
  exact cliqueCheck81
def pairCert267 : PairCertificate (Fin 48) := .split 15 pairCert265 pairCert266
theorem pairCheck267 : checkPairSized orthGraph ubGraph (labelSet 70490077046848) (labelSet 210434875348911) 5 6 pairCert267=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 70490077046848) (labelSet 210434875348911) (labelSet 70455717267456)
    (labelSet 209335258843051) (labelSet 70490077014080) 15 4 6
    pairCert265 pairCert266 (by decide) (by decide) (by decide) (by decide)
    pairCheck265 pairCheck266
def pairCert268 : PairCertificate (Fin 48) := .split 28 pairCert262 pairCert267
theorem pairCheck268 : checkPairSized orthGraph ubGraph (labelSet 70490345482304) (labelSet 210434875348911) 5 6 pairCert268=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 70490345482304) (labelSet 210434875348911) (labelSet 70421357535296)
    (labelSet 69559792850343) (labelSet 70490077046848) 28 4 6
    pairCert262 pairCert267 (by decide) (by decide) (by decide) (by decide)
    pairCheck262 pairCheck267
def pairCert269 : PairCertificate (Fin 48) := .split 26 pairCert257 pairCert268
theorem pairCheck269 : checkPairSized orthGraph ubGraph (labelSet 70490412591168) (labelSet 210434875348911) 5 6 pairCert269=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 70490412591168) (labelSet 210434875348911) (labelSet 1073774592)
    (labelSet 202736074098607) (labelSet 70490345482304) 26 4 6
    pairCert257 pairCert268 (by decide) (by decide) (by decide) (by decide)
    pairCheck257 pairCheck268
def pairCert270 : PairCertificate (Fin 48) := .split 37 pairCert256 pairCert269
theorem pairCheck270 : checkPairSized orthGraph ubGraph (labelSet 70627851544640) (labelSet 210434875348911) 5 6 pairCert270=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 70627851544640) (labelSet 210434875348911) (labelSet 86167781440)
    (labelSet 58560515691949) (labelSet 70490412591168) 37 4 6
    pairCert256 pairCert269 (by decide) (by decide) (by decide) (by decide)
    pairCheck256 pairCheck269
def pairCert271 : PairCertificate (Fin 48) := .split 10 pairCert255 pairCert270
theorem pairCheck271 : checkPairSized orthGraph ubGraph (labelSet 70627851545664) (labelSet 210434875348911) 5 6 pairCert271=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 70627851545664) (labelSet 210434875348911) (labelSet 70403103926272)
    (labelSet 192829266464942) (labelSet 70627851544640) 10 4 6
    pairCert255 pairCert270 (by decide) (by decide) (by decide) (by decide)
    pairCheck255 pairCheck270
def pairCert272 : PairCertificate (Fin 48) := .split 32 pairCert254 pairCert271
theorem pairCheck272 : checkPairSized orthGraph ubGraph (labelSet 70632146512960) (labelSet 210434875348911) 5 6 pairCert272=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 70632146512960) (labelSet 210434875348911) (labelSet 257698046976)
    (labelSet 199298025001518) (labelSet 70627851545664) 32 4 6
    pairCert254 pairCert271 (by decide) (by decide) (by decide) (by decide)
    pairCheck254 pairCheck271
def pairCert273 : PairCertificate (Fin 48) := .split 9 pairCert253 pairCert272
theorem pairCheck273 : checkPairSized orthGraph ubGraph (labelSet 70632146513472) (labelSet 210434875348911) 5 6 pairCert273=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 70632146513472) (labelSet 210434875348911) (labelSet 70506451569728)
    (labelSet 51959147942319) (labelSet 70632146512960) 9 4 6
    pairCert253 pairCert272 (by decide) (by decide) (by decide) (by decide)
    pairCheck253 pairCheck272
def pairCert274 : PairCertificate (Fin 48) := .first cliqueCert82
theorem pairCheck274 : checkPairSized orthGraph ubGraph (labelSet 17592187119872) (labelSet 178897709600988) 4 6 pairCert274=true := by
  exact cliqueCheck82
def pairCert275 : PairCertificate (Fin 48) := .first cliqueCert83
theorem pairCheck275 : checkPairSized orthGraph ubGraph (labelSet 5772445499392) (labelSet 246562163656413) 4 6 pairCert275=true := by
  exact cliqueCheck83
def pairCert276 : PairCertificate (Fin 48) := .first cliqueCert84
theorem pairCheck276 : checkPairSized orthGraph ubGraph (labelSet 1374389537024) (labelSet 249275508196060) 4 6 pairCert276=true := by
  exact cliqueCheck84
def pairCert277 : PairCertificate (Fin 48) := .first cliqueCert85
theorem pairCheck277 : checkPairSized orthGraph ubGraph (labelSet 21990240952320) (labelSet 176734589603933) 4 6 pairCert277=true := by
  exact cliqueCheck85
def pairCert278 : PairCertificate (Fin 48) := .first cliqueCert86
theorem pairCheck278 : checkPairSized orthGraph ubGraph (labelSet 8796109799424) (labelSet 106218538194141) 4 6 pairCert278=true := by
  exact cliqueCheck86
def pairCert279 : PairCertificate (Fin 48) := .cross cliqueCert87
theorem pairCheck279 : checkPairSized orthGraph ubGraph (labelSet 25165824) (labelSet 176617951728320) 2 6 pairCert279=true := by
  exact cliqueCheck87
def pairCert280 : PairCertificate (Fin 48) := .first cliqueCert88
theorem pairCheck280 : checkPairSized orthGraph ubGraph (labelSet 18691722838016) (labelSet 247073134252752) 3 6 pairCert280=true := by
  exact cliqueCheck88
def pairCert281 : PairCertificate (Fin 48) := .split 11 pairCert279 pairCert280
theorem pairCheck281 : checkPairSized orthGraph ubGraph (labelSet 18691722840064) (labelSet 247073134252752) 3 6 pairCert281=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 18691722840064) (labelSet 247073134252752) (labelSet 25165824)
    (labelSet 176617951728320) (labelSet 18691722838016) 11 2 6
    pairCert279 pairCert280 (by decide) (by decide) (by decide) (by decide)
    pairCheck279 pairCheck280
def pairCert282 : PairCertificate (Fin 48) := .first cliqueCert89
theorem pairCheck282 : checkPairSized orthGraph ubGraph (labelSet 18691722840064) (labelSet 249275581633232) 4 6 pairCert282=true := by
  exact cliqueCheck89
def pairCert283 : PairCertificate (Fin 48) := .split 42 pairCert281 pairCert282
theorem pairCheck283 : checkPairSized orthGraph ubGraph (labelSet 23089769351168) (labelSet 249275581633232) 4 6 pairCert283=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 23089769351168) (labelSet 249275581633232) (labelSet 18691722840064)
    (labelSet 247073134252752) (labelSet 18691722840064) 42 3 6
    pairCert281 pairCert282 (by decide) (by decide) (by decide) (by decide)
    pairCheck281 pairCheck282
def pairCert284 : PairCertificate (Fin 48) := .cross cliqueCert90
theorem pairCheck284 : checkPairSized orthGraph ubGraph (labelSet 9070970929152) (labelSet 178900456308737) 2 6 pairCert284=true := by
  exact cliqueCheck90
def pairCert285 : PairCertificate (Fin 48) := .first cliqueCert91
theorem pairCheck285 : checkPairSized orthGraph ubGraph (labelSet 13469017440256) (labelSet 178936695095505) 3 6 pairCert285=true := by
  exact cliqueCheck91
def pairCert286 : PairCertificate (Fin 48) := .split 13 pairCert284 pairCert285
theorem pairCheck286 : checkPairSized orthGraph ubGraph (labelSet 13469017448448) (labelSet 178936695095505) 3 6 pairCert286=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 13469017448448) (labelSet 178936695095505) (labelSet 9070970929152)
    (labelSet 178900456308737) (labelSet 13469017440256) 13 2 6
    pairCert284 pairCert285 (by decide) (by decide) (by decide) (by decide)
    pairCheck284 pairCheck285
def pairCert287 : PairCertificate (Fin 48) := .first cliqueCert92
theorem pairCheck287 : checkPairSized orthGraph ubGraph (labelSet 13469017448448) (labelSet 249314030782165) 4 6 pairCert287=true := by
  exact cliqueCheck92
end Mub6.Numerical.ClusterTube48
#print axioms Mub6.Numerical.ClusterTube48.pairCheck264
#print axioms Mub6.Numerical.ClusterTube48.pairCheck265
#print axioms Mub6.Numerical.ClusterTube48.pairCheck266
#print axioms Mub6.Numerical.ClusterTube48.pairCheck267
#print axioms Mub6.Numerical.ClusterTube48.pairCheck268
#print axioms Mub6.Numerical.ClusterTube48.pairCheck269
#print axioms Mub6.Numerical.ClusterTube48.pairCheck270
#print axioms Mub6.Numerical.ClusterTube48.pairCheck271
#print axioms Mub6.Numerical.ClusterTube48.pairCheck272
#print axioms Mub6.Numerical.ClusterTube48.pairCheck273
#print axioms Mub6.Numerical.ClusterTube48.pairCheck274
#print axioms Mub6.Numerical.ClusterTube48.pairCheck275
#print axioms Mub6.Numerical.ClusterTube48.pairCheck276
#print axioms Mub6.Numerical.ClusterTube48.pairCheck277
#print axioms Mub6.Numerical.ClusterTube48.pairCheck278
#print axioms Mub6.Numerical.ClusterTube48.pairCheck279
#print axioms Mub6.Numerical.ClusterTube48.pairCheck280
#print axioms Mub6.Numerical.ClusterTube48.pairCheck281
#print axioms Mub6.Numerical.ClusterTube48.pairCheck282
#print axioms Mub6.Numerical.ClusterTube48.pairCheck283
#print axioms Mub6.Numerical.ClusterTube48.pairCheck284
#print axioms Mub6.Numerical.ClusterTube48.pairCheck285
#print axioms Mub6.Numerical.ClusterTube48.pairCheck286
#print axioms Mub6.Numerical.ClusterTube48.pairCheck287
