import FourierPilotCircleTree002804
import FourierPilotCircleTree002835
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002803
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, true, false]
def state : State := ![12, 11, 8, 10, 13]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree002804.state FourierPilotCircleTree002835.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002804.covered FourierPilotCircleTree002835.covered
#print axioms covered
end FourierPilotCircleTree002803
