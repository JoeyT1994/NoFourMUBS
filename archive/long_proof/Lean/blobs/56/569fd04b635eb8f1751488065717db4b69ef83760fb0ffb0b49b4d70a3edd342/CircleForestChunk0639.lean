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
def state_1342289 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 2 else 3)))
def hex_1342289 : String := "4344080A444043440841080A4441424009080842404308090808414209400508420940430844080508430844080940430A41050909"
theorem cover_1342289 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1342289 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 53) (hex := hex_1342289)
  decide +kernel
#print axioms cover_1342289

def state_1342342 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 3)))
def hex_1342342 : String := "430844404243084408050A420843084408054005420805"
theorem cover_1342342 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1342342 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_1342342)
  decide +kernel
#print axioms cover_1342342

def state_1342367 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 2 else 3)))
def hex_1342367 : String := "4308444143444008070807430844400807094143080609"
theorem cover_1342367 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1342367 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_1342367)
  decide +kernel
#print axioms cover_1342367

def state_1342396 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 4 else 12)))
def hex_1342396 : String := "43084144420840084341444208060608410544420805050808"
theorem cover_1342396 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1342396 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 25) (hex := hex_1342396)
  decide +kernel
#print axioms cover_1342396

def state_1342422 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 8 else 12)))
def hex_1342422 : String := "414442084043080A0A0808"
theorem cover_1342422 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1342422 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_1342422)
  decide +kernel
#print axioms cover_1342422

def state_1342434 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 24) else (if j.val < 3 then 10 else (if j.val < 4 then 9 else 12)))
def hex_1342434 : String := "44420A4340410A4442080A080A40410A4442070A0A0A4208430A404106080A"
theorem cover_1342434 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1342434 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 31) (hex := hex_1342434)
  decide +kernel
#print axioms cover_1342434

def state_1342465 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 25) else (if j.val < 3 then 10 else (if j.val < 4 then 9 else 12)))
def hex_1342465 : String := "4442084340084441420543050A0508404441420843084005440708080844414207430A07420643064008064142080A084208430808"
theorem cover_1342465 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1342465 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 53) (hex := hex_1342465)
  decide +kernel
#print axioms cover_1342465

def state_1342518 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 4 else 13)))
def hex_1342518 : String := "4008430808"
theorem cover_1342518 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1342518 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1342518)
  decide +kernel
#print axioms cover_1342518
end Mub6.Numerical.CircleFullD0.Forest
