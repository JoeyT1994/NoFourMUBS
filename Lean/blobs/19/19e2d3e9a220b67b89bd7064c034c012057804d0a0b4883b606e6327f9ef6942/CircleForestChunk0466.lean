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
def state_273133 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 10) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 8)))
def hex_273133 : String := "4143050543420A4440050A0542444041054342440905054244070505410A430A42090740050A444005410543420A0542070740054105430505"
theorem cover_273133 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_273133 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 57) (hex := hex_273133)
  decide +kernel
#print axioms cover_273133

def state_273190 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 10) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 8)))
def hex_273190 : String := "410A430A420A444041074306420706060A"
theorem cover_273190 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_273190 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 17) (hex := hex_273190)
  decide +kernel
#print axioms cover_273190

def state_273207 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 9)))
def hex_273207 : String := "0A"
theorem cover_273207 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_273207 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_273207)
  decide +kernel
#print axioms cover_273207

def state_273208 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 4)))
def hex_273208 : String := "44404105430505410643064244060606400541054305420A05"
theorem cover_273208 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_273208 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_273208)
  decide +kernel
#print axioms cover_273208

def state_273234 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 4)))
def hex_273234 : String := "424440080A0A4408400706"
theorem cover_273234 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_273234 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 11) (hex := hex_273234)
  decide +kernel
#print axioms cover_273234

def state_273250 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 8 else (if j.val < 4 then 26 else 8)))
def hex_273250 : String := "42444041430842090808090A4408404105080A"
theorem cover_273250 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_273250 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_273250)
  decide +kernel
#print axioms cover_273250

def state_273271 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 16 else (if j.val < 4 then 27 else 16)))
def hex_273271 : String := "4041434209440940054105094209440940054105094309094143090909"
theorem cover_273271 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_273271 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_273271)
  decide +kernel
#print axioms cover_273271

def state_273302 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 44) else (if j.val < 3 then 16 else (if j.val < 4 then 27 else 17)))
def hex_273302 : String := "4344420A40050A054442400541050940054105430505420A05"
theorem cover_273302 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_273302 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_273302)
  decide +kernel
#print axioms cover_273302

def state_273327 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 45) else (if j.val < 3 then 16 else (if j.val < 4 then 27 else 17)))
def hex_273327 : String := "4344420941400808084207410A074442094140430505430909404308060942410606414005430544060540064307440606"
theorem cover_273327 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_273327 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 49) (hex := hex_273327)
  decide +kernel
#print axioms cover_273327

def state_273376 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 22) else (if j.val < 3 then 16 else (if j.val < 4 then 27 else 17)))
def hex_273376 : String := "410A430A44090A"
theorem cover_273376 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_273376 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_273376)
  decide +kernel
#print axioms cover_273376
end Mub6.Numerical.CircleFullPrototype.Forest
