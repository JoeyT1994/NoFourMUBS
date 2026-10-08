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
def state_1524253 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 57) else (if j.val < 3 then 45 else (if j.val < 4 then 33 else 44)))
def hex_1524253 : String := "424441430706434042444106430A06060A42444107430740420606070707400642094441064307060641074307400607444107430740060707"
theorem cover_1524253 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1524253 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 57) (hex := hex_1524253)
  decide +kernel
#print axioms cover_1524253

def state_1524310 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 57) else (if j.val < 3 then 45 else (if j.val < 4 then 33 else 44)))
def hex_1524310 : String := "424441074307090707"
theorem cover_1524310 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1524310 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1524310)
  decide +kernel
#print axioms cover_1524310

def state_1524319 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 28) else (if j.val < 3 then 45 else (if j.val < 4 then 16 else 45)))
def hex_1524319 : String := "07"
theorem cover_1524319 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1524319 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1524319)
  decide +kernel
#print axioms cover_1524319

def state_1524320 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 28) else (if j.val < 3 then 22 else (if j.val < 4 then 16 else 22)))
def hex_1524320 : String := "42444109434042090709090707"
theorem cover_1524320 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1524320 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1524320)
  decide +kernel
#print axioms cover_1524320

def state_1524333 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 22 else (if j.val < 4 then 17 else 22)))
def hex_1524333 : String := "40424441094340420909090909444109434042440606440606420944090740060941064340080709420909"
theorem cover_1524333 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1524333 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 43) (hex := hex_1524333)
  decide +kernel
#print axioms cover_1524333

def state_1524387 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 116) else (if j.val < 3 then 88 else (if j.val < 4 then 64 else 88)))
def hex_1524387 : String := "83"
theorem cover_1524387 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1524387 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1524387)
  decide +kernel
#print axioms cover_1524387

def state_1524389 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 192 else 116) else (if j.val < 3 then 88 else (if j.val < 4 then 65 else 88)))
def hex_1524389 : String := "4244074143834005090544414383400742074407410907074143834042050542094441090509438305"
theorem cover_1524389 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1524389 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 41) (hex := hex_1524389)
  decide +kernel
#print axioms cover_1524389

def state_1524430 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 116) else (if j.val < 3 then 88 else (if j.val < 4 then 65 else 88)))
def hex_1524430 : String := "42440A0A4441438340420944080909438340070A4143830943834042054405050A"
theorem cover_1524430 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1524430 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 33) (hex := hex_1524430)
  decide +kernel
#print axioms cover_1524430

def state_1524463 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 117) else (if j.val < 3 then 88 else (if j.val < 4 then 32 else 88)))
def hex_1524463 : String := "43404244060544060606404205440505420744064143060505"
theorem cover_1524463 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1524463 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_1524463)
  decide +kernel
#print axioms cover_1524463
end Mub6.Numerical.CircleFullD0.Forest
