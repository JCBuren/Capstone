import {  Route, Switch, withRouter } from 'react-router-dom';
import {useEffect, useState} from 'react'
import Home from './components/Home';
import NavBar from './components/NavBar';
import Dog from './components/Dog';
import Cat from './components/Cat';
import Login from './components/Login';
import NewUser from './components/NewUser';
import SmallAnimals from './components/SmallAnimals';
import Donations from './components/Donations';


function App() {


const [petData, setPetData] = useState([])
const [userData, setUserData] = useState([])
const [currentUser, setCurrentUser] = useState("")

useEffect(() => {
  fetch("http://localhost:3001/pets")
  
  .then(res => res.json())
  // .then(data => console.log(data))
  .then((data) => setPetData(data))
}, []);



// const [isAuthenticated, setIsAuthenticated] = useState(false);
//   const [user, setUser] = useState(null);
//   const updateUser = (user) => setCurrentUser(user)

//   useEffect(() => {
//     fetch("/authorized_user")
//     .then((res) => {
//       if(res.ok) {
//         res.json()
//         .then((user) => {
//           setIsAuthenticated(true);
//           setUser(user);
//         })
//         .then(<Route exact path='/'/>);
//       }
//     }
//   )
// },[])
  
//         if (!isAuthenticated) return <Login error={'please login'} setIsAuthenticated={setIsAuthenticated} setUser={setUser} />;


  return (<>

    <NavBar/>

    <Route exact path= "/pets/dogs">
      <section className='layout'><Dog petsToMap={petData} /></section>
    </Route>

    <Route exact path= "/pets/cats">
      <section className='layout'><Cat petsToMap={petData} /></section>
    </Route>
    
    <Route exact path= "/pets/small-animals">
      <section className='layout'><SmallAnimals petsToMap={petData} /></section>
    </Route>

    <Route exact path="/">
    <Home/>
    </Route>

    <Route exact path="/items">
      <Donations/>
    </Route>

    <Route exact path="/signup">
      <section><NewUser sendUserData={userData}/></section>
    </Route>
    <Route exact path="/login">
    <section> <Login sendLogin={userData}/></section>
    </Route>

    </>
  );
}

export default App;
