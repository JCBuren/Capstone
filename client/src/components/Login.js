import React, {useState} from 'react'
import { useHistory } from "react-router-dom";
import { Redirect } from 'react-router-dom';

function Login(updateUser) {
    const [username, setUsername] = useState('')
    const [password, setPassword] = useState('')
    const [formData, setFormData] =useState({
    username:'',
    password:''
})
    const [errors, setErrors] = useState([])
    let history = useHistory();

    function onSubmit(e){
        e.preventDefault()
        const user = {
            username,
            password
        }
    
        fetch(`/login`,{
            method:'POST',
            headers:{'Content-Type': 'application/json'},
            body:JSON.stringify(user)
        })
        .then((res) => {
            if(res.ok){
                res.json().then((user) => {
                    updateUser(user)
                    history.push('/')
                    
                })
            }
        })
    }




return (

    <> 
    
    <form className='form' onSubmit={onSubmit}>
    <h1> Login below!</h1>
    <label className='label'>Username</label>
    <input className='text-input' placeholder='Username' type="text" value={username} onChange={(e) => setUsername(e.target.value)} />
    
    <label className='label'>Password</label>    
    <input className='text-input' placeholder='Password' type="password" value={password} onChange={(e) => setPassword(e.target.value)} />
    
   
    <button className='button' type="submit">Log In </button>
  </form>
  {errors?errors.map(e => <div>{e}</div>):null}
    </>

    
)
}

export default Login;
