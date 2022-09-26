import CatCard from "./CatCard";



function Cat({petsToMap}) {

const sortPets = petsToMap.filter(Cat => Cat.animal_type === 'Cat')


    return(<>
    
    {sortPets.map(
        (eachPet) => {
            return(<CatCard key={eachPet} catProp={eachPet}/>)
        }
    )}

    </>)



}

export default Cat