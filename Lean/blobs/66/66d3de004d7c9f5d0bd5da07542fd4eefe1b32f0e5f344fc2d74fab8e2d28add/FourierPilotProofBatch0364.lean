import FourierPilotProofBatch0203

import FourierPilotProofBatch0214

import FourierPilotProofBatch0252

import FourierPilotProofBatch0257

import FourierPilotProofBatch0338

import FourierPilotProofBatch0342

import FourierPilotProofBatch0356

import FourierPilotProofBatch0357

import FourierPilotProofBatch0361

import FourierPilotProofBatch0362

import FourierPilotProofBatch0363

/- Preserved declarations from candidate module FourierPilotCircleTree003729. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003729
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![1, 1, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree003730.state FourierPilotCircleTree003865.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003730.covered FourierPilotCircleTree003865.covered
theorem root_covered : CoveredState tab physicalCarrier T R targets signs rootState := by
  have h : state = rootState := by funext j; fin_cases j <;> rfl
  rw [← h]; exact covered
#print axioms covered
#print axioms root_covered
end FourierPilotCircleTree003729


/- Preserved declarations from candidate module FourierPilotCircleTree004450. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004450
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, true]
def state : State := ![1, 1, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree004451.state FourierPilotCircleTree004522.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004451.covered FourierPilotCircleTree004522.covered
theorem root_covered : CoveredState tab physicalCarrier T R targets signs rootState := by
  have h : state = rootState := by funext j; fin_cases j <;> rfl
  rw [← h]; exact covered
#print axioms covered
#print axioms root_covered
end FourierPilotCircleTree004450


/- Preserved declarations from candidate module FourierPilotCircleTree004640. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004640
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, true]
def state : State := ![1, 1, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree004641.state FourierPilotCircleTree004742.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004641.covered FourierPilotCircleTree004742.covered
theorem root_covered : CoveredState tab physicalCarrier T R targets signs rootState := by
  have h : state = rootState := by funext j; fin_cases j <;> rfl
  rw [← h]; exact covered
#print axioms covered
#print axioms root_covered
end FourierPilotCircleTree004640


/- Preserved declarations from candidate module FourierPilotCircleTree004843. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004843
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, true]
def state : State := ![1, 1, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree004844.state FourierPilotCircleTree004945.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004844.covered FourierPilotCircleTree004945.covered
theorem root_covered : CoveredState tab physicalCarrier T R targets signs rootState := by
  have h : state = rootState := by funext j; fin_cases j <;> rfl
  rw [← h]; exact covered
#print axioms covered
#print axioms root_covered
end FourierPilotCircleTree004843


/- Preserved declarations from candidate module FourierPilotCircleTree005046. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005046
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, true, true]
def state : State := ![1, 1, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree005047.state FourierPilotCircleTree005110.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005047.covered FourierPilotCircleTree005110.covered
theorem root_covered : CoveredState tab physicalCarrier T R targets signs rootState := by
  have h : state = rootState := by funext j; fin_cases j <;> rfl
  rw [← h]; exact covered
#print axioms covered
#print axioms root_covered
end FourierPilotCircleTree005046


/- Preserved declarations from candidate module FourierPilotCircleTree005558. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005558
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, true, true]
def state : State := ![1, 1, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree005559.state FourierPilotCircleTree005636.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005559.covered FourierPilotCircleTree005636.covered
theorem root_covered : CoveredState tab physicalCarrier T R targets signs rootState := by
  have h : state = rootState := by funext j; fin_cases j <;> rfl
  rw [← h]; exact covered
#print axioms covered
#print axioms root_covered
end FourierPilotCircleTree005558


/- Preserved declarations from candidate module FourierPilotCircleCover. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleCover
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
theorem all_roots : ∀ signs, CoveredState tab physicalCarrier T R targets signs rootState := by
  intro signs
  have hs : signs = ![signs 0, signs 1, signs 2, signs 3, signs 4] := by funext j; fin_cases j <;> rfl
  rw [hs]
  cases h0 : signs 0 <;> cases h1 : signs 1 <;> cases h2 : signs 2 <;> cases h3 : signs 3 <;> cases h4 : signs 4
  · exact FourierPilotCircleTree000001.root_covered
  · exact FourierPilotCircleTree002857.root_covered
  · exact FourierPilotCircleTree001121.root_covered
  · exact FourierPilotCircleTree004593.root_covered
  · exact FourierPilotCircleTree000541.root_covered
  · exact FourierPilotCircleTree003729.root_covered
  · exact FourierPilotCircleTree001985.root_covered
  · exact FourierPilotCircleTree005173.root_covered
  · exact FourierPilotCircleTree000199.root_covered
  · exact FourierPilotCircleTree003355.root_covered
  · exact FourierPilotCircleTree001615.root_covered
  · exact FourierPilotCircleTree004843.root_covered
  · exact FourierPilotCircleTree000791.root_covered
  · exact FourierPilotCircleTree004223.root_covered
  · exact FourierPilotCircleTree002483.root_covered
  · exact FourierPilotCircleTree005371.root_covered
  · exact FourierPilotCircleTree000008.root_covered
  · exact FourierPilotCircleTree003132.root_covered
  · exact FourierPilotCircleTree001392.root_covered
  · exact FourierPilotCircleTree004640.root_covered
  · exact FourierPilotCircleTree000588.root_covered
  · exact FourierPilotCircleTree004000.root_covered
  · exact FourierPilotCircleTree002260.root_covered
  · exact FourierPilotCircleTree005180.root_covered
  · exact FourierPilotCircleTree000386.root_covered
  · exact FourierPilotCircleTree003582.root_covered
  · exact FourierPilotCircleTree001842.root_covered
  · exact FourierPilotCircleTree005046.root_covered
  · exact FourierPilotCircleTree000994.root_covered
  · exact FourierPilotCircleTree004450.root_covered
  · exact FourierPilotCircleTree002710.root_covered
  · exact FourierPilotCircleTree005558.root_covered
theorem complete_cover : CompleteUniformRayCover physicalCarrier boxes :=
  all_chart_roots_sound (by decide +kernel) (by decide +kernel) (by decide +kernel) all_roots
#print axioms all_roots
#print axioms complete_cover
end FourierPilotCircleCover
