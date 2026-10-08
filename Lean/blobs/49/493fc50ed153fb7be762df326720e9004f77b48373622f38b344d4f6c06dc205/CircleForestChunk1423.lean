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
def state_1642265 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 85 else 100) else (if j.val < 3 then 117 else (if j.val < 4 then 103 else 40)))
def hex_1642265 : String := "444108434008080841434042080842064408410643060808434042440841080A44080942444108050544410843050841430540080505400842440808440808"
theorem cover_1642265 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1642265 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 63) (hex := hex_1642265)
  decide +kernel
#print axioms cover_1642265

def state_1642329 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 101) else (if j.val < 3 then 58 else (if j.val < 4 then 102 else 40)))
def hex_1642329 : String := "4042444143400705400A4244080544080A4305400A0541430540090505444143074007424407070743050A410705420544414305404244080507050505"
theorem cover_1642329 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1642329 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 61) (hex := hex_1642329)
  decide +kernel
#print axioms cover_1642329

def state_1642391 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 84 else 101) else (if j.val < 3 then 58 else (if j.val < 4 then 103 else 40)))
def hex_1642391 : String := "42444143400808080A410A0A4441430A080A0A"
theorem cover_1642391 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1642391 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 19) (hex := hex_1642391)
  decide +kernel
#print axioms cover_1642391

def state_1642411 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 85 else 101) else (if j.val < 3 then 116 else (if j.val < 4 then 103 else 40)))
def hex_1642411 : String := "444143404208084205440805084305400A0941430540420A0A420544050505"
theorem cover_1642411 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1642411 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 31) (hex := hex_1642411)
  decide +kernel
#print axioms cover_1642411

def state_1642442 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 85 else 101) else (if j.val < 3 then 117 else (if j.val < 4 then 103 else 40)))
def hex_1642442 : String := "4441434042084408084244080544084108054008084340420A0A05400A420944060A41434042440A050A05400A424408054441080A0A4305400A05"
theorem cover_1642442 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1642442 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 59) (hex := hex_1642442)
  decide +kernel
#print axioms cover_1642442

def state_1642503 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 100) else (if j.val < 3 then 58 else (if j.val < 4 then 102 else 41)))
def hex_1642503 : String := "4009420609"
theorem cover_1642503 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1642503 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1642503)
  decide +kernel
#print axioms cover_1642503

def state_1642509 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 84 else 100) else (if j.val < 3 then 58 else (if j.val < 4 then 103 else 41)))
def hex_1642509 : String := "4244410943090A0909"
theorem cover_1642509 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1642509 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1642509)
  decide +kernel
#print axioms cover_1642509
end Mub6.Numerical.CircleFullD0.Forest
