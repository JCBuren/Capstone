import { useState } from 'react'


function NewUser (props){
    //console.log("test to see if it works")
    const [userName, setUserName] = useState("")
    const [userPassword, setUserPassword] = useState("")
    const [userUsername, setUserUsername] = useState("")
    const [userEmail, setUserEmail] = useState("")
    const [userFavoriteAnimal, setUserFavoriteAnimal] = useState("")
    

    const confirmSubmit = "New Account Created!"

    
    function functionToAddNewUser(newUser) {

        fetch("/users", {
        method: "POST",
        headers: {"Content-Type": "application/json"},
        body: JSON.stringify(newUser),
    });
    }

        
    return(
        <form className='form' onSubmit={ (synthEvent) =>{
            synthEvent.preventDefault()
        
        let newUser={
            name: userName,
            email: userEmail,
            password: userPassword,
            username: userUsername,
            favorite_animal: userFavoriteAnimal,
        }

        
        functionToAddNewUser(newUser)

        alert (confirmSubmit)
    }}>
            
            
        <h4> Sign up for an account! </h4>

        <p className='field required'>
        <label className='label'>Full Name</label>
        <input className='text-input' type="text" placeholder='Full Name' value={userName} onChange={(synthEvent)=>{setUserName(synthEvent.target.value)}}/>
        </p>

        <p className='field required half'>
            <label className='label'>Email Address</label>
        <input className='text-input' type="text" placeholder='Email' value={userEmail} onChange={(synthEvent)=>setUserEmail(synthEvent.target.value)}/>
        </p>


        <p className='field required half'>
        <label className='label'>Password</label>
        <input className='text-input' type="password" placeholder='Password' value={userPassword} onChange={(synthEvent)=>setUserPassword(synthEvent.target.value)}/>
        </p>

        <p className='field required half'>
            <label className='label'>Username</label>
        <input className='text-input' type="text" placeholder='Username' value={userUsername} onChange={(synthEvent)=>setUserUsername(synthEvent.target.value)}/>
        </p>


        <p className='field required half'>
            <label className='label'>Favorite Animal</label>
        <input className='text-input' type="text" placeholder='Favorite Animal' value={userFavoriteAnimal} onChange={(synthEvent)=>setUserFavoriteAnimal(synthEvent.target.value)}/>

        </p>
        <button className='button' type="submit"> Add User </button>

        </form>

    )
        }
    export default NewUser