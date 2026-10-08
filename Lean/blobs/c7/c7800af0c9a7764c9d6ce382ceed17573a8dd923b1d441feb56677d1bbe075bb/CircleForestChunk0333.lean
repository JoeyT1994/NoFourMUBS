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
def state_155286 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 15) else (if j.val < 3 then 8 else (if j.val < 4 then 12 else 8)))
def hex_155286 : String := "43404106420506064041424443060A0A4406064244430740410A05070544430640420A06064306400A064142090642074407430609"
theorem cover_155286 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_155286 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 53) (hex := hex_155286)
  decide +kernel
#print axioms cover_155286

def state_155339 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 15) else (if j.val < 3 then 8 else (if j.val < 4 then 12 else 9)))
def hex_155339 : String := "4340440605064044410A050509"
theorem cover_155339 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_155339 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_155339)
  decide +kernel
#print axioms cover_155339

def state_155352 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 4)))
def hex_155352 : String := "444306404241064406060606430640424406060606"
theorem cover_155352 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_155352 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_155352)
  decide +kernel
#print axioms cover_155352

def state_155374 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 14) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 4)))
def hex_155374 : String := "4244400A080A44400A4305050A"
theorem cover_155374 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_155374 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_155374)
  decide +kernel
#print axioms cover_155374

def state_155388 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 15) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 4)))
def hex_155388 : String := "444043410A4244080A44400A4342084106440706080A0A4341084208440843090808400A430909"
theorem cover_155388 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_155388 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 39) (hex := hex_155388)
  decide +kernel
#print axioms cover_155388

def state_155428 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 8)))
def hex_155428 : String := "404342410A44400A43064208050A41064440060506420A0A434241440506444342070508430642084006064105440506420805"
theorem cover_155428 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_155428 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 51) (hex := hex_155428)
  decide +kernel
#print axioms cover_155428

def state_155479 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 9)))
def hex_155479 : String := "400A4342444106430642090A09440606420A0A"
theorem cover_155479 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_155479 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 19) (hex := hex_155479)
  decide +kernel
#print axioms cover_155479

def state_155498 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 5)))
def hex_155498 : String := "400A4344410A420543060A080A"
theorem cover_155498 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_155498 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_155498)
  decide +kernel
#print axioms cover_155498

def state_155511 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 2)))
def hex_155511 : String := "44400A410A420A4344400A080A07400A0A"
theorem cover_155511 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_155511 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 17) (hex := hex_155511)
  decide +kernel
#print axioms cover_155511
end Mub6.Numerical.CircleFullPrototype.Forest
