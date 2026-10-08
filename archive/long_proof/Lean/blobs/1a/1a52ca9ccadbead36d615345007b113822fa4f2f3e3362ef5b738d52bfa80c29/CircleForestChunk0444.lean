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
def state_182203 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 49) else (if j.val < 3 then 50 else (if j.val < 4 then 60 else 30)))
def hex_182203 : String := "44410A42404344410796410796440A41069643070A4043440A4107960A0A414206074240434441064206070606430706404344070744410642060806430706"
theorem cover_182203 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_182203 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 63) (hex := hex_182203)
  decide +kernel
#print axioms cover_182203

def state_182266 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 49) else (if j.val < 3 then 50 else (if j.val < 4 then 61 else 30)))
def hex_182266 : String := "44410A4240440A060A0A06"
theorem cover_182266 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_182266 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_182266)
  decide +kernel
#print axioms cover_182266

def state_182277 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 49) else (if j.val < 3 then 51 else (if j.val < 4 then 30 else 30)))
def hex_182277 : String := "40434409080943440A410A42400843070A080A"
theorem cover_182277 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_182277 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 19) (hex := hex_182277)
  decide +kernel
#print axioms cover_182277

def state_182296 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 24) else (if j.val < 3 then 25 else (if j.val < 4 then 30 else 31)))
def hex_182296 : String := "414205400606424006064008430806"
theorem cover_182296 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_182296 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_182296)
  decide +kernel
#print axioms cover_182296

def state_182311 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 24) else (if j.val < 3 then 25 else (if j.val < 4 then 31 else 15)))
def hex_182311 : String := "44410A424006060906"
theorem cover_182311 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_182311 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_182311)
  decide +kernel
#print axioms cover_182311

def state_182322 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 25) else (if j.val < 3 then 24 else (if j.val < 4 then 15 else 15)))
def hex_182322 : String := "4344420A41400A4344420A41400A430A444207070A0A0A44420707060A0A444206414006060706"
theorem cover_182322 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_182322 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 14) (count := 39) (hex := hex_182322)
  decide +kernel
#print axioms cover_182322

def state_182364 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 48 else (if j.val < 4 then 30 else 30)))
def hex_182364 : String := "4140434442054105090505430906400A09"
theorem cover_182364 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_182364 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_182364)
  decide +kernel
#print axioms cover_182364

def state_182386 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 50) else (if j.val < 3 then 98 else (if j.val < 4 then 60 else 60)))
def hex_182386 : String := "4140430A05430905400A09"
theorem cover_182386 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_182386 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 11) (hex := hex_182386)
  decide +kernel
#print axioms cover_182386

def state_182397 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 50) else (if j.val < 3 then 99 else (if j.val < 4 then 60 else 60)))
def hex_182397 : String := "4140434442414005050A960A444241050796420596434442414043090508099642099644424105404407050896420596400A434442099609444207960A"
theorem cover_182397 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_182397 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 61) (hex := hex_182397)
  decide +kernel
#print axioms cover_182397
end Mub6.Numerical.CircleFullPrototype.Forest
