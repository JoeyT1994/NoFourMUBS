import CircleFullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1309695 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 10) else (if j.val < 3 then 25 else (if j.val < 4 then 15 else 12)))
def hex_1309695 : String := "4441074043074442410540050A0507434442410740074305440807070744424108400A08410740074307094241070A074107400707"
theorem cover_1309695 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1309695 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 53) (hex := hex_1309695)
  decide +kernel
#print axioms cover_1309695

def state_1309748 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 13)))
def hex_1309748 : String := "400707"
theorem cover_1309748 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1309748 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_1309748)
  decide +kernel
#print axioms cover_1309748

def state_1309751 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 6)))
def hex_1309751 : String := "4440070707"
theorem cover_1309751 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1309751 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1309751)
  decide +kernel
#print axioms cover_1309751

def state_1309760 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 14 else 12)))
def hex_1309760 : String := "41424443094008420944410708070707420908"
theorem cover_1309760 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1309760 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 19) (hex := hex_1309760)
  decide +kernel
#print axioms cover_1309760

def state_1309779 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 15 else 12)))
def hex_1309779 : String := "4142444043420A08054342440A094441400A0A08410708420A44050A400A43090A44400543440807054007430708424440084308060808"
theorem cover_1309779 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1309779 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 55) (hex := hex_1309779)
  decide +kernel
#print axioms cover_1309779

def state_1309835 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 14 else 12)))
def hex_1309835 : String := "4142444043054209444109050905094440430544410708070540070542054440080509"
theorem cover_1309835 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1309835 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 35) (hex := hex_1309835)
  decide +kernel
#print axioms cover_1309835

def state_1309874 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 22) else (if j.val < 3 then 24 else (if j.val < 4 then 15 else 24)))
def hex_1309874 : String := "434244410A09094441404344420907090A43444209410709090A4043094406094305444206410A06094140090909420A44410A400606410A0A"
theorem cover_1309874 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1309874 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 57) (hex := hex_1309874)
  decide +kernel
#print axioms cover_1309874

def state_1309931 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 22) else (if j.val < 3 then 24 else (if j.val < 4 then 15 else 24)))
def hex_1309931 : String := "43420944414043050A050509420A44410A400606410A400909"
theorem cover_1309931 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1309931 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_1309931)
  decide +kernel
#print axioms cover_1309931
end Mub6.Numerical.CircleFullD0.Forest
