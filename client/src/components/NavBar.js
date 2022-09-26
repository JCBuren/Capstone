import {NavLink} from  "react-router-dom"

function NavBar() {


return(<>

    <nav id='menu'>
        <input type='checkbox' id='responsive-menu'></input>
        <ul>
        <li><NavLink to="/"><a href='http://'>Home</a></NavLink>
        </li>
            <li><a className='dropdown-arrow' href='http://'>Adopt</a>
                <ul className='sub-menus'>
                    <li><NavLink to="/pets/dogs"><a href='/pets/dogs'>Dogs</a></NavLink></li>
                    <li><NavLink to="/pets/cats"><a href='http://'>Cats</a></NavLink></li>
                    <li><NavLink to="/pets/small-animals"><a href="/pets/small-animals">Small Animals</a></NavLink></li>
                </ul>
            </li>
            <li><a className='dropdown-arrow' href='http://'>Ways to Help</a>
                <ul className='sub-menus'>
                    <li><a href='http://'>Donate</a></li>
                    <li><NavLink to="/items"><a href='http://'>Items Needed</a></NavLink></li>
                </ul>
            </li>
        <li><NavLink to="/signup"><a href='http://'>Sign Up</a></NavLink></li>
        <li><NavLink to="/login"><a href='http://'>Login</a></NavLink></li>
        </ul>
    </nav>
</>)

}

export default NavBar