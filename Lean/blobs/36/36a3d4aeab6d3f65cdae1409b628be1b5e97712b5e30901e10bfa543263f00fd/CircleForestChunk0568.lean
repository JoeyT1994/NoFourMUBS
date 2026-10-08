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
def state_375207 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 45) else (if j.val < 3 then 19 else (if j.val < 4 then 44 else 48)))
def hex_375207 : String := "404244410543054005060544090542060A"
theorem cover_375207 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_375207 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_375207)
  decide +kernel
#print axioms cover_375207

def state_375225 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 45) else (if j.val < 3 then 19 else (if j.val < 4 then 45 else 48)))
def hex_375225 : String := "42449B4143054005054340050540424441050A0508420644410543054007060544414308084340090A40429B07429B084108430808"
theorem cover_375225 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_375225 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 53) (hex := hex_375225)
  decide +kernel
#print axioms cover_375225

def state_375278 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 45) else (if j.val < 3 then 19 else (if j.val < 4 then 45 else 48)))
def hex_375278 : String := "424441430642070A430642409B06409B0641060644410A430A40429B0A0A410A4306404244410606060806"
theorem cover_375278 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_375278 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 43) (hex := hex_375278)
  decide +kernel
#print axioms cover_375278

def state_375321 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 22) else (if j.val < 3 then 19 else (if j.val < 4 then 22 else 49)))
def hex_375321 : String := "414305084306404244410505050842064441050605"
theorem cover_375321 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_375321 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_375321)
  decide +kernel
#print axioms cover_375321

def state_375342 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 22) else (if j.val < 3 then 9 else (if j.val < 4 then 22 else 25)))
def hex_375342 : String := "40054205410506"
theorem cover_375342 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_375342 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_375342)
  decide +kernel
#print axioms cover_375342

def state_375351 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 22) else (if j.val < 3 then 9 else (if j.val < 4 then 23 else 24)))
def hex_375351 : String := "42434441400A090A0A094344410842400A444341420A080A0A43410807080808444106420A0608"
theorem cover_375351 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_375351 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 39) (hex := hex_375351)
  decide +kernel
#print axioms cover_375351

def state_375391 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 22) else (if j.val < 3 then 18 else (if j.val < 4 then 23 else 24)))
def hex_375391 : String := "09"
theorem cover_375391 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_375391 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_375391)
  decide +kernel
#print axioms cover_375391

def state_375395 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 44) else (if j.val < 3 then 19 else (if j.val < 4 then 46 else 48)))
def hex_375395 : String := "40424443410740080709080842094443080808"
theorem cover_375395 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_375395 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_375395)
  decide +kernel
#print axioms cover_375395

def state_375416 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 45) else (if j.val < 3 then 38 else (if j.val < 4 then 46 else 48)))
def hex_375416 : String := "44434140420908420944439B090840420A44439B0A439B0A420944439B09439B09094341400809404209080909"
theorem cover_375416 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_375416 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 45) (hex := hex_375416)
  decide +kernel
#print axioms cover_375416
end Mub6.Numerical.CircleFullPrototype.Forest
