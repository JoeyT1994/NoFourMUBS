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
def state_164231 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 12) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 7)))
def hex_164231 : String := "434441424344060A4409400941090A4306094243060A43060941420A080A444109420709414240430A06430A0509420A40430807430807"
theorem cover_164231 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_164231 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 55) (hex := hex_164231)
  decide +kernel
#print axioms cover_164231

def state_164286 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 7)))
def hex_164286 : String := "4043440908094344090809"
theorem cover_164286 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_164286 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 11) (hex := hex_164286)
  decide +kernel
#print axioms cover_164286

def state_164297 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 13) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 7)))
def hex_164297 : String := "4240430A07430A440707404344410505050505"
theorem cover_164297 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_164297 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 19) (hex := hex_164297)
  decide +kernel
#print axioms cover_164297

def state_164316 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 3)))
def hex_164316 : String := "43444143060906410843400A0A40084205084409410940424308050809"
theorem cover_164316 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_164316 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 29) (hex := hex_164316)
  decide +kernel
#print axioms cover_164316

def state_164346 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 3)))
def hex_164346 : String := "434442430644060A060A444207444009094007410507420A4041430A05070A"
theorem cover_164346 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_164346 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 31) (hex := hex_164346)
  decide +kernel
#print axioms cover_164346

def state_164377 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 3)))
def hex_164377 : String := "4344430644064009060A44094041424344400905050509420A430A09414205090A"
theorem cover_164377 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_164377 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 33) (hex := hex_164377)
  decide +kernel
#print axioms cover_164377

def state_164416 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
def hex_164416 : String := "414243440607440707084207430507"
theorem cover_164416 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_164416 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_164416)
  decide +kernel
#print axioms cover_164416

def state_164431 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
def hex_164431 : String := "4142434405404405070544404305080540074344050708430544054008424305070542430544054007414305080543444005410507054405400705"
theorem cover_164431 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_164431 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 59) (hex := hex_164431)
  decide +kernel
#print axioms cover_164431
end Mub6.Numerical.CircleFullPrototype.Forest
