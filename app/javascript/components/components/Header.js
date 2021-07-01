import React, { Component } from 'react';
import { NavLink } from 'react-router-dom'


class Header extends Component {
   
    render() { 
        const{
            logged_in,
            sign_in_route,
            sign_out_route,
            new_user_route
        } = this.props
        return ( 
            <div>
                    <h1>Apartment App </h1>
                { !logged_in && <a href={sign_in_route}> Log In</a>}
                    <br/>
                { logged_in && <a  href={sign_out_route}>Log Out</a>}

                 { !logged_in && <a href={new_user_route}>Sign up</a>}
                
                    <br/>
                <NavLink to ="/" className="home">Home</NavLink>
                    <br/>
                <NavLink to ="/apartmentindex">Apartment</NavLink>
            </div>
         );
    }
}
 
export default Header;