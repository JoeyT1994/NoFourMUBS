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
def state_283926 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 8 else (if j.val < 4 then 29 else 24)))
def hex_283926 : String := "420840444108434208444041084342050505050808084441080508"
theorem cover_283926 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_283926 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 27) (hex := hex_283926)
  decide +kernel
#print axioms cover_283926

def state_283955 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 29) else (if j.val < 3 then 16 else (if j.val < 4 then 28 else 24)))
def hex_283955 : String := "4007440907"
theorem cover_283955 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_283955 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_283955)
  decide +kernel
#print axioms cover_283955

def state_283961 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 29) else (if j.val < 3 then 17 else (if j.val < 4 then 28 else 24)))
def hex_283961 : String := "44434142094440090940074306410606094142440907444043414207440540070507414205050505400743414207060741420544050805420744050707"
theorem cover_283961 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_283961 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 61) (hex := hex_283961)
  decide +kernel
#print axioms cover_283961

def state_284022 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 29) else (if j.val < 3 then 17 else (if j.val < 4 then 28 else 24)))
def hex_284022 : String := "44434142090605054341420A06074142084044430608070607"
theorem cover_284022 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_284022 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_284022)
  decide +kernel
#print axioms cover_284022

def state_284047 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 29) else (if j.val < 3 then 8 else (if j.val < 4 then 29 else 24)))
def hex_284047 : String := "42404441080507440508404441434244050744054007054205054342050505410807440541084342050505"
theorem cover_284047 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_284047 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 43) (hex := hex_284047)
  decide +kernel
#print axioms cover_284047

def state_284090 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 8 else (if j.val < 4 then 14 else 25)))
def hex_284090 : String := "414342084008080807"
theorem cover_284090 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_284090 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_284090)
  decide +kernel
#print axioms cover_284090

def state_284099 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 8 else (if j.val < 4 then 15 else 12)))
def hex_284099 : String := "404441080A084441084208434008050808"
theorem cover_284099 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_284099 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_284099)
  decide +kernel
#print axioms cover_284099

def state_284124 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 28) else (if j.val < 3 then 18 else (if j.val < 4 then 28 else 48)))
def hex_284124 : String := "410543054244400541050A0509"
theorem cover_284124 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_284124 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_284124)
  decide +kernel
#print axioms cover_284124

def state_284138 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 56) else (if j.val < 3 then 18 else (if j.val < 4 then 28 else 48)))
def hex_284138 : String := "434244400541054305420505050509"
theorem cover_284138 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_284138 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_284138)
  decide +kernel
#print axioms cover_284138
end Mub6.Numerical.CircleFullPrototype.Forest
