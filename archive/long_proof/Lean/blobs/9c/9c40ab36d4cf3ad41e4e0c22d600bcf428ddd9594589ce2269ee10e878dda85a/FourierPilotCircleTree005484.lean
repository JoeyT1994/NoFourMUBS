import FourierPilotCircleTree005485
import FourierPilotCircleTree005486
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005484
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, true]
def state : State := ![24, 9, 8, 8, 26]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree005485.state FourierPilotCircleTree005486.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005485.covered FourierPilotCircleTree005486.covered
#print axioms covered
end FourierPilotCircleTree005484
