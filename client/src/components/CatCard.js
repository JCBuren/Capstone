function CatCard(props) {

    console.log("Props please", props.catProp)
    const confirmSubmit = ("Request Submitted, please check your email")
return(

    <div>

            <h1>{props.catProp.name}</h1>  
            <h3>Breed: {props.catProp.breed}</h3>
            <img src={props.catProp.image_url}/>
            <h3>Gender: {props.catProp.gender}</h3>
            <h3>Age: {props.catProp.age}</h3>
            <h2>Adoption Fee ${props.catProp.adoption_fee}</h2>
            <button onClick={(synthEvent) => {
        synthEvent.preventDefault()

        alert(confirmSubmit)
    }}>Schedule Visit!</button>
    

    </div>




    )
}

export default CatCard