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
def state_2546877 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 11) else (if j.val < 3 then 8 else (if j.val < 4 then 8 else 10)))
def hex_2546877 : String := "41440542080608"
theorem cover_2546877 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2546877 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_2546877)
  decide +kernel
#print axioms cover_2546877

def state_2546884 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 8 else (if j.val < 4 then 9 else 10)))
def hex_2546884 : String := "400906"
theorem cover_2546884 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2546884 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_2546884)
  decide +kernel
#print axioms cover_2546884

def state_2546887 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 9 else (if j.val < 4 then 4 else 10)))
def hex_2546887 : String := "434041060A0606"
theorem cover_2546887 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2546887 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_2546887)
  decide +kernel
#print axioms cover_2546887

def state_2546909 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 88) else (if j.val < 3 then 32 else (if j.val < 4 then 32 else 88)))
def hex_2546909 : String := "4243E64041440643E60A44090541440643E6064443E60643E6420706434041084442E6070541440642E6064442E60642E6430A0640410644060506"
theorem cover_2546909 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2546909 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 59) (hex := hex_2546909)
  decide +kernel
#print axioms cover_2546909

def state_2546968 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 88) else (if j.val < 3 then 32 else (if j.val < 4 then 32 else 89)))
def hex_2546968 : String := "424344E60544400541070505434440054108050544400541060505"
theorem cover_2546968 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2546968 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 27) (hex := hex_2546968)
  decide +kernel
#print axioms cover_2546968

def state_2546995 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 89) else (if j.val < 3 then 32 else (if j.val < 4 then 32 else 44)))
def hex_2546995 : String := "44424341E6054140054408050543414005440A05054140054406050505"
theorem cover_2546995 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2546995 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 29) (hex := hex_2546995)
  decide +kernel
#print axioms cover_2546995

def state_2547025 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 89 else 88) else (if j.val < 3 then 32 else (if j.val < 4 then 32 else 44)))
def hex_2547025 : String := "44424340E64105440542070A404106440607064340410644060A060642434044E60707074309404441064207060707"
theorem cover_2547025 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2547025 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 47) (hex := hex_2547025)
  decide +kernel
#print axioms cover_2547025

def state_2547072 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 89 else 89) else (if j.val < 3 then 32 else (if j.val < 4 then 32 else 44)))
def hex_2547072 : String := "4442434041E6080808430A4041440642430A06060A0A42434005414442070A05054005074340050A400541444207060505"
theorem cover_2547072 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2547072 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 49) (hex := hex_2547072)
  decide +kernel
#print axioms cover_2547072
end Mub6.Numerical.CircleFullD0.Forest
