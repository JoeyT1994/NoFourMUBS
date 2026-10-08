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
def state_1550174 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 121) else (if j.val < 3 then 102 else (if j.val < 4 then 81 else 88)))
def hex_1550174 : String := "4042440543410905054443414042050A4244050944060705054341400A07054109054209444306094341070609"
theorem cover_1550174 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1550174 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 45) (hex := hex_1550174)
  decide +kernel
#print axioms cover_1550174

def state_1550219 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 60) else (if j.val < 3 then 102 else (if j.val < 4 then 40 else 89)))
def hex_1550219 : String := "430741094042094443070907420907"
theorem cover_1550219 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1550219 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_1550219)
  decide +kernel
#print axioms cover_1550219

def state_1550236 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 60) else (if j.val < 3 then 103 else (if j.val < 4 then 80 else 88)))
def hex_1550236 : String := "4107400A06"
theorem cover_1550236 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1550236 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1550236)
  decide +kernel
#print axioms cover_1550236

def state_1550242 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 120) else (if j.val < 3 then 103 else (if j.val < 4 then 81 else 88)))
def hex_1550242 : String := "4042444307414042070707404244430A090944430741070A0742090707448907420707"
theorem cover_1550242 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1550242 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 35) (hex := hex_1550242)
  decide +kernel
#print axioms cover_1550242

def state_1550278 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 121) else (if j.val < 3 then 103 else (if j.val < 4 then 81 else 88)))
def hex_1550278 : String := "424443410A0641404205440A0A42444305050944430641090543070905430A4140424405070707400542050A4489430741070A"
theorem cover_1550278 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1550278 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 51) (hex := hex_1550278)
  decide +kernel
#print axioms cover_1550278

def state_1550329 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 121) else (if j.val < 3 then 103 else (if j.val < 4 then 81 else 88)))
def hex_1550329 : String := "42444306414042094406070606430741074042090606440607"
theorem cover_1550329 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1550329 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_1550329)
  decide +kernel
#print axioms cover_1550329

def state_1550354 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 60) else (if j.val < 3 then 103 else (if j.val < 4 then 40 else 89)))
def hex_1550354 : String := "4307410740444207070707"
theorem cover_1550354 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1550354 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_1550354)
  decide +kernel
#print axioms cover_1550354

def state_1550365 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 60) else (if j.val < 3 then 51 else (if j.val < 4 then 40 else 44)))
def hex_1550365 : String := "4244434107060943070944430641070607"
theorem cover_1550365 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1550365 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 17) (hex := hex_1550365)
  decide +kernel
#print axioms cover_1550365

def state_1550384 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 61) else (if j.val < 3 then 102 else (if j.val < 4 then 40 else 44)))
def hex_1550384 : String := "44430641400542050605434140420A0A06064140420544050542054443060543070505"
theorem cover_1550384 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1550384 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 35) (hex := hex_1550384)
  decide +kernel
#print axioms cover_1550384
end Mub6.Numerical.CircleFullD0.Forest
