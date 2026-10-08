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
def state_184129 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 12 else (if j.val < 4 then 15 else 14)))
def hex_184129 : String := "41424044084341080808080A42404408434208410808080840440A434142440A4043410A4208050A0A0A42440540050505410A42440840434208050A08050A"
theorem cover_184129 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_184129 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 63) (hex := hex_184129)
  decide +kernel
#print axioms cover_184129

def state_184193 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 24) else (if j.val < 3 then 12 else (if j.val < 4 then 15 else 15)))
def hex_184193 : String := "4240434441064206404344410708060643070606064344070606404344410A424043440A41074207070A0A0A41064240060640434407060607440A060A"
theorem cover_184193 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_184193 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 61) (hex := hex_184193)
  decide +kernel
#print axioms cover_184193

def state_184255 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 25) else (if j.val < 3 then 24 else (if j.val < 4 then 15 else 15)))
def hex_184255 : String := "4043444209414043094442084108080609090944420641400606404443080606080609"
theorem cover_184255 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_184255 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 35) (hex := hex_184255)
  decide +kernel
#print axioms cover_184255

def state_184296 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 50) else (if j.val < 3 then 50 else (if j.val < 4 then 30 else 30)))
def hex_184296 : String := "434441424043090A090A420905414209404307440A06070944410A42404408430906080A41420640060642400606404344410A050606430906"
theorem cover_184296 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_184296 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 57) (hex := hex_184296)
  decide +kernel
#print axioms cover_184296

def state_184353 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 50) else (if j.val < 3 then 50 else (if j.val < 4 then 30 else 30)))
def hex_184353 : String := "4309440A410609"
theorem cover_184353 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_184353 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_184353)
  decide +kernel
#print axioms cover_184353

def state_184360 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 50) else (if j.val < 3 then 51 else (if j.val < 4 then 30 else 30)))
def hex_184360 : String := "4043440541424043050A070505440A410A424043054405060A050A"
theorem cover_184360 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_184360 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 27) (hex := hex_184360)
  decide +kernel
#print axioms cover_184360
end Mub6.Numerical.CircleFullPrototype.Forest
