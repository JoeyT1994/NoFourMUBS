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
def state_1620136 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 24) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 8)))
def hex_1620136 : String := "420743404408410643060744080607"
theorem cover_1620136 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1620136 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_1620136)
  decide +kernel
#print axioms cover_1620136

def state_1620152 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 24 else (if j.val < 4 then 12 else 8)))
def hex_1620152 : String := "4340070707"
theorem cover_1620152 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1620152 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1620152)
  decide +kernel
#print axioms cover_1620152

def state_1620162 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 50) else (if j.val < 3 then 25 else (if j.val < 4 then 48 else 16)))
def hex_1620162 : String := "424007074044434105420505054309084443410842080808434106420640080608"
theorem cover_1620162 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1620162 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 33) (hex := hex_1620162)
  decide +kernel
#print axioms cover_1620162

def state_1620196 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 51) else (if j.val < 3 then 50 else (if j.val < 4 then 48 else 16)))
def hex_1620196 : String := "400707"
theorem cover_1620196 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1620196 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_1620196)
  decide +kernel
#print axioms cover_1620196

def state_1620200 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 51) else (if j.val < 3 then 51 else (if j.val < 4 then 48 else 16)))
def hex_1620200 : String := "444341420A050A0A0A"
theorem cover_1620200 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1620200 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1620200)
  decide +kernel
#print axioms cover_1620200

def state_1620212 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 102) else (if j.val < 3 then 51 else (if j.val < 4 then 96 else 32)))
def hex_1620212 : String := "424044434107070707444341060707074044434105050543090A44434108D308434142060842400906400944D3094108420708"
theorem cover_1620212 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1620212 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 51) (hex := hex_1620212)
  decide +kernel
#print axioms cover_1620212

def state_1620263 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 103) else (if j.val < 3 then 51 else (if j.val < 4 then 96 else 32)))
def hex_1620263 : String := "42400A44434207D30707404443414209050A0A0A44D34341420A400944D309420A0A410A0A"
theorem cover_1620263 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1620263 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 37) (hex := hex_1620263)
  decide +kernel
#print axioms cover_1620263

def state_1620300 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 51) else (if j.val < 3 then 51 else (if j.val < 4 then 97 else 32)))
def hex_1620300 : String := "414207084207400A44434107070707"
theorem cover_1620300 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1620300 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_1620300)
  decide +kernel
#print axioms cover_1620300

def state_1620315 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 51) else (if j.val < 3 then 51 else (if j.val < 4 then 48 else 33)))
def hex_1620315 : String := "4341424007064009444341060941080A43060A420A400944434109090A0A4142070A0A"
theorem cover_1620315 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1620315 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 35) (hex := hex_1620315)
  decide +kernel
#print axioms cover_1620315

def state_1620350 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 49 else 16)))
def hex_1620350 : String := "41084207400707"
theorem cover_1620350 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1620350 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1620350)
  decide +kernel
#print axioms cover_1620350

def state_1620357 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 24 else 17)))
def hex_1620357 : String := "434142064009444306410607064207400944434109090A09410707"
theorem cover_1620357 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1620357 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 27) (hex := hex_1620357)
  decide +kernel
#print axioms cover_1620357

def state_1620387 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 50) else (if j.val < 3 then 25 else (if j.val < 4 then 48 else 16)))
def hex_1620387 : String := "420640444306080606"
theorem cover_1620387 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1620387 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1620387)
  decide +kernel
#print axioms cover_1620387

def state_1620397 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 51) else (if j.val < 3 then 50 else (if j.val < 4 then 48 else 16)))
def hex_1620397 : String := "400706"
theorem cover_1620397 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1620397 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_1620397)
  decide +kernel
#print axioms cover_1620397
end Mub6.Numerical.CircleFullD0.Forest
