import React, { Component } from 'react';
import { NavLink } from 'react-router-dom'

class Header extends Component {
   
    render() { 
        const{
            logged_in,
            sign_in_routes,
            sign_out_routes,
        } = this.props
        return ( 
            <div>
            <h1>Apartment App </h1>
           { !logged_in && <a href={this.props.sign_in_route}>Sign In</a>}
             <br/>
           { logged_in && <a  href={this.props.sign_out_route}>Sign Out</a>}
             <br/>
           <NavLink to ="/">Home</NavLink>
             <br/>
           <NavLink to ="/apartmentindex">Apartment</NavLink>
           
            </div>
         );
    }
}
 
export default Header;