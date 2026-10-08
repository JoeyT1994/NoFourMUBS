import FourierPilotCircleTree001735
import FourierPilotCircleTree001786
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001734
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, false]
def state : State := ![6, 2, 2, 2, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree001735.state FourierPilotCircleTree001786.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001735.covered FourierPilotCircleTree001786.covered
#print axioms covered
end FourierPilotCircleTree001734
