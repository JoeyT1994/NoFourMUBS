import FourierPilotCircleTree001795
import FourierPilotCircleTree001800
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001794
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, false]
def state : State := ![7, 4, 5, 5, 5]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree001795.state FourierPilotCircleTree001800.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001795.covered FourierPilotCircleTree001800.covered
#print axioms covered
end FourierPilotCircleTree001794
