import LiteralCliqueChunk000
import GraphLiteralAssembly
set_option autoImplicit false
set_option maxRecDepth 16384
set_option maxHeartbeats 3200000
namespace Mub6.Numerical.ClusterTube48
open Mub6.Numerical.GraphKernel
def cliqueCert24 : CliqueCertificate (Fin 48) := .size
theorem cliqueCheck24 : checkClique orthGraph (labelSet 131072) 3 cliqueCert24=true := by
  decide
def cliqueCert25 : CliqueCertificate (Fin 48) := .color 5 (fun v => ![0,0,0,0,0,0,3,0,0,1,0,4,0,0,1,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,1,0,4,1,2,0,0,4,0,2,0,3,3,0,0,3,0] v)
theorem cliqueCheck25 : checkClique orthGraph (labelSet 87198858762817) 6 cliqueCert25=true := by
  decide
def cliqueCert26 : CliqueCertificate (Fin 48) := .size
theorem cliqueCheck26 : checkClique orthGraph (labelSet 136577024) 4 cliqueCert26=true := by
  decide
def cliqueCert27 : CliqueCertificate (Fin 48) := .color 4 (fun v => ![0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,0,2,0,0,0,3,0,3,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,2,0] v)
theorem cliqueCheck27 : checkClique orthGraph (labelSet 71470842577152) 5 cliqueCert27=true := by
  decide
def cliqueCert28 : CliqueCertificate (Fin 48) := .size
theorem cliqueCheck28 : checkClique orthGraph (labelSet 33554432) 3 cliqueCert28=true := by
  decide
def cliqueCert29 : CliqueCertificate (Fin 48) := .color 4 (fun v => ![0,3,0,0,0,0,0,0,1,2,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,2,0,0,2,1,0,0,0,0,3,0,0,0,0,1,0,0,0,1] v)
theorem cliqueCheck29 : checkClique orthGraph (labelSet 167414092399363) 6 cliqueCert29=true := by
  decide
def cliqueCert30 : CliqueCertificate (Fin 48) := .color 3 (fun v => ![0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] v)
theorem cliqueCheck30 : checkClique orthGraph (labelSet 1107329028) 4 cliqueCert30=true := by
  decide
def cliqueCert31 : CliqueCertificate (Fin 48) := .color 4 (fun v => ![0,0,0,0,0,0,1,0,0,0,0,0,0,0,2,1,0,0,0,0,2,0,0,0,0,0,0,0,0,1,0,1,0,3,0,3,3,0,0,2,0,0,0,0,0,0,0,0] v)
theorem cliqueCheck31 : checkClique orthGraph (labelSet 71033928339521) 6 cliqueCert31=true := by
  decide
def cliqueCert32 : CliqueCertificate (Fin 48) := .color 4 (fun v => ![0,2,0,0,0,0,0,0,0,0,0,2,0,1,0,0,0,0,0,0,0,0,3,0,1,0,0,0,0,0,2,0,0,0,1,0,0,0,0,1,2,3,0,0,0,0,0,0] v)
theorem cliqueCheck32 : checkClique orthGraph (labelSet 17060973291522) 6 cliqueCert32=true := by
  decide
def cliqueCert33 : CliqueCertificate (Fin 48) := .color 3 (fun v => ![0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0] v)
theorem cliqueCheck33 : checkClique orthGraph (labelSet 8757706753) 4 cliqueCert33=true := by
  decide
def cliqueCert34 : CliqueCertificate (Fin 48) := .color 4 (fun v => ![1,0,2,2,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,3,0,1,0,0,1,0,0,3,0,0,1,0,0,2,0,0,0,3,0,0,0,0,0,2,0,0,0,0] v)
theorem cliqueCheck34 : checkClique orthGraph (labelSet 8943383117837) 5 cliqueCert34=true := by
  decide
def cliqueCert35 : CliqueCertificate (Fin 48) := .size
theorem cliqueCheck35 : checkClique orthGraph (labelSet 134217728) 3 cliqueCert35=true := by
  decide
def cliqueCert36 : CliqueCertificate (Fin 48) := .color 4 (fun v => ![0,0,0,0,2,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,3,0,0,0,1,0,0,0,1,0,0,3,0,0,1,0,2,2,0,0,0,0] v)
theorem cliqueCheck36 : checkClique orthGraph (labelSet 14449698177200) 6 cliqueCert36=true := by
  decide
def cliqueCert37 : CliqueCertificate (Fin 48) := .color 4 (fun v => ![0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,2,0,0,0,2,3,0,3,0,0,0,0,0,0,0,1,2,1,1,0,3,0,0,0,0,0,0,0,0,0,0,0] v)
theorem cliqueCheck37 : checkClique orthGraph (labelSet 74867734151425) 6 cliqueCert37=true := by
  decide
def cliqueCert38 : CliqueCertificate (Fin 48) := .color 4 (fun v => ![0,0,0,0,0,0,2,1,0,3,0,0,0,0,1,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,3,0,0,2,0,3,0,0,0,0,0,0,1] v)
theorem cliqueCheck38 : checkClique orthGraph (labelSet 159747282129601) 6 cliqueCert38=true := by
  decide
def cliqueCert39 : CliqueCertificate (Fin 48) := .color 3 (fun v => ![0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0] v)
theorem cliqueCheck39 : checkClique orthGraph (labelSet 4415361122304) 4 cliqueCert39=true := by
  decide
def cliqueCert40 : CliqueCertificate (Fin 48) := .color 4 (fun v => ![1,0,2,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,3,0,0,0,0,0,0,0,0,1,0,0,0,0,2,2,0,0,0,0,1,3,0,1,0,0,3,0,0] v)
theorem cliqueCheck40 : checkClique orthGraph (labelSet 41257892839437) 5 cliqueCert40=true := by
  decide
def cliqueCert41 : CliqueCertificate (Fin 48) := .size
theorem cliqueCheck41 : checkClique orthGraph (labelSet 524288) 3 cliqueCert41=true := by
  decide
def cliqueCert42 : CliqueCertificate (Fin 48) := .color 4 (fun v => ![0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,1,3,0,1,0,0,1,1,0,0,2,2] v)
theorem cliqueCheck42 : checkClique orthGraph (labelSet 242668354404384) 6 cliqueCert42=true := by
  decide
def cliqueCert43 : CliqueCertificate (Fin 48) := .color 4 (fun v => ![0,2,0,0,0,0,0,0,0,0,2,0,0,3,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,1,0,1,0,0,0,1,2,0,0,0,0,3,0,2] v)
theorem cliqueCheck43 : checkClique orthGraph (labelSet 195206536246275) 6 cliqueCert43=true := by
  decide
def cliqueCert44 : CliqueCertificate (Fin 48) := .color 4 (fun v => ![0,2,0,0,2,0,0,0,0,0,0,0,0,0,0,1,0,1,0,0,0,0,0,2,0,0,3,0,0,3,0,0,3,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0] v)
theorem cliqueCheck44 : checkClique orthGraph (labelSet 4455567364370) 6 cliqueCert44=true := by
  decide
def cliqueCert45 : CliqueCertificate (Fin 48) := .color 3 (fun v => ![0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1] v)
theorem cliqueCheck45 : checkClique orthGraph (labelSet 158329674924036) 4 cliqueCert45=true := by
  decide
def cliqueCert46 : CliqueCertificate (Fin 48) := .color 4 (fun v => ![0,0,2,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,3,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,1,2,0,0,0,0,0,3,2,0,1,0,0,3] v)
theorem cliqueCheck46 : checkClique orthGraph (labelSet 164978452336652) 5 cliqueCert46=true := by
  decide
def cliqueCert47 : CliqueCertificate (Fin 48) := .size
theorem cliqueCheck47 : checkClique orthGraph (labelSet 4) 3 cliqueCert47=true := by
  decide
end Mub6.Numerical.ClusterTube48
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck24
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck25
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck26
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck27
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck28
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck29
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck30
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck31
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck32
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck33
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck34
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck35
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck36
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck37
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck38
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck39
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck40
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck41
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck42
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck43
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck44
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck45
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck46
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck47
