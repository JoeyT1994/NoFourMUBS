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
def state_1540381 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 14) else (if j.val < 3 then 25 else (if j.val < 4 then 9 else 20)))
def hex_1540381 : String := "414305404241430544080508410543054408050808"
theorem cover_1540381 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1540381 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 21) (hex := hex_1540381)
  decide +kernel
#print axioms cover_1540381

def state_1540403 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 28) else (if j.val < 3 then 25 else (if j.val < 4 then 9 else 21)))
def hex_1540403 : String := "43054042444105430505050505"
theorem cover_1540403 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1540403 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1540403)
  decide +kernel
#print axioms cover_1540403

def state_1540417 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 29) else (if j.val < 3 then 25 else (if j.val < 4 then 18 else 21)))
def hex_1540417 : String := "404244080744050506"
theorem cover_1540417 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1540417 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_1540417)
  decide +kernel
#print axioms cover_1540417

def state_1540429 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 29) else (if j.val < 3 then 50 else (if j.val < 4 then 19 else 42)))
def hex_1540429 : String := "430841404208080808"
theorem cover_1540429 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1540429 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1540429)
  decide +kernel
#print axioms cover_1540429

def state_1540438 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 29) else (if j.val < 3 then 50 else (if j.val < 4 then 19 else 43)))
def hex_1540438 : String := "43410540420844080708414042444305090744050542090540424408434107084109404208080844084307410740424408074408070808"
theorem cover_1540438 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1540438 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 55) (hex := hex_1540438)
  decide +kernel
#print axioms cover_1540438

def state_1540493 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 29) else (if j.val < 3 then 51 else (if j.val < 4 then 19 else 21)))
def hex_1540493 : String := "4443084140424408050505084305410540424443084105080744430541050605420805"
theorem cover_1540493 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1540493 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 35) (hex := hex_1540493)
  decide +kernel
#print axioms cover_1540493

def state_1540528 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 29) else (if j.val < 3 then 25 else (if j.val < 4 then 19 else 21)))
def hex_1540528 : String := "4208440807"
theorem cover_1540528 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1540528 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1540528)
  decide +kernel
#print axioms cover_1540528

def state_1540534 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 12 else (if j.val < 4 then 8 else 10)))
def hex_1540534 : String := "40424408414306400906060906"
theorem cover_1540534 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1540534 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1540534)
  decide +kernel
#print axioms cover_1540534

def state_1540550 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 24 else (if j.val < 4 then 9 else 20)))
def hex_1540550 : String := "430807"
theorem cover_1540550 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1540550 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_1540550)
  decide +kernel
#print axioms cover_1540550

def state_1540554 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 24 else (if j.val < 4 then 18 else 21)))
def hex_1540554 : String := "41404244430807430A41400A424405050A050A42440843084142084044080A08084408430641400A06064042050906"
theorem cover_1540554 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1540554 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 47) (hex := hex_1540554)
  decide +kernel
#print axioms cover_1540554

def state_1540603 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 30) else (if j.val < 3 then 24 else (if j.val < 4 then 19 else 21)))
def hex_1540603 : String := "424405430505440743410A0505"
theorem cover_1540603 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1540603 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_1540603)
  decide +kernel
#print axioms cover_1540603

def state_1540617 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 30) else (if j.val < 3 then 48 else (if j.val < 4 then 19 else 21)))
def hex_1540617 : String := "440743414240050840440505080505"
theorem cover_1540617 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1540617 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_1540617)
  decide +kernel
#print axioms cover_1540617
end Mub6.Numerical.CircleFullD0.Forest
