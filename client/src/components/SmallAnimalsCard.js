function SmallAnimalsCard(props) {

    console.log("Props please", props.animalProp)
    const confirmSubmit = ("Request Submitted, please check your email")
return(

    <div>

            <h1>{props.animalProp.name}</h1>  
            <h3>Breed: {props.animalProp.breed}</h3>
            <img src={props.animalProp.image_url}/>
            <h3>Gender: {props.animalProp.gender}</h3>
            <h3>Age: {props.animalProp.age}</h3>
            <h2>Adoption Fee ${props.animalProp.adoption_fee}</h2>
            <button onClick={(synthEvent) => {
        synthEvent.preventDefault()

        alert(confirmSubmit)
    }}>Schedule Visit!</button>
    

    </div>




    )
}

export default SmallAnimalsCard