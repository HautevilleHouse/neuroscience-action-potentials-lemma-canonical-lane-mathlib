import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceActionPotentialsLemmaCanonicalLaneLean

structure HodgkinHuxleyAdmittedObject where
  membranePotential : Real → Real
  gatingVariables : String
  ionicCurrents : Prop
  actionPotentialGenerated : Prop

structure HodgkinHuxleyPackage where
  sodiumChannelActivation : Prop
  sodiumChannelInactivation : Prop
  potassiumChannelActivation : Prop
  leakCurrent : Prop
  membraneCapacitance : Prop

structure HodgkinHuxleyEvidence (H : HodgkinHuxleyPackage) where
  sodiumChannelActivationClosed : H.sodiumChannelActivation
  sodiumChannelInactivationClosed : H.sodiumChannelInactivation
  potassiumChannelActivationClosed : H.potassiumChannelActivation
  leakCurrentClosed : H.leakCurrent
  membraneCapacitanceClosed : H.membraneCapacitance

def HodgkinHuxleyClosed (H : HodgkinHuxleyPackage) : Prop :=
  H.sodiumChannelActivation ∧ H.sodiumChannelInactivation ∧
  H.potassiumChannelActivation ∧ H.leakCurrent ∧ H.membraneCapacitance

theorem hodgkin_huxley_closed_from_evidence (H : HodgkinHuxleyPackage)
    (E : HodgkinHuxleyEvidence H) : HodgkinHuxleyClosed H := by
  exact And.intro E.sodiumChannelActivationClosed
    (And.intro E.sodiumChannelInactivationClosed
      (And.intro E.potassiumChannelActivationClosed
        (And.intro E.leakCurrentClosed E.membraneCapacitanceClosed)))

end NeuroscienceActionPotentialsLemmaCanonicalLaneLean
end HautevilleHouse
