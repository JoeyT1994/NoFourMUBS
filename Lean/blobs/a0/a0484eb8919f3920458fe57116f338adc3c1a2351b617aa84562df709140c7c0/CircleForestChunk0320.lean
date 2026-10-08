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
def state_152131 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 23) else (if j.val < 3 then 23 else (if j.val < 4 then 27 else 13)))
def hex_152131 : String := "444109424006060641424043444106060A4409410942074043080709430A09404344060809094240430A070A4043440608440741424007070807430609"
theorem cover_152131 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_152131 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 61) (hex := hex_152131)
  decide +kernel
#print axioms cover_152131

def state_152193 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 10) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 6)))
def hex_152193 : String := "424344430644060507440805430744094240090509"
theorem cover_152193 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_152193 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 21) (hex := hex_152193)
  decide +kernel
#print axioms cover_152193

def state_152214 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 11) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 6)))
def hex_152214 : String := "42430A440841400A050A43440641070644410906414240430A440905430A0940090942400A0A404306440641090A430609"
theorem cover_152214 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_152214 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 49) (hex := hex_152214)
  decide +kernel
#print axioms cover_152214

def state_152265 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 7)))
def hex_152265 : String := "4243074440050505430744404241074307440505070707"
theorem cover_152265 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_152265 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 23) (hex := hex_152265)
  decide +kernel
#print axioms cover_152265

def state_152289 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 6 else 7)))
def hex_152289 : String := "430A444041420A430A4405050A0A0A"
theorem cover_152289 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_152289 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_152289)
  decide +kernel
#print axioms cover_152289

def state_152305 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 12 else 7)))
def hex_152305 : String := "444041074209070A07"
theorem cover_152305 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_152305 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_152305)
  decide +kernel
#print axioms cover_152305

def state_152318 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 22 else (if j.val < 4 then 13 else 14)))
def hex_152318 : String := "43444041070A0A07444041420544430705074244430A050A44434041074209080A40064105420506084105420544430A4041050A05084041074206060A"
theorem cover_152318 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_152318 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 61) (hex := hex_152318)
  decide +kernel
#print axioms cover_152318

def state_152379 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 23 else (if j.val < 4 then 13 else 14)))
def hex_152379 : String := "43074440080808"
theorem cover_152379 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_152379 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_152379)
  decide +kernel
#print axioms cover_152379
end Mub6.Numerical.CircleFullPrototype.Forest
