import LinearFirstOrderPdesTheoremCanonicalLaneLean.CauchyData

namespace HautevilleHouse
namespace LinearFirstOrderPdesTheoremCanonicalLaneLean

structure SolutionRepresentationPackage {C : CharacteristicMethodPackage} {CM : CharacteristicEvidence C} {CD : CauchyDataPackage CM} (CE : CauchyDataEvidence CD) where
  explicitFormula : Type
  integralForm : Type
  wellDefined : Prop
  smoothness : Prop

structure SolutionRepresentationEvidence {C : CharacteristicMethodPackage} {CM : CharacteristicEvidence C} {CD : CauchyDataPackage CM} {CE : CauchyDataEvidence CD} (SR : SolutionRepresentationPackage CE) where
  explicitFormulaClosed : SR.explicitFormula
  integralFormClosed : SR.integralForm
  wellDefinedClosed : SR.wellDefined
  smoothnessClosed : SR.smoothness

def SolutionRepresentationClosed {C : CharacteristicMethodPackage} {CM : CharacteristicEvidence C} {CD : CauchyDataPackage CM} {CE : CauchyDataEvidence CD} (SR : SolutionRepresentationPackage CE) : Prop :=
  SR.explicitFormula ∧ SR.integralForm ∧ SR.wellDefined ∧ SR.smoothness

theorem solution_representation_closed_from_evidence {C : CharacteristicMethodPackage} {CM : CharacteristicEvidence C} {CD : CauchyDataPackage CM} {CE : CauchyDataEvidence CD} (SR : SolutionRepresentationPackage CE) (E : SolutionRepresentationEvidence SR) :
    SolutionRepresentationClosed SR := by
  exact And.intro E.explicitFormulaClosed
    (And.intro E.integralFormClosed
      (And.intro E.wellDefinedClosed E.smoothnessClosed))

end LinearFirstOrderPdesTheoremCanonicalLaneLean
end HautevilleHouse