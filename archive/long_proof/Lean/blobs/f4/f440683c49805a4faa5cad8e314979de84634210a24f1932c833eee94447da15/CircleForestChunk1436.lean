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
def state_1645397 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 98) else (if j.val < 3 then 59 else (if j.val < 4 then 52 else 41)))
def hex_1645397 : String := "40434244084106430640050644054105430905054342064441054043060506064244050644054105400507"
theorem cover_1645397 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1645397 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 43) (hex := hex_1645397)
  decide +kernel
#print axioms cover_1645397

def state_1645443 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 99) else (if j.val < 3 then 118 else (if j.val < 4 then 104 else 41)))
def hex_1645443 : String := "4441434008060843404208440808A0400808414306404405090643400906404408420609A0"
theorem cover_1645443 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1645443 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 37) (hex := hex_1645443)
  decide +kernel
#print axioms cover_1645443

def state_1645480 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 99) else (if j.val < 3 then 119 else (if j.val < 4 then 104 else 41)))
def hex_1645480 : String := "44414340054244050644050505434042440809440509A04005A04143094005440509434009A0404442080509A0"
theorem cover_1645480 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1645480 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 45) (hex := hex_1645480)
  decide +kernel
#print axioms cover_1645480

def state_1645525 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 99) else (if j.val < 3 then 59 else (if j.val < 4 then 105 else 41)))
def hex_1645525 : String := "4244084140054344050605400843A0074405410540434405050543A005"
theorem cover_1645525 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1645525 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 29) (hex := hex_1645525)
  decide +kernel
#print axioms cover_1645525

def state_1645555 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 99) else (if j.val < 3 then 59 else (if j.val < 4 then 104 else 41)))
def hex_1645555 : String := "42444106A00644414043420644060642080506A04140430644060606A0"
theorem cover_1645555 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1645555 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_1645555)
  decide +kernel
#print axioms cover_1645555

def state_1645584 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 99) else (if j.val < 3 then 59 else (if j.val < 4 then 105 else 41)))
def hex_1645584 : String := "424407414007064043A007064441400507400807414043440542064105A0054306074043A00743A007"
theorem cover_1645584 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1645584 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 41) (hex := hex_1645584)
  decide +kernel
#print axioms cover_1645584

def state_1645625 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 49) else (if j.val < 3 then 29 else (if j.val < 4 then 53 else 20)))
def hex_1645625 : String := "4244070744054105400507"
theorem cover_1645625 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1645625 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_1645625)
  decide +kernel
#print axioms cover_1645625
end Mub6.Numerical.CircleFullD0.Forest
