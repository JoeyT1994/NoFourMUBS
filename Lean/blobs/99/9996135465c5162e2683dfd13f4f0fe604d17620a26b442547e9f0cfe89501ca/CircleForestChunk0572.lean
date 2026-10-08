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
def state_376191 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 46) else (if j.val < 3 then 19 else (if j.val < 4 then 46 else 49)))
def hex_376191 : String := "40420A0742094143444007060609430707"
theorem cover_376191 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_376191 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_376191)
  decide +kernel
#print axioms cover_376191

def state_376208 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 46) else (if j.val < 3 then 19 else (if j.val < 4 then 47 else 24)))
def hex_376208 : String := "44400A420943444105050909400A09"
theorem cover_376208 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_376208 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_376208)
  decide +kernel
#print axioms cover_376208

def state_376223 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 47) else (if j.val < 3 then 19 else (if j.val < 4 then 23 else 24)))
def hex_376223 : String := "43444007420A4144430505070740074209070A"
theorem cover_376223 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_376223 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 19) (hex := hex_376223)
  decide +kernel
#print axioms cover_376223

def state_376242 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 23) else (if j.val < 3 then 9 else (if j.val < 4 then 23 else 25)))
def hex_376242 : String := "40420A074209414344400706060907"
theorem cover_376242 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_376242 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_376242)
  decide +kernel
#print axioms cover_376242

def state_376257 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 11) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 13)))
def hex_376257 : String := "4042410543050A410507424105064143050843064440420A07420641060606"
theorem cover_376257 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_376257 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 31) (hex := hex_376257)
  decide +kernel
#print axioms cover_376257

def state_376288 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 7)))
def hex_376288 : String := "410543054005420505"
theorem cover_376288 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_376288 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_376288)
  decide +kernel
#print axioms cover_376288

def state_376298 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 3)))
def hex_376298 : String := "444142050A424440430909434105444240050A08054108444240090A080805444009084043090808410542054005430505"
theorem cover_376298 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_376298 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 49) (hex := hex_376298)
  decide +kernel
#print axioms cover_376298

def state_376349 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 10) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 6)))
def hex_376349 : String := "4243084440084308080808"
theorem cover_376349 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_376349 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_376349)
  decide +kernel
#print axioms cover_376349

def state_376362 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 10 else 6)))
def hex_376362 : String := "4440074144424308090808444243094007410A07094243400506070708"
theorem cover_376362 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_376362 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 29) (hex := hex_376362)
  decide +kernel
#print axioms cover_376362

def state_376393 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 12)))
def hex_376393 : String := "410807"
theorem cover_376393 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_376393 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_376393)
  decide +kernel
#print axioms cover_376393

def state_376397 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 22) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 12)))
def hex_376397 : String := "4344424008444108430940080A08080844424008434441084008424443080808080844410840084243080808080808"
theorem cover_376397 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_376397 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 47) (hex := hex_376397)
  decide +kernel
#print axioms cover_376397
end Mub6.Numerical.CircleFullPrototype.Forest
