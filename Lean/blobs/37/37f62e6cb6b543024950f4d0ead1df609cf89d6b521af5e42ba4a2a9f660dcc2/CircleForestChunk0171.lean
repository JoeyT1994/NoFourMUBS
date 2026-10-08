import CircleFullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_62421 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 25 else 9)))
def hex_62421 : String := "41420840440843070744084340444107070744414206070841060740070608"
theorem cover_62421 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_62421 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 31) (hex := hex_62421)
  decide +kernel
#print axioms cover_62421

def state_62452 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 13 else 4)))
def hex_62452 : String := "400808"
theorem cover_62452 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_62452 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_62452)
  decide +kernel
#print axioms cover_62452

def state_62455 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 11) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 4)))
def hex_62455 : String := "420843400A0808"
theorem cover_62455 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_62455 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_62455)
  decide +kernel
#print axioms cover_62455

def state_62464 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 6 else 5)))
def hex_62464 : String := "434440420A0A424341440A050A4106084309414406054408074005094440420841050742060606"
theorem cover_62464 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_62464 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 39) (hex := hex_62464)
  decide +kernel
#print axioms cover_62464

def state_62503 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 6 else 5)))
def hex_62503 : String := "43444043410507410507434142094440070905094142444005060507424408070740050744404105074142060742080707"
theorem cover_62503 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_62503 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 49) (hex := hex_62503)
  decide +kernel
#print axioms cover_62503

def state_62552 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 11) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 5)))
def hex_62552 : String := "424344400A4142080A080A4408074344400A4143094208070A074440070807"
theorem cover_62552 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_62552 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 31) (hex := hex_62552)
  decide +kernel
#print axioms cover_62552

def state_62583 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 2)))
def hex_62583 : String := "44084142064440070606420844084043060606"
theorem cover_62583 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_62583 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_62583)
  decide +kernel
#print axioms cover_62583

def state_62607 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 10) else (if j.val < 3 then 7 else (if j.val < 4 then 12 else 4)))
def hex_62607 : String := "4244434106060943410707410707440607"
theorem cover_62607 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_62607 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 17) (hex := hex_62607)
  decide +kernel
#print axioms cover_62607

def state_62629 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 20) else (if j.val < 3 then 14 else (if j.val < 4 then 24 else 8)))
def hex_62629 : String := "424443060843064240064107070606"
theorem cover_62629 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_62629 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_62629)
  decide +kernel
#print axioms cover_62629
end Mub6.Numerical.CircleFullPrototype.Forest
