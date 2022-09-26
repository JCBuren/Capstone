import SmallAnimalsCard from "./SmallAnimalsCard"


function SmallAnimals({petsToMap}) {

const sortPets = petsToMap.filter(SmallAnimals => SmallAnimals.animal_type === 'Small Animal')

// console.log("dogs", dogsToMap)

    return(<>
    
    {sortPets.map(
        (eachPet) => {
            return(<SmallAnimalsCard key={eachPet} animalProp={eachPet}/>)
        }
    )}

    </>)



}

export default SmallAnimals