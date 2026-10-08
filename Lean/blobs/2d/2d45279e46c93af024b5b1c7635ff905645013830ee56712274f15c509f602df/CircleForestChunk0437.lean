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
def state_180491 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 99) else (if j.val < 3 then 100 else (if j.val < 4 then 59 else 60)))
def hex_180491 : String := "43074441074240430796074043069607410742404307960707"
theorem cover_180491 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_180491 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_180491)
  decide +kernel
#print axioms cover_180491

def state_180516 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 99) else (if j.val < 3 then 101 else (if j.val < 4 then 59 else 60)))
def hex_180516 : String := "404344060844410806084307444107420705410708"
theorem cover_180516 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_180516 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 21) (hex := hex_180516)
  decide +kernel
#print axioms cover_180516

def state_180537 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 49) else (if j.val < 3 then 50 else (if j.val < 4 then 59 else 61)))
def hex_180537 : String := "4142404307050707424043080843074441074207070808"
theorem cover_180537 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_180537 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_180537)
  decide +kernel
#print axioms cover_180537

def state_180560 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 49) else (if j.val < 3 then 50 else (if j.val < 4 then 29 else 30)))
def hex_180560 : String := "43074441074207074107420707"
theorem cover_180560 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_180560 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_180560)
  decide +kernel
#print axioms cover_180560

def state_180573 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 49) else (if j.val < 3 then 51 else (if j.val < 4 then 29 else 30)))
def hex_180573 : String := "404344070744414207074240084305080508430744410742070507"
theorem cover_180573 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_180573 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 27) (hex := hex_180573)
  decide +kernel
#print axioms cover_180573

def state_180600 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 24) else (if j.val < 3 then 25 else (if j.val < 4 then 29 else 31)))
def hex_180600 : String := "4142070742404308444108080843074407064008430708"
theorem cover_180600 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_180600 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_180600)
  decide +kernel
#print axioms cover_180600

def state_180624 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 24 else (if j.val < 4 then 14 else 15)))
def hex_180624 : String := "40430A44420A0A0A4309444209414043094442094140430A44420A41400A430A960A0A430944420941404309960909090A0A090909"
theorem cover_180624 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_180624 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 18) (count := 53) (hex := hex_180624)
  decide +kernel
#print axioms cover_180624

def state_180678 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 14 else 15)))
def hex_180678 : String := "4344060A444142400A430A444142400A430A4441420A06060A40084305080A0A4008430508420A050A"
theorem cover_180678 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_180678 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 15) (count := 41) (hex := hex_180678)
  decide +kernel
#print axioms cover_180678

def state_180720 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 28 else 15)))
def hex_180720 : String := "44414240060905054142090505"
theorem cover_180720 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_180720 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_180720)
  decide +kernel
#print axioms cover_180720

def state_180738 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 50) else (if j.val < 3 then 50 else (if j.val < 4 then 58 else 30)))
def hex_180738 : String := "4406414209080A"
theorem cover_180738 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_180738 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_180738)
  decide +kernel
#print axioms cover_180738
end Mub6.Numerical.CircleFullPrototype.Forest
