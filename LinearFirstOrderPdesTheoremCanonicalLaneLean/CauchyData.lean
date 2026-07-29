import LinearFirstOrderPdesTheoremCanonicalLaneLean.CharacteristicMethod

namespace HautevilleHouse
namespace LinearFirstOrderPdesTheoremCanonicalLaneLean

structure CauchyDataPackage {C : CharacteristicMethodPackage} (CM : CharacteristicEvidence C) where
  initialSurface : Type
  initialData : Type
  nonCharacteristicCondition : Prop
  uniqueSolution : Prop

structure CauchyDataEvidence {C : CharacteristicMethodPackage} {CM : CharacteristicEvidence C} (CD : CauchyDataPackage CM) where
  initialSurfaceClosed : CD.initialSurface
  initialDataClosed : CD.initialData
  nonCharacteristicConditionClosed : CD.nonCharacteristicCondition
  uniqueSolutionClosed : CD.uniqueSolution

def CauchyDataClosed {C : CharacteristicMethodPackage} {CM : CharacteristicEvidence C} (CD : CauchyDataPackage CM) : Prop :=
  CD.initialSurface ∧ CD.initialData ∧ CD.nonCharacteristicCondition ∧ CD.uniqueSolution

theorem cauchy_data_closed_from_evidence {C : CharacteristicMethodPackage} {CM : CharacteristicEvidence C} (CD : CauchyDataPackage CM) (E : CauchyDataEvidence CD) :
    CauchyDataClosed CD := by
  exact And.intro E.initialSurfaceClosed
    (And.intro E.initialDataClosed
      (And.intro E.nonCharacteristicConditionClosed E.uniqueSolutionClosed))

end LinearFirstOrderPdesTheoremCanonicalLaneLean
end HautevilleHouse