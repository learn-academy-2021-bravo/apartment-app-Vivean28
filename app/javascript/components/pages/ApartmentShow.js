import React, { Component } from 'react';

class ApartmentShow extends Component {
 
    render() { 
        console.log(this.props.apartment)
        let { apartment } = this.props
        return ( 
            <div>
            <h1>Apartment Show</h1>
                        <p>{apartment.street}</p>
                        <p>{apartment.city}</p>
                        <p>{apartment.state}</p>
                        <p>{apartment.manager}</p>
                        <p>{apartment.email}</p>
                        <p>{apartment.price}</p>
                        <p>{apartment.bedrooms}</p>
                        <p>{apartment.bathrooms}</p>
                        <p>{apartment.pets}</p>
                        <p>{apartment.user_id}</p>
            </div>
         );
    }
}
 
export default ApartmentShow;