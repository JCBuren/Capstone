import DogCard from "./DogCard";


function Dog({petsToMap}) {

const sortPets = petsToMap.filter(Dog => Dog.animal_type === 'Dog')

// console.log("dogs", dogsToMap)

    return(<>
    
    {sortPets.map(
        (eachPet) => {
            return(<DogCard key={eachPet} dogProp={eachPet}/>)
        }
    )}

    </>)



}

export default Dog