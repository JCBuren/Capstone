function DogCard(props) {

    console.log("Props please", props.dogProp)


    const confirmSubmit = ("Request Submitted, please check your email")

return(
<>
    <div >

            <h1>{props.dogProp.name}</h1>  
            <h3>Breed: {props.dogProp.breed}</h3>
            <img src={props.dogProp.image_url}/>
            <h3>Gender: {props.dogProp.gender}</h3>
            <h3>Age: {props.dogProp.age}</h3>
            <h2>Adoption Fee ${props.dogProp.adoption_fee}</h2>
            <button onClick={(synthEvent) => {
        synthEvent.preventDefault()

        alert(confirmSubmit)
    }}>Schedule Visit!</button>
      

    </div>

    </>


    )
}

export default DogCard