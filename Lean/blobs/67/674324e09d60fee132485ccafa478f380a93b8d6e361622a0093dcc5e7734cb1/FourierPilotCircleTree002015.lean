import FourierPilotCircleTree002016
import FourierPilotCircleTree002017
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002015
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, true, false]
def state : State := ![9, 14, 8, 22, 12]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree002016.state FourierPilotCircleTree002017.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002016.covered FourierPilotCircleTree002017.covered
#print axioms covered
end FourierPilotCircleTree002015
