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
def state_984312 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 107) else (if j.val < 3 then 33 else (if j.val < 4 then 101 else 42)))
def hex_984312 : String := "444206400643080642064006434441420508064105064406410505"
theorem cover_984312 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_984312 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 27) (hex := hex_984312)
  decide +kernel
#print axioms cover_984312

def state_984340 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 53) else (if j.val < 3 then 33 else (if j.val < 4 then 100 else 42)))
def hex_984340 : String := "41444240430A05050A054442404308414407050643090740080A42054043084408050A"
theorem cover_984340 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_984340 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 35) (hex := hex_984340)
  decide +kernel
#print axioms cover_984340

def state_984376 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 106) else (if j.val < 3 then 33 else (if j.val < 4 then 101 else 42)))
def hex_984376 : String := "4442054043410A440A0A41440A054442050A05430A41050A05"
theorem cover_984376 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_984376 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_984376)
  decide +kernel
#print axioms cover_984376

def state_984401 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 107) else (if j.val < 3 then 33 else (if j.val < 4 then 101 else 42)))
def hex_984401 : String := "4442404341440605060607404341440A42050808414407420540060A0643410A0707420540434441054205080544410542054006050543440A0505"
theorem cover_984401 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_984401 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 59) (hex := hex_984401)
  decide +kernel
#print axioms cover_984401

def state_984460 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 53) else (if j.val < 3 then 16 else (if j.val < 4 then 50 else 43)))
def hex_984460 : String := "4205404344410542054307400705054441054205404307050505430505"
theorem cover_984460 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_984460 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 29) (hex := hex_984460)
  decide +kernel
#print axioms cover_984460

def state_984490 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 52) else (if j.val < 3 then 16 else (if j.val < 4 then 51 else 21)))
def hex_984490 : String := "4442054043410544420540090505050505"
theorem cover_984490 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_984490 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 17) (hex := hex_984490)
  decide +kernel
#print axioms cover_984490

def state_984509 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 53) else (if j.val < 3 then 32 else (if j.val < 4 then 51 else 42)))
def hex_984509 : String := "400605"
theorem cover_984509 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_984509 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_984509)
  decide +kernel
#print axioms cover_984509

def state_984513 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 53) else (if j.val < 3 then 33 else (if j.val < 4 then 51 else 42)))
def hex_984513 : String := "4341444206400643414406050606054406064144060506"
theorem cover_984513 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_984513 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 23) (hex := hex_984513)
  decide +kernel
#print axioms cover_984513
end Mub6.Numerical.CircleFullD0.Forest
