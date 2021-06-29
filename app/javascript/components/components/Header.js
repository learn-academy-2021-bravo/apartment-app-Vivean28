import React, { Component } from 'react';
class Header extends Component {
   
    render() { 
        const{
            logged_in,
            sign_in_routes,
            sign_out_routes,
        } = this.props
        return ( 
            <div>
            <h1>Header here</h1>
            <a href={this.props.sign_in_route}>Sign In</a>
            <a href={this.props.sign_out_route}>Sign Out</a>
            </div>
         );
    }
}
 
export default Header;